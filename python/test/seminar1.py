from sklearn.cross_decomposition import CCA

X = [[2.,3.],[5.,4.],[7.,6.],[9.,8.],[8.,5.],[4.,3.],[2.,3.],[6.,5.],[3.,3.],[6.,7.]]
Y = [[4.,4.,3.],[6.,3.,5.],[8.,5.,8.],[8.,9.,4.],[7.,6.,2.],[2.,5.,9.],[3.,4.,5],[7.,7.,6.],[5.,4.,7.],[8.,6.,3]]

cca = CCA(n_components=1)
cca.fit(X, Y)

#CCA(copy=True, max_iter=500, n_components=1, scale=True, tol=1e-06)

X_c, Y_c = cca.transform(X, Y)

print X_c
print ""
print Y_c


print "cca.score(X,Y)" + cca.score(X,Y)
print "cca.fit _transform(X,Y)" + cca.fit_transform(X,Y)


