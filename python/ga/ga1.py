#encoding=utf-8

import cv2
import numpy as np
from matplotlib import pyplot as plt

def readFile(filename):
    imgf = cv2.imread(filename)
    cv2.imshow("うすさん",imgf)
    img = cv2.imread(filename, 0) #グレースケールで読み込み
    xgray = cv2.Sobel(img,cv2.CV_32F,1,0) #X方向エッジ検出

    ygray = cv2.Sobel(img,cv2.CV_32F,0,1) #Y方向エッジ検出

    xgray_abs = cv2.convertScaleAbs(xgray) #X-8bit符号なし整数変換
    ygray_abs = cv2.convertScaleAbs(ygray) #Y-8bit符号なし整数変換

    gray_s_e = cv2.addWeighted(xgray_abs,0.5,ygray_abs,0.5,0) #重み付き和

#    plt.subplot(131),plt.imshow(xgray),plt.title("xedge")
#    plt.xticks([]),plt.yticks([])    
#    plt.subplot(132),plt.imshow(ygray),plt.title("yedge")
#    plt.xticks([]),plt.yticks([])
#    plt.subplot(133),plt.imshow(gray_s_e),plt.title("edge_abs")
#    plt.xticks([]),plt.yticks([])
    cv2.imshow("xgray", xgray)
    cv2.imshow("ygray", ygray)
    cv2.imshow("gray_s_e", gray_s_e)

    cv2.waitKey()
    cv2.destroyAllWindows()

if __name__ == '__main__':
    readFile("usagi.jpg")


