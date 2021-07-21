import cv2 as cv
import numpy as np


img = cv.imread("C:/Users/dev/Desktop/LiveHDRI/OpenCV_test/imageset/landscape.jpg")
cv.imshow("img", img)

grayimg = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
cv.imshow("grayimg", grayimg)
grayimg = cv.GaussianBlur(grayimg, (3, 3), cv.BORDER_DEFAULT)

cannyimg = cv.Canny(grayimg, 50, 170)
cv.imshow("cannyimg", cannyimg)

# thresholding images as binary
ret, thresh = cv.threshold(grayimg, 125, 255, cv.THRESH_BINARY)
cv.imshow("thresh", thresh)
contours, hierarchies = cv.findContours(thresh, cv.RETR_LIST, cv.CHAIN_APPROX_NONE)
print(len(contours))
cv.waitKey(0)

