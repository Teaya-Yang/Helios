#include "CanopyGenerator.h"
#include "Context.h"
#include "Visualizer.h"
#include "functions.cpp"
#include <iostream>
#include <vector>
#include <cmath>

#include <fstream>
using namespace helios;
using namespace std;


vector<vec3> makeCam();
vec3 rotateVec();
bool camContainsFruit();
float intersectTriangle();
vector<vec3> readVertices();