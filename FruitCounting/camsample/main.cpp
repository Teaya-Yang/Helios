#include "CanopyGenerator.h"
#include "Context.h"
#include "Visualizer.h"
#include "main.hpp"

#include <iostream>
#include <vector>
#include <fstream>
using namespace helios;
using namespace std;


  int main( void ){
     /*Loop through each orchard sample (4 trees in each)*/
     for (int i_orch = 0; i_orch < 1; i_orch++){ //Here, we only use orchard 0 as example
          /*Initialize plant info arrays*/
          vector<uint> n_fruit_array;
          vector<vector<vec3>> fruit_centers_array;
          vector<uint> n_leafTri_array;
          vector<vector<vec3>> leaf_vertices_array;
          vector<uint> n_branchTri_array;
          vector<vector<vec3>> branch_vertices_array;
          vector<uint> n_trunkTri_array;
          vector<vector<vec3>> trunk_vertices_array;

          n_fruit_array.resize(4);
          fruit_centers_array.resize(4);
          n_leafTri_array.resize(4);
          leaf_vertices_array.resize(4);
          n_branchTri_array.resize(4);
          branch_vertices_array.resize(4);
          n_trunkTri_array.resize(4);
          trunk_vertices_array.resize(4);


          /*This loop reads 4 tree files for each tree, 16 files required for each orchard*/
          for (int i_tree = 0; i_tree < 4; i_tree++){
               
               string branch_file = "inputs/branch_pos_" + to_string(i_orch) + "_" + to_string(i_tree) + ".txt";
               branch_vertices_array[i_tree] = readVertices(branch_file);
               n_branchTri_array[i_tree] = branch_vertices_array.at(i_tree).size()/3;
               
               string fruit_file = "inputs/fruit_pos_" + to_string(i_orch) + "_" + to_string(i_tree) + ".txt";
               fruit_centers_array[i_tree] = readVertices(fruit_file);
               n_fruit_array[i_tree] = fruit_centers_array.at(i_tree).size();

               string trunk_file = "inputs/trunk_pos_" + to_string(i_orch) + "_" + to_string(i_tree) + ".txt";
               trunk_vertices_array[i_tree] = readVertices(trunk_file);
               n_trunkTri_array[i_tree] = trunk_vertices_array.at(i_tree).size()/3;

               string leaf_file = "inputs/leaf_pos_" + to_string(i_orch) + "_" + to_string(i_tree) + ".txt";
               leaf_vertices_array[i_tree] = readVertices(leaf_file);
               n_leafTri_array[i_tree] = leaf_vertices_array.at(i_tree).size()/3;
          };          

          cout << "Orchard " << i_orch << " is read.\n";

          /*Scene created, now sample camera configs*/
          // Create results file to store the results
          ofstream results_file;
          string resultstextname = "outputs/results_" + to_string(i_orch) + ".txt";

          // First line stores fruit number info
          results_file.open(resultstextname);
          results_file << 0 << "," << n_fruit_array.at(0) << ";";
          results_file << 1 << "," << n_fruit_array.at(1) << ";";
          results_file << 2 << "," << n_fruit_array.at(2) << ";";
          results_file << 3 << "," << n_fruit_array.at(3) << "\n";

          // Initializing a camera shape
          vector<vec3> CamCorners;
          CamCorners.resize(5);

          time_t c_start = clock();
          /*Loop for sampling each config*/
          for (int i_xcam = 0; i_xcam < 1; i_xcam++){// x is side by side distance - center is at 3.8
               float cam_x = 3.8f;
               for (int i_ycam = 0; i_ycam < 1; i_ycam++){// y is the direction of flight
                    float cam_y = -2.0f;
                    for (int i_zcam = 0; i_zcam < 1; i_zcam++){// z is the height
                         float cam_z = 4.0f;
                         cout << "Checking camera at: <" << cam_x << "," << cam_y << "," << cam_z <<">\n";
                         // Building camera shape, based on assumption that FOV = 100.5*84.5, depth = 10
                         vec3 camShift(cam_x,cam_y,cam_z);
                         CamCorners[0] = vec3(0,0,0) + camShift;
                         CamCorners[1] = vec3(12.02,10,9.08) + camShift;
                         CamCorners[2] = vec3(-12.02,10,9.08) + camShift;
                         CamCorners[3] = vec3(12.02,10,-9.08) + camShift;
                         CamCorners[4] = vec3(-12.02,10,-9.08) + camShift;
                         results_file << CamCorners[0].x << "," << CamCorners[0].y << "," << CamCorners[0].z << ";"; 
                         vector<vec3> CamNormals = makeCam(CamCorners);

                         /*Iterate through each tree then each subcomponents to check occlusion*/
                         for (int i_tree = 0; i_tree < 4; i_tree++){
                              vector<vec3> contained_fruit;
                              vector<int> contained_fruit_number;
                              vector<vec3> raydir;
                              int n_fruitIn = 0;
                              
                              for (int i = 0; i< n_fruit_array.at(i_tree); i++){
                                   // check containment of fruit
                                   if(camContainsFruit(CamNormals, CamCorners,fruit_centers_array.at(i_tree).at(i))){
                                        contained_fruit.push_back(fruit_centers_array.at(i_tree).at(i));
                                        contained_fruit_number.push_back(i);
                                        //cout << contained_fruit.at(n_fruitIn).x << "," << contained_fruit.at(n_fruitIn).y << "," << contained_fruit.at(n_fruitIn).z << "\n";
                                        // store ray directions for checking later
                                        vec3 ray = fruit_centers_array.at(i_tree).at(i)-CamCorners.at(0);
                                        raydir.push_back(ray/ray.magnitude());
                                        //cout << raydir.at(n_fruitIn).x << "," << raydir.at(n_fruitIn).y << "," << raydir.at(n_fruitIn).z << "\n";
                                        n_fruitIn++;
                                   }
                              }

                              // Ray tracking for each triangle on the leaves
                              vector<float> ray_tmin;
                              vector<float> fruit_dist;
                              int num_detected = 0;
                              vector<int> detected_fruit_number;

                              // Iterating through each ray direction
                              for (int i = 0; i<raydir.size(); i++){
                                   float tmin = 1000;
                                   float dist = (contained_fruit.at(i) - CamCorners.at(0)).magnitude();
                                   fruit_dist.push_back(dist);
                                   //Iterating through each triangle
                                   // Leaves
                                   for (int j = 0; j<n_leafTri_array.at(i_tree); j++){
                                        vec3 v0 = leaf_vertices_array.at(i_tree).at(j*3);
                                        vec3 v1 = leaf_vertices_array.at(i_tree).at(j*3+1);
                                        vec3 v2 = leaf_vertices_array.at(i_tree).at(j*3+2);
                                        float t = intersectTriangle(v0,v1,v2,raydir.at(i),CamCorners.at(0));
                                        if (t<tmin){
                                             tmin = t;
                                        }
                                   }
                                   // Branches
                                   for (int j = 0; j<n_branchTri_array.at(i_tree); j++){
                                        vec3 v0 = branch_vertices_array.at(i_tree).at(j*3);
                                        vec3 v1 = branch_vertices_array.at(i_tree).at(j*3+1);
                                        vec3 v2 = branch_vertices_array.at(i_tree).at(j*3+2);
                                        float t = intersectTriangle(v0,v1,v2,raydir.at(i),CamCorners.at(0));
                                        if (t<tmin){
                                             tmin = t;
                                        }
                                   }
                                   // Trunk
                                   for (int j = 0; j<n_trunkTri_array.at(i_tree); j++){
                                        vec3 v0 = trunk_vertices_array.at(i_tree).at(j*3);
                                        vec3 v1 = trunk_vertices_array.at(i_tree).at(j*3+1);
                                        vec3 v2 = trunk_vertices_array.at(i_tree).at(j*3+2);
                                        float t = intersectTriangle(v0,v1,v2,raydir.at(i),CamCorners.at(0));
                                        if (t<tmin){
                                             tmin = t;
                                        }
                                   }
                                   
                                   ray_tmin.push_back(tmin);

                                   // check if triangle hit point is behind the fruit position, then a fruit is detected.
                                   if(tmin>dist){
                                        num_detected++;
                                        // Record the fruit number of the detected fruit:
                                        detected_fruit_number.push_back(contained_fruit_number.at(i));
                                   }
                              }
                              /*Print out id of dected fruit here*/
                              for (int id = 0; id < num_detected; id++){
                                   results_file << i_tree << "," << detected_fruit_number.at(id) << ";";
                              }
                              cout << "Detected fruit number:" << num_detected << "\n";
                         }
                    results_file << "\n";
                    }

               }
          }

          time_t c_end = clock();
          
          results_file.close();
          cout << "Done.\n";
          cout << "Time used for sampling these configs: " << 1000.0*(c_end-c_start)/ CLOCKS_PER_SEC << " ms\n";

     }
     
  }




