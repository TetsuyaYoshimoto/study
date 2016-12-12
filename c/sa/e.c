
#include<stdio.h>
#include<math.h>

int main(void){
    int i;
    int kaijou = 1;
    int number = 30;
    double napier = 1.0;

//マクローリンの階乗計算を行う。
//1/30!まで足しこむ。
    for(i = 1;i < number; i++){
        kaijou *= i;
        napier += 1.0/kaijou;
    }

    printf("e = %f\n", napier);
    printf("math.h e = %f\n", M_E);

    return 0;
}


