#encoding=utf-8
import pandas
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np
import scipy as st


data = pandas.read_csv("data02.csv", index_col = "day")
data.head()
data.plot(y = ["average", "min", "max"])
plt.show()
# data.plot(kind="scatter", x = "min", y = "max")
# plt.show()
#
# ax = data.plot(kind = "scatter", x = "min", y = "max")
# ax.set_xlim(-5,30)
# ax.set_ylim(0, 40)
# plt.show()

sns.jointplot(data["min"], data["max"])
plt.show()

mean = data[["min", "max"]].mean()
cov = data[["min", "max"]].cov()


x,y = np.mgrid[-5:30:1, 0:40:1]
xy = np.stack
p = st.multivariate_normal(mean, cov)
plt.contour(x,y,p,cmap="Reds")
plt.scatter(data["min"], data["max"])
plt.show()




