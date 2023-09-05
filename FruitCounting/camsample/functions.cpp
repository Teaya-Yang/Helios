#include "CanopyGenerator.h"
#include "Context.h"
#include "Visualizer.h"
#include <iostream>
#include <vector>
#include <fstream>
using namespace helios;
using namespace std;

vector<vec3> readVertices(string textname){
    vector<vec3> vertices;
    ifstream comp_file;
    comp_file.open(textname, ios::in);
    string branch_line;

    while(getline(comp_file,branch_line)){
        vec3 vertex;
        stringstream LineSS(branch_line);
        string linePiece;
        getline(LineSS,linePiece,',');
        vertex.x = stof(linePiece);
        getline(LineSS,linePiece,',');
        vertex.y = stof(linePiece);
        getline(LineSS,linePiece,',');
        vertex.z = stof(linePiece);
        vertices.push_back(vertex);
    }
    comp_file.close();
    return vertices;

};

// Constructing a camera shape with 5 corners
vector<vec3> makeCam(vector<vec3> cornersIn){
    // Define the useful edge vectors
    vec3 edge01 = cornersIn.at(1) - cornersIn.at(0);
    vec3 edge02 = cornersIn.at(2) - cornersIn.at(0);
    vec3 edge03 = cornersIn.at(3) - cornersIn.at(0);
    vec3 edge04 = cornersIn.at(4) - cornersIn.at(0);
    vec3 edge12 = cornersIn.at(2) - cornersIn.at(1);
    vec3 edge13 = cornersIn.at(3) - cornersIn.at(1);

    // Compute the face normals. All normals should point outward.
    vector<vec3> FaceNormals;
    FaceNormals.resize(5);
    FaceNormals[0] = cross(edge13,edge12);
    FaceNormals[1] = cross(edge01,edge02);
    FaceNormals[2] = cross(edge03,edge01);
    FaceNormals[3] = cross(edge02,edge04);
    FaceNormals[4] = cross(edge04,edge03);
    FaceNormals.at(0) = FaceNormals.at(0)/FaceNormals.at(0).magnitude();
    FaceNormals.at(1) = FaceNormals.at(1)/FaceNormals.at(1).magnitude();
    FaceNormals.at(2) = FaceNormals.at(2)/FaceNormals.at(2).magnitude();
    FaceNormals.at(3) = FaceNormals.at(3)/FaceNormals.at(3).magnitude();
    FaceNormals.at(4) = FaceNormals.at(4)/FaceNormals.at(4).magnitude();
    return FaceNormals;
};


bool camContainsFruit(vector<vec3> normals, vector<vec3> corners, vec3 fruit){
    // vectors from each surface to the point
vec3 vec0p = fruit - corners[0]; // corners[0] lie on four of the five faces.
vec3 vec1p = fruit - corners[1]; // can be used to check face0
// Check if point is on/behind all faces. Dot product should all be non-positive.
if(vec1p*normals[0] > 0){
    return false;
};
for(int i = 1; i<5; i++){
    if(vec0p*normals[i] > 0){
    return false;
    }
};
return true;
};

float intersectTriangle(vec3 v0, vec3 v1, vec3 v2, vec3 raydir, vec3 camPos){

    float a = v0.x - v1.x, b = v0.x - v2.x, c = raydir.x, d = v0.x - camPos.x; 
    float e = v0.y - v1.y, f = v0.y - v2.y, g = raydir.y, h = v0.y - camPos.y;
    float i = v0.z - v1.z, j = v0.z - v2.z, k = raydir.z, l = v0.z - camPos.z;

    float m = f * k - g * j, n = h * k - g * l, p = f * l - h * j;
    float q = g * i - e * k, s = e * j - f * i;

    float inv_denom  = 1.f / (a * m + b * q + c * s);

    float e1 = d * m - b * n - c * p;
    float beta = e1 * inv_denom;
    if (beta > 0.0){
        float r = r = e * l - h * i;
        float e2 = a * n + d * q + c * r;
        float gamma = e2 * inv_denom;
        // If hitpoit is valid
        if (gamma > 0.0 && beta + gamma < 1.0 ){
            float e3 = a * p - b * r + d * s;
            float t = e3 * inv_denom;
            return t;
        }
    }
    return 1000;
};

