
#include<stdio.h>

int sum(int num, int kosuu, int *a[]){
    int i;
    for(i=0;i<kosuu;i++){
        printf("%d", a[i]);
    }
    return 0;
}

int main(void){
    int a[]={10,20,30,40,50,60};
    int num,kosuu=5;
    sum(num,kosuu,&a);
}


