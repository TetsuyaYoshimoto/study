#include <stdio.h>

double normal(double, double *);
double p_normal(int *);
double bisection(double(*)(double), double, double, double, double, int, int *);
double normal_f(double);
double chi(double, double *, int);
double p_chi(int *);
double newton(double(*)(double), double(*)(double), double, double,
              double, int, int *);
double chi_f(double);
double chi_df(double);

double p;     // α％値を計算するとき時α/100を設定
int dof;      // 自由度
              // 上の２つの変数は，必ず，この位置で定義しておく必要がある

int main()
{
	double h, x, x1, x2, y, z;
	int sw;
	char file1[100], file2[100];
	FILE *out1, *out2;

	printf("自由度は？ ");
	scanf("%d", &dof);
	printf("目的とする結果は？ \n");
	printf("     =0 : 確率の計算（ P(X = x) 及び P(X < x) の値）\n");
	printf("     =1 : ｐ％値（ P(X > u) = 0.01p となるuの値） ");
	scanf("%d", &sw);

	if (sw == 0) {

		printf("グラフ出力？（=1: yes,  =0: no） ");
		scanf("%d", &sw);
					// 密度関数と分布関数の値
		if (sw == 0) {
			printf("   データは？ ");
			scanf("%lf", &x);
			y = chi(x, &z, dof);
			printf("P(X = %f) = %f,  P( X < %f) = %f (自由度 = %d)\n", x, z, x, y, dof);
		}
					// グラフ出力
		else {
			printf("   密度関数のファイル名は？ ");
			scanf("%s", file1);
			printf("   分布関数のファイル名は？ ");
			scanf("%s", file2);
			out1 = fopen(file1,"w");
			out2 = fopen(file2,"w");
			printf("   データの下限は？ ");
			scanf("%lf", &x1);
			printf("   データの上限は？ ");
			scanf("%lf", &x2);
			printf("   刻み幅は？ ");
			scanf("%lf", &h);
			for (x = x1; x < x2+0.5*h; x += h) {
				y = chi(x, &z, dof);
				fprintf(out1, "%f %f\n", x, z);
				fprintf(out2, "%f %f\n", x, y);
			}
		}
	}
					// ％値
	else {
		printf("％の値は？ ");
		scanf("%lf", &x);
		p = 0.01 * x;
		y = p_chi(&sw);
		printf("%f％値 = %f  sw %d (自由度 = %d)\n", x, y, sw, dof);
	}

	return 0;
}

/********************************************/
/* χ２乗分布の計算（P(X = ch), P(X < ch)） */
/*      dd : P(X = ch)                      */
/*      df : 自由度                         */
/*      return : P(X < ch)                  */
/********************************************/
#include <math.h>

double chi(double ch, double *dd, int df)
{
	double pi = 4.0 * atan(1.0);
	double chs, pis, pp, x, y, u;
	int ia, i1;

	if (ch < 1.0e-10)
		ch = 1.0e-10;

	pis = sqrt(pi);
	chs = sqrt(ch);
	x   = 0.5 * ch;

	if(df%2 != 0) {
		u  = sqrt(x) * exp(-x) / pis;
		pp = 2.0 * (normal(chs, &y) - 0.5);
		ia = 1;
	}

	else {
		u  = x * exp(-x);
		pp = 1.0 - exp(-x);
		ia = 2;
	}

	if (ia != df) {
		for (i1 = ia; i1 <= df-2; i1 += 2) {
			pp -= 2.0 * u / i1;
			u  *= (ch / i1);
		}
	}

	*dd = u / ch;

	return pp;
}

/******************************************/
/* χ２乗分布のｐ％値（P(X > u) = 0.01p） */
/*      ind : >=0 : normal（収束回数）    */
/*            =-1 : 収束しなかった        */
/******************************************/
#include <math.h>

double p_chi(int *ind)
{
	double po, x, xx = 0.0, x0, w;
					// 自由度＝１（正規分布を使用）
	if (dof == 1) {
		po  = p;
		p  *= 0.5;
		x   = p_normal(ind);
		xx  = x * x;
		p   = po;
	}

	else {
					// 自由度＝２
		if (dof == 2)
			xx = -2.0 * log(p);
					// 自由度＞２
		else {

			x  = p_normal(ind);   // 初期値計算のため

			if (*ind >= 0) {

				w  = 2.0 / (9.0 * dof);
				x  = 1.0 - w + x * sqrt(w);
				x0 = pow(x, 3.0) * dof;      // ニュートン法の初期値
                                             // ニュートン法
				xx = newton(chi_f, chi_df, x0, 1.0e-6, 1.0e-10, 100, ind);
			}
		}
	}

	return xx;
}

/********************************/
/* 1.0 - p - P(X > x)（関数値） */
/********************************/
double chi_f(double x)
{
	double y;

	return chi(x, &y, dof) - 1.0 + p;
}

/**************************/
/* P(X = x)（関数の微分） */
/**************************/
double chi_df(double x)
{
	double y,z;

	z = chi(x, &y, dof);

	return y;
}

/*****************************************************/
/* Newton法による非線形方程式(f(x)=0)の解            */
/*      fn : f(x)を計算する関数名                    */
/*      dfn : f(x)の微分を計算する関数名             */
/*      x0 : 初期値                                  */
/*      eps1 : 終了条件１（｜x(k+1)-x(k)｜＜eps1）   */
/*      eps2 : 終了条件２（｜f(x(k))｜＜eps2）       */
/*      max : 最大試行回数                           */
/*      ind : 実際の試行回数                         */
/*            （負の時は解を得ることができなかった） */
/*      return : 解                                  */
/*****************************************************/
#include <math.h>

double newton(double(*f)(double), double(*df)(double), double x0,
              double eps1, double eps2, int max, int *ind)
{
	double g, dg, x, x1;
	int sw;

	x1   = x0;
	x    = x1;
	*ind = 0;
	sw   = 0;

	while (sw == 0 && *ind >= 0) {

		sw    = 1;
		*ind += 1;
		g     = (*f)(x1);

		if (fabs(g) > eps2) {
			if (*ind <= max) {
				dg = (*df)(x1);
				if (fabs(dg) > eps2) {
					x = x1 - g / dg;
					if (fabs(x-x1) > eps1 && fabs(x-x1) > eps1*fabs(x)) {
						x1 = x;
						sw = 0;
					}
				}
				else
					*ind = -1;
			}
			else
				*ind = -1;
		}
	}

	return x;
}

/*************************************************/
/* 標準正規分布N(0,1)の計算（P(X = x), P(X < x)）*/
/*      w : P(X = x)                             */
/*      return : P(X < x)                        */
/*************************************************/
#include <math.h>

double normal(double x, double *w)
{
	double pi = 4.0 * atan(1.0);
	double y, z, P;
/*
     確率密度関数（定義式）
*/
	*w = exp(-0.5 * x * x) / sqrt(2.0*pi);
/*
     確率分布関数（近似式を使用）
*/
	y = 0.70710678118654 * fabs(x);
	z = 1.0 + y * (0.0705230784 + y * (0.0422820123 +
        y * (0.0092705272 + y * (0.0001520143 + y * (0.0002765672 +
        y * 0.0000430638)))));
	P = 1.0 - pow(z,-16.0);

	if (x < 0.0)
		P = 0.5 - 0.5 * P;
	else
		P = 0.5 + 0.5 * P;

	return P;
}

/******************************************************************/
/* 標準正規分布N(0,1)のｐ％値（P(X > u) = 0.01p）（二分法を使用） */
/*      ind : >= 0 : normal（収束回数）                           */
/*            = -1 : 収束しなかった                               */
/******************************************************************/
double p_normal(int *ind)
{
	double u;
	int sw;

	u    = bisection(normal_f, -7.0, 7.0, 1.0e-6, 1.0e-10, 100, &sw);
	*ind = sw;

	return u;
}

/******************************/
/* 1.0 - p - P(X>x)（関数値） */
/******************************/
double normal_f(double x)
{
	double y;

	return 1.0 - p - normal(x, &y);
}

/*********************************************************/
/* 二分法による非線形方程式(f(x)=0)の解                  */
/*      fn : f(x)を計算する関数名                        */
/*      x1,x2 : 初期値                                   */
/*      eps1 : 終了条件１（｜x(k+1)-x(k)｜＜eps1）       */
/*      eps2 : 終了条件２（｜f(x(k))｜＜eps2）           */
/*      max : 最大試行回数                               */
/*      ind : 実際の試行回数                             */
/*            （負の時は解を得ることができなかった）     */
/*      return : 解                                      */
/*********************************************************/
#include <math.h>

double bisection(double(*f)(double), double x1, double x2,
                 double eps1, double eps2, int max, int *ind)
{
	double f0, f1, f2, x0 = 0.0;
	int sw;

	f1 = (*f)(x1);
	f2 = (*f)(x2);

	if (f1*f2 > 0.0)
		*ind = -1;

	else {
		*ind = 0;
		if (f1*f2 == 0.0)
			x0 = (f1 == 0.0) ? x1 : x2;
		else {
			sw = 0;
			while (sw == 0 && *ind >= 0) {
				sw    = 1;
				*ind += 1;
				x0    = 0.5 * (x1 + x2);
				f0    = (*f)(x0);

				if (fabs(f0) > eps2) {
					if (*ind <= max) {
						if (fabs(x1-x2) > eps1 && fabs(x1-x2) > eps1*fabs(x2)) {
							sw = 0;
							if (f0*f1 < 0.0) {
								x2 = x0;
								f2 = f0;
							}
							else {
								x1 = x0;
								f1 = f0;
							}
						}
					}
					else
						*ind = -1;
				}
			}
		}
	}

	return x0;
}

