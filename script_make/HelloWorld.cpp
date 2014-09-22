#include <iostream>
#include <math.h>
#include "string"
#include <fstream>
using namespace std;
int main (int argc, char **argv) {

	int a = 0;
	ofstream ofs(argv[1]);
	for (int i = 0; i<100000;i++){
		for (int j= 0; j<10000; j++){
			a--;
		}
		a++;
		ofs<<i<<"\t";
	}
	ofs.close();
	cout << "Hello world" << endl;
	return 0;
}
