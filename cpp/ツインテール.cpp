#include<iostream>
using namespace std;
int main(void){
   int a, b;
   cin >> a;
   cin >> b;
   for(int i = 1; i < a;i++){
      if(i == b){
         cout << "+";
      }else{
         cout << "-";
      }
   }
   cout << endl;
   return 0;
}
