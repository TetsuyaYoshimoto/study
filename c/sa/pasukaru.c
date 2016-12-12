

#include<stdio.h>

void pswap(int** p, int** q){
	int* r = *p;
  	*p = *q;
	*q = r;
}

int main(void){
	int a = 3, b = 5;
	int *x = &a, *y = &b;
	
	pswap(&x, &y);
	printf("%d, %d", a, b);
	printf("%d, %d", *x, *y);


	return 0;
}

