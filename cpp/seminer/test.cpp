#include <stdio.h>
#include <math.h>

int gauss(double **, int, int, double);
int canonical(int, int, int, double **, double *, double **, double, double *, int, int);
int power(int, int, int, int, double, double **, double **,
          double **, double *, double **, double *, double *, double *);

int main()
{
	double **x, *ryz, **ab, *v0;
	int i1, i2, q, r, s, n, sw;

	scanf("%d %d %d", &r, &s, &n);   // 各組の変数の数とデータの数
	q = r + s;

	ryz = new double [r];
	v0  = new double [r];
	x   = new double * [q];
	ab  = new double * [r];
	for (i1 = 0; i1 < q; i1++)
		x[i1]  = new double [n];
	for (i1 = 0; i1 < r; i1++) {
		ab[i1] = new double [q];
		v0[i1] = 1.0;
	}

	for (i1 = 0; i1 < n; i1++) {   // データ
		for (i2 = 0; i2 < q; i2++)
			scanf("%lf", &x[i2][i1]);
	}

	sw = canonical(r, s, n, x, ryz, ab, 1.0e-10, v0, 15, 200);

	if (sw > 0) {
		for (i1 = 0; i1 < sw; i1++) {
			printf("相関係数 %f\n", ryz[i1]);
			printf("   a");
			for (i2 = 0; i2 < r; i2++)
				printf(" %f", ab[i1][i2]);
			printf("\n");
			printf("   b");
			for (i2 = 0; i2 < s; i2++)
				printf(" %f", ab[i1][r+i2]);
			printf("\n");
		}
	}
	else
		printf("***error  解を求めることができませんでした\n");

	for (i1 = 0; i1 < q; i1++)
		delete [] x[i1];
	for (i1 = 0; i1 < r; i1++)
		delete [] ab[i1];
	delete [] x;
	delete [] ab;
	delete [] ryz;
	delete [] v0;

	return 0;
}

/***********************************/
/* 正準相関分析                    */
/*      r,s : 各組における変数の数 */
/*      n : データの数             */
/*      x : データ                 */
/*      ryz : 相関係数             */
/*      ab : 各組の係数（a,bの順） */
/*      eps : 正則性を判定する規準 */
/*      v0 : 固有ベクトルの初期値  */
/*      m : 丸め誤差の修正回数     */
/*      ct : 最大繰り返し回数      */
/*      return : >0 : 相関係数の数 */
/*               =0 : エラー       */
/***********************************/
int canonical(int r, int s, int n, double **x, double *ryz, double **ab, double eps,
              double *v0, int m, int ct)
{
	double **A, **B, **C, **C11, **C11i, **C12, **C21, **C22, **C22i,
           *mean, vv, **w, *w1, len, *v1, *v2;
	int i1, i2, i3, q, sw = 0, sw1;
					// 領域の確保
	q    = r + s;
	mean = new double [q];
	w1   = new double [s];
	v1   = new double [r];
	v2   = new double [r];
	A    = new double * [s];
	B    = new double * [r];
	C    = new double * [q];
	C11  = new double * [r];
	C11i = new double * [r];
	C12  = new double * [r];
	C21  = new double * [s];
	C22  = new double * [s];
	C22i = new double * [s];
	w    = new double * [s];
	for (i1 = 0; i1 < q; i1++)
		C[i1] = new double [q];
	for (i1 = 0; i1 < r; i1++) {
		B[i1]    = new double [r];
		C11[i1]  = new double [r];
		C11i[i1] = new double [r];
		C12[i1]  = new double [s];
	}
	for (i1 = 0; i1 < s; i1++) {
		A[i1]    = new double [s];
		C21[i1]  = new double [r];
		C22[i1]  = new double [s];
		C22i[i1] = new double [s];
		w[i1]    = new double [2*s];
	}
					// 平均値の計算
	for (i1 = 0; i1 < q; i1++) {
		mean[i1] = 0.0;
		for (i2 = 0; i2 < n; i2++)
			mean[i1] += x[i1][i2];
		mean[i1] /= n;
	}
					// 分散強分散行列の計算
	for (i1 = 0; i1 < q; i1++) {
		for (i2 = i1; i2 < q; i2++) {
			vv = 0.0;
			for (i3 = 0; i3 < n; i3++)
				vv += (x[i1][i3] - mean[i1]) * (x[i2][i3] - mean[i2]);
			vv        /= (n - 1);
			C[i1][i2]  = vv;
			if (i1 != i2)
				C[i2][i1] = vv;
		}
	}
					// C11, C12, C21, C22 の設定
						// C12
	for (i1 = 0; i1 < r; i1++) {
		for (i2 = 0; i2 < s; i2++)
			C12[i1][i2] = C[i1][i2+r];
	}
						// C21
	for (i1 = 0; i1 < s; i1++) {
		for (i2 = 0; i2 < r; i2++)
			C21[i1][i2] = C[i1+r][i2];
	}
						// C11とその逆行列
	for (i1 = 0; i1 < r; i1++) {
		for (i2 = 0; i2 < r; i2++) {
			w[i1][i2]   = C[i1][i2];
			C11[i1][i2] = C[i1][i2];
		}
		for (i2 = r; i2 < 2*r; i2++)
			w[i1][i2] = 0.0;
		w[i1][i1+r] = 1.0;
	}
	sw1 = gauss(w, r, r, 1.0e-10);
	if (sw1 == 0) {
		for (i1 = 0; i1 < r; i1++) {
			for (i2 = 0; i2 < r; i2++)
				C11i[i1][i2] = w[i1][i2+r];
		}
	}
	else
		sw = 1;
						// C22とその逆行列
	for (i1 = 0; i1 < s; i1++) {
		for (i2 = 0; i2 < s; i2++) {
			w[i1][i2]   = C[i1+r][i2+r];
			C22[i1][i2] = C[i1+r][i2+r];
		}
		for (i2 = s; i2 < 2*s; i2++)
			w[i1][i2] = 0.0;
		w[i1][i1+s] = 1.0;
	}
	sw1 = gauss(w, s, s, eps);
	if (sw1 == 0) {
		for (i1 = 0; i1 < s; i1++) {
			for (i2 = 0; i2 < s; i2++)
				C22i[i1][i2] = w[i1][i2+s];
		}
	}
	else
		sw = 1;
					// 固有値λ及び固有ベクトルaの計算
	if (sw == 0) {
						// 行列の計算
		for (i1 = 0; i1 < s; i1++) {
			for (i2 = 0; i2 < r; i2++) {
				A[i1][i2] = 0.0;
				for (i3 = 0; i3 < s; i3++)
					A[i1][i2] += C22i[i1][i3] * C21[i3][i2];
			}
		}

		for (i1 = 0; i1 < r; i1++) {
			for (i2 = 0; i2 < s; i2++) {
				w[i1][i2] = 0.0;
				for (i3 = 0; i3 < s; i3++)
					w[i1][i2] += C12[i1][i3] * A[i3][i2];
			}
		}

		for (i1 = 0; i1 < r; i1++) {
			for (i2 = 0; i2 < r; i2++) {
				A[i1][i2] = 0.0;
				for (i3 = 0; i3 < r; i3++)
					A[i1][i2] += C11i[i1][i3] * w[i3][i2];
			}
		}
						// 固有値と固有ベクトル（べき乗法）
		for (i1 = 0; i1 < r; i1++) {
			for (i2 = 0; i2 < r; i2++)
				B[i1][i2] = 0.0;
			B[i1][i1] = 1.0;
		}

		sw = power(0, r, m, ct, eps, A, B, C, ryz, ab, v0, v1, v2);

		if (sw > 0) {

			for (i1 = 0; i1 < r; i1++) {
							// 相関係数
				ryz[i1] = sqrt(ryz[i1]);
							// 大きさの調整(a)
				for (i2 = 0; i2 < r; i2++) {
					w1[i2] = 0.0;
					for (i3 = 0; i3 < r; i3++)
						w1[i2] += C11[i2][i3] * ab[i1][i3];
				}
				len = 0.0;
				for (i2 = 0; i2 < r; i2++)
					len += ab[i1][i2] * w1[i2];
				len = sqrt(len);
				for (i2 = 0; i2 < r; i2++)
					ab[i1][i2] /= len;
							// bの計算
				for (i2 = 0; i2 < s; i2++) {
					w1[i2] = 0.0;
					for (i3 = 0; i3 < r; i3++)
						w1[i2] += C21[i2][i3] * ab[i1][i3];
				}
				for (i2 = 0; i2 < s; i2++) {
					ab[i1][i2+r] = 0.0;
					for (i3 = 0; i3 < s; i3++)
						ab[i1][i2+r] += C22i[i2][i3] * w1[i3];
				}
				for (i2 = 0; i2 < s; i2++)
					ab[i1][i2+r] /= ryz[i1];
							// 大きさの調整(b)
				for (i2 = 0; i2 < s; i2++) {
					w1[i2] = 0.0;
					for (i3 = 0; i3 < s; i3++)
						w1[i2] += C22[i2][i3] * ab[i1][i3+r];
				}
				len = 0.0;
				for (i2 = 0; i2 < s; i2++)
					len += ab[i1][i2+r] * w1[i2];
				len = sqrt(len);
				for (i2 = 0; i2 < s; i2++)
					ab[i1][i2+r] /= len;
			}
		}
	}
	else
		sw = 0;
					// 領域の解放
	for (i1 = 0; i1 < q; i1++)
		delete [] C[i1];
	for (i1 = 0; i1 < r; i1++) {
		delete [] B[i1];
		delete [] C11[i1];
		delete [] C11i[i1];
		delete [] C12[i1];
	}
	for (i1 = 0; i1 < s; i1++) {
		delete [] A[i1];
		delete [] C21[i1];
		delete [] C22[i1];
		delete [] C22i[i1];
		delete [] w[i1];
	}
	delete [] mean;
	delete [] w1;
	delete [] v1;
	delete [] v2;
	delete [] A;
	delete [] B;
	delete [] C;
	delete [] C11;
	delete [] C11i;
	delete [] C12;
	delete [] C21;
	delete [] C22;
	delete [] C22i;
	delete [] w;

	return sw;
}

/*******************************************************/
/* 線形連立方程式を解く（逆行列を求める）              */
/*      w : 方程式の左辺及び右辺                       */
/*      n : 方程式の数                                 */
/*      m : 方程式の右辺の列の数                       */
/*      eps : 正則性を判定する規準                     */
/*      return : =0 : 正常                             */
/*               =1 : 逆行列が存在しない               */
/*******************************************************/
int gauss(double **w, int n, int m, double eps)
{
	double y1, y2;
	int ind = 0, nm, m1, m2, i1, i2, i3;

	nm = n + m;

	for (i1 = 0; i1 < n && ind == 0; i1++) {

		y1 = .0;
		m1 = i1 + 1;
		m2 = 0;

		for (i2 = i1; i2 < n; i2++) {
			y2 = fabs(w[i2][i1]);
			if (y1 < y2) {
				y1 = y2;
				m2 = i2;
			}
		}

		if (y1 < eps)
			ind = 1;

		else {

			for (i2 = i1; i2 < nm; i2++) {
				y1        = w[i1][i2];
				w[i1][i2] = w[m2][i2];
				w[m2][i2] = y1;
			}

			y1 = 1.0 / w[i1][i1];

			for (i2 = m1; i2 < nm; i2++)
				w[i1][i2] *= y1;

			for (i2 = 0; i2 < n; i2++) {
				if (i2 != i1) {
					for (i3 = m1; i3 < nm; i3++)
						w[i2][i3] -= w[i2][i1] * w[i1][i3];
				}
			}
		}
	}

	return(ind);
}

/****************************************/
/* 最大固有値と固有ベクトル（べき乗法） */
/*      i : 何番目の固有値かを示す      */
/*      n : 次数                        */
/*      m : 丸め誤差の修正回数          */
/*      ct : 最大繰り返し回数           */
/*      eps : 収束判定条件              */
/*      A : 対象とする行列              */
/*      B : nxnの行列，最初は，単位行列 */
/*      C : 作業域，nxnの行列           */
/*      r : 固有値                      */
/*      v : 各行が固有ベクトル（nxn）   */
/*      v0 : 固有ベクトルの初期値       */
/*      v1,v2 : 作業域（n次元ベクトル） */
/*      return : 求まった固有値の数     */
/*      coded by Y.Suganuma             */
/****************************************/
#include <math.h>

int power(int i, int n, int m, int ct, double eps, double **A, double **B,
          double **C, double *r, double **v, double *v0, double *v1, double *v2)
{
	double l1, l2, x;
	int i1, i2, i3, ind, k, k1;
					// 初期設定
	ind = i;
	k   = 0;
	l1  = 0.0;
	for (i1 = 0; i1 < n; i1++) {
		l1     += v0[i1] * v0[i1];
		v1[i1]  = v0[i1];
	}
	l1 = sqrt(l1);
					// 繰り返し計算
	while (k < ct) {
						// 丸め誤差の修正
		if (k%m == 0) {
			l2 = 0.0;
			for (i1 = 0; i1 < n; i1++) {
				v2[i1] = 0.0;
				for (i2 = 0; i2 < n; i2++)
					v2[i1] += B[i1][i2] * v1[i2];
				l2 += v2[i1] * v2[i1];
			}
			l2 = sqrt(l2);
			for (i1 = 0; i1 < n; i1++)
				v1[i1] = v2[i1] / l2;
		}
						// 次の近似
		l2 = 0.0;
		for (i1 = 0; i1 < n; i1++) {
			v2[i1] = 0.0;
			for (i2 = 0; i2 < n; i2++)
				v2[i1] += A[i1][i2] * v1[i2];
			l2 += v2[i1] * v2[i1];
		}
		l2 = sqrt(l2);
		for (i1 = 0; i1 < n; i1++)
			v2[i1] /= l2;
						// 収束判定
							// 収束した場合
		if (fabs((l2-l1)/l1) < eps) {
			k1 = -1;
			for (i1 = 0; i1 < n && k1 < 0; i1++) {
				if (fabs(v2[i1]) > 0.001) {
					k1 = i1;
					if (v2[k1]*v1[k1] < 0.0)
						l2 = -l2;
				}
			}
			k    = ct;
			r[i] = l2;
			for (i1 = 0; i1 < n; i1++)
				v[i][i1] = v2[i1];
			if (i == n-1)
				ind = i + 1;
			else {
				for (i1 = 0; i1 < n; i1++) {
					for (i2 = 0; i2 < n; i2++) {
						C[i1][i2] = 0.0;
						for (i3 = 0; i3 < n; i3++) {
							x          = (i1 == i3) ? A[i1][i3] - l2 : A[i1][i3];
							C[i1][i2] += x * B[i3][i2];
						}
					}
				}
				for (i1 = 0; i1 < n; i1++) {
					for (i2 = 0; i2 < n; i2++)
						B[i1][i2] = C[i1][i2];
				}
				for (i1 = 0; i1 < n; i1++) {
					v1[i1] = 0.0;
					for (i2 = 0; i2 < n; i2++)
						v1[i1] += B[i1][i2] * v0[i2];
				}
				for (i1 = 0; i1 < n; i1++)
					v0[i1] = v1[i1];
				ind = power(i+1, n, m, ct, eps, A, B, C, r, v, v0, v1, v2);
			}
		}
							// 収束しない場合
		else {
			for (i1 = 0; i1 < n; i1++)
				v1[i1] = v2[i1];
			l1 = l2;
			k++;
		}
	}

	return ind;
}
