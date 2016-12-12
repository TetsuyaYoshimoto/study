#encoding=utf-8

import matplotlib.pyplot as plt
# import seaborn as sns
# import pandas as pd
import csv
import seaborn as sns
import numpy as np

f = open("data02.csv", "r")
detareader = csv.reader(f)

day, average, max1, min1, cloud, wind = [], [], [] ,[], [], []
data =[ day, average, max1, min1, cloud, wind]
count = 0
for raw in detareader:
    if count == 0:
        count = 1
        pass
    else:
        count += 1
        day.insert(len(day), raw[0])
        average.insert(len(average), float(raw[1]))
        max1.insert(len(max1), float(raw[2]))
        min1.insert(len(min1), float(raw[3]))
        cloud.insert(len(cloud), float(raw[4]))
        wind.insert(len(wind), float(raw[5]))


# plt.plot(average)
# plt.plot(max1)
# plt.plot(min1)
#for i in data[1:4]:
#    plt.plot(i)
#plt.show()
x = np.random.normal(size = 100)
iris = sns.load_dataset("iris")
sns.joinplot("sepalwindow", "petallength", data=iris)
