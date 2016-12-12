#encoding=utf-8

import cv2
import numpy as np

image = cv2.imread("a.jpg")
x, y = image.shape[0], image.shape[1]
cv2.imshow("a.jpg", image)

print image[100,100]
for i in xrange(x):
    for j in xrange(y):
        px = image[i,j]
        r, g, b = px
        if r < 250 and g < 240 and b < 250:
            image.itemset((i, j, 0), 171)
            image.itemset((i, j, 1), 115)
            image.itemset((i, j, 2), 234)
        else:
            image.itemset((i, j, 0), 255)
            image.itemset((i, j, 1), 255)
            image.itemset((i, j, 2), 255)
    
cv2.imshow("a.jpg", image)
cv2.imwrite("a-1.png", image)
cv2.waitKey()


