
import numpy as np

#X = [ 25, 20, 70, 65, 83, 75, 43, 60, 34, 28, 73, 53, 43, 41, 16]
#Y = [ 16, 29, 62, 75, 81, 60, 54, 65, 37, 29, 68, 36, 25, 46, 22]

X = [ 40, 80, 90]
Y = [ 80, 90, 100]
xy_cov = 0

x_var = np.var(X)
y_var = np.var(Y)
x_ave = np.average(X)
y_ave = np.average(Y)

for i in xrange(len(X)):
    xy_cov += (X[i] - x_ave)*(Y[i] - y_ave)

xy_matrix = [[x_var, y_var],
        [y_var, xy_cov/len(X)]]
#print xy_matrix
la, v = np.linalg.eig(xy_matrix)
print la
print v



