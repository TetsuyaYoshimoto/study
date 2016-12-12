# -*- coding: utf-8 -*-
 
import cv2
 
cascade_path = "../cascade/haarcascade_frontalface_alt.xml"
image_path = "../img/obama.jpg"
 
color = (255, 255, 255)
image = cv2.imread(image_path)
gray = cv2.imread(image_path, 0)

cascade = cv2.CascadeClassifier(cascade_path)
facerect = cascade.detectMultiScale(gray, scaleFactor=1.1, minNeighbors=1, minSize=(1, 1))
 
if len(facerect) > 0:
  for rect in facerect:
    cv2.rectangle(image, tuple(rect[0:2]),tuple(rect[0:2]+rect[2:4]), color, thickness=2)
else:
  print("顔なんて存在しません")

cv2.imshow("Output", image)
cv2.waitKey()
cv2.destroyAllWindows()


