#include "CanopyGenerator.h"
#include "Context.h"
#include "Visualizer.h"
#include "functions.cpp"
#include <iostream>
#include <vector>
#include <fstream>
using namespace helios;
using namespace std;


vector<vec3> makeCam();
bool camContainsFruit();
float intersectTriangle();
vector<vec3> readVertices();