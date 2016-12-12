
import matplotlib.pylab as plt
import numpy as np

plt.xscale("log")
x = np.arange(0.1,10,0.01)
y = np.log(x)

plt.plot(x,y)
plt.show()
