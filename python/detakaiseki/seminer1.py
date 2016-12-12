#encodind=utf-8

import numpy as np
import scipy.linalg as lin
import matplotlib.pyplot as plt
import csv


fileName = 'test1.csv'
data = csv.reader(fileName, delimiter='\t')
#data = np.loadtxt(fileName, delimiter=',',skiprows=1,usecols=(2,3))
print data
#X=data.T

#(Nvariable,Nsample)=X.shape

#print Nvariable, Nsample

#U = np.zeros(X.shape)
#for k in range(Nvariable):
#    xbar = np.mean(X[k,:])
#    s = np.std(X[k,:],ddof=1)
#    U[k,:] = (X[k,:]-xbar)/s
#print U

#C = np.cov(U)
#w,V = lin.eig(C)
#index = np.argsort(w)
#rindex = index[range(Nvariable-1,-1,-1)]
#w = w[rindex]
#V = V[:,rindex]


#contribution = np.zeros(Nvariable)
#for k in range(Nvariable):
#    contribution[k] = w[k]/np.sum(w)
#    loading = np.zeros((Nvariable,2))
#    for k in range(2):
#        for m in range(Nvariable):
#            loading[m,k] = np.sqrt(w[k])*V[m,k]
#            Z = np.dot(V.T,U)



