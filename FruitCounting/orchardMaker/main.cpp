#include "CanopyGenerator.h"
#include "Context.h"
#include "Visualizer.h"

#include <iostream>
#include <vector>
#include <fstream>
using namespace helios;
using namespace std;


  int main( void ){
     /*Loop through each orchard sample (4 trees)*/
     for (int i_orch = 100; i_orch < 500; i_orch++){
          
          /*Initalizing Orchard*/
          Context context;
          // Visualizer vis(800);
          CanopyGenerator canopygenerator(&context);

          // Declare the parameter set for walnut
          WalnutCanopyParameters parameters;
          //parameters.fruit_texture_file = "plugins/canopygenerator/textures/WalnutTextureRed.png";
          parameters.leaf_subdivisions = int2(1,1);

          /*This loop creates 4 trees in the orhcard*/
          for (int i_tree = 0; i_tree < 4; i_tree++){
               // Define tree location
               vec3 origin(0,0,0);
               if (i_tree == 1){
                    origin = vec3(7.6,0,0);
               }
               if (i_tree == 2){
                    origin = vec3(0,7.3,0);
               }
               if (i_tree == 3){
                    origin = vec3(7.6,7.3,0);
               }
               // Seeding the tree
               int seed_number = i_orch*4 + i_tree + 1;
               canopygenerator.seedRandomGenerator( seed_number );
               
               // Create the tree
               canopygenerator.walnut( parameters, origin );

               // Continue to get the UUIDs for the given tree.
               vector<vector<vector<uint> > > fruitIDs;
               vector<vector<uint>> leafIDs;
               vector<uint> branchIDs;
               vector<uint> trunkIDs;
               fruitIDs = canopygenerator.getFruitUUIDs(i_tree);
               leafIDs = canopygenerator.getLeafUUIDs(i_tree);
               branchIDs = canopygenerator.getBranchUUIDs(i_tree);
               trunkIDs = canopygenerator.getTrunkUUIDs(i_tree);

               // Get total numbers
               int n_fruit = fruitIDs.at(0).size();
               int n_leaf = leafIDs.size();
               int n_branchTri = branchIDs.size(); // Number of triangles on branches
               int n_trunkTri = trunkIDs.size(); // Number of triangles on trunk
               vector<vec3> fruit_centers;
               fruit_centers.resize(n_fruit);

               // Get fruit center positions and output to text file
               ofstream pos_file;
               string textname = "outputs/fruit_pos_" + to_string(i_orch) + "_" + to_string(i_tree) + ".txt";
               pos_file.open(textname);

               // Iterating through each fruit
               for (int i = 0; i < n_fruit; i++){
                    int n_tri = fruitIDs.at(0).at(i).size();
                    vec3 fruit_center;
                    // Iterating through each triangle
                    for (int j = 0; j < n_tri; j++){
                         uint vID = fruitIDs.at(0).at(i).at(j);
                         // Iterating through each triangle vertex
                         for (int k = 0; k < 3; k++){
                                   fruit_center = fruit_center + context.getTriangleVertex(fruitIDs.at(0).at(i).at(j),k);
                         }
                    }
                    fruit_center = fruit_center/(n_tri*3);
                    pos_file << fruit_center.x << "," << fruit_center.y << "," << fruit_center.z << "\n";
                    fruit_centers[i] = fruit_center;
               }
               pos_file.close();

               // Get trunk vertices positions and output to text file
               ofstream trunk_file;
               vector<vec3> trunk_vertices;
               string trunktextname = "outputs/trunk_pos_" + to_string(i_orch) + "_" + to_string(i_tree) + ".txt";
               trunk_file.open(trunktextname);
               // Iterating through each branch triangle
               for (int i = 0; i < n_trunkTri; i++){
                    vector<vec3> trunkVert = context.getPrimitiveVertices(trunkIDs.at(i));
                    // Iterating through each triangle vertex
                    for (int k = 0; k < 3; k++){
                         trunk_vertices.push_back( trunkVert.at(k));
                         trunk_file <<  trunkVert.at(k).x << "," <<  trunkVert.at(k).y << "," <<  trunkVert.at(k).z << "\n";
                    }
               }
               trunk_file.close();

               // Get branch vertices positions and output to text file
               ofstream branch_file;
               vector<vec3> branch_vertices;
               string branchtextname = "outputs/branch_pos_" + to_string(i_orch) + "_" + to_string(i_tree) + ".txt";
               branch_file.open(branchtextname);
               // Iterating through each branch triangle
               for (int i = 0; i < n_branchTri; i++){
                    vector<vec3> branchVert = context.getPrimitiveVertices(branchIDs.at(i));
                    // Iterating through each triangle vertex
                    for (int k = 0; k < 3; k++){
                         branch_vertices.push_back(branchVert.at(k));
                         branch_file << branchVert.at(k).x << "," << branchVert.at(k).y << "," << branchVert.at(k).z << "\n";
                    }
               }
               branch_file.close();

               // Get leaf vertices positions and output to text file
               ofstream leaf_file;
               vector<vec3> leaf_vertices;
               string leaftextname = "outputs/leaf_pos_" + to_string(i_orch) + "_" + to_string(i_tree) + ".txt";
               leaf_file.open(leaftextname);
               // Iterating through each leaf
               for (int i = 0; i < n_leaf; i++){
                    int n_sub = leafIDs.at(i).size();
                    // Iterating through each subdivision (4 in this case)
                    for (int j = 0; j < n_sub; j++){
                         vector<vec3> leafVert = context.getPrimitiveVertices(leafIDs.at(i).at(j));
                         // Iterating through each triangle vertex
                         for (int k = 0; k < 3; k++){
                              leaf_vertices.push_back(leafVert.at(k));
                              leaf_file << leafVert.at(k).x << "," << leafVert.at(k).y << "," << leafVert.at(k).z << "\n";
                         }
                    }
               }
               leaf_file.close();
          }; 
          cout << "Orchard " << i_orch << " is created.\n";         
     }
     
  }




