
#encoding=utf-8

import numpy as np
import scipy as si


a = np.array([[3,-2,0],[1,4,0],[0,0,2]])
print a
print ""
#大きさ
print np.linalg.det(a)
print ""
#逆行列
print np.linalg.inv(a)
print ""

#直行行列であれば、=1 になるはず。
b = np.array([[-0.1495, -0.1986, 0.9685], [-0.8256, 0.5640, 0.0117], [-0.5439, -0.8015, 0.2484]])
print b*b.T
print ""
print np.linalg.inv(b)

c = np.array([[-0.1495, -0.1986, 0.9685, 0], [-0.8256, 0.5640, 0.0117, 0], [-0.5439, -0.8015, 0.2484, 0], [1.7928, -5.3116, 8.0151, 1]])
print c
print np.linalg.inv(c)





