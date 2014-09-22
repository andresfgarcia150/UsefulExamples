#include <iostream>
#include <math.h>
#include "string"
#include <fstream>
using namespace std;
int main () {

	int a = 0;
	ofstream ofs("text_counting.txt");
	for (int i = 0; i<100000;i++){
		for (int j= 0; j<10000; j++){
			a--;
		}
		a++;
		ofs<<i<<"\t";
	}
	ofs.close();
	cout << "Counting" << endl;
	return 0;
}
