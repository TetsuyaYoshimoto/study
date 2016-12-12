
#include<iostream>

using namespace std;

#define N 3
#define M 3

int main(void){
	for(int i = 1;i < N; i++){
		for(int j = 0;j < N; j++){
			cout << i+j << endl;
		}
	}
	return 0;
}

