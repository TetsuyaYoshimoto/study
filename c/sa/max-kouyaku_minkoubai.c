
#include<stdio.h>

int gcd(int x, int y);  // 最大公約数を求める関数
int lcm(int x, int y);  // 最小公倍数を求める関数

int main()
{
    int x, y;
    int gcd_num, lcm_num;
    x = 28;
    y = 12;
    lcm_num = lcm(x,y);
    gcd_num = gcd(x, y);

    printf("%dと%dの最大公約数は%dです。\n", x, y, gcd_num);
    printf("%dと%dの最小公倍数は%dです。\n", x, y, lcm_num);

    return 0;
}

//最大公約数を求める関数
int gcd(int x, int y){
    int r;
    if(x == 0 || y == 0){
        fprintf(stderr, "引数エラーです。\n");
        return 0;
    }
    // ユーグリッドの互除法
    while((r = x % y) != 0){
        x = y;
        y = r;
    }
    return y;
}
int lcm(int x, int y){
    if(x == 0 || y == 0){
        fprintf(stderr, "引数エラーです。\n");
        return 0;
    }
    return (x * y / gcd(x, y));
}

