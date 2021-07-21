import cv2 as cv
import matplotlib.pyplot as plt

# converting color scale
img = cv.imread("C:/Users/dev/Desktop/LiveHDRI/OpenCV_test/imageset/landscape.jpg")
cv.imshow("img", img)

# OpenCV's default color scale is BGR, so in other libraries using RGB, the color is inverted.
# plt.imshow(img)
# plt.show()

# to grayscale
grayimg = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
cv.imshow("grayimg", grayimg)

# BGR to HSV
hsvimg = cv.cvtColor(img, cv.COLOR_BGR2HSV)
cv.imshow("hsvimg", hsvimg)

# BGR to Lab
labimg = cv.cvtColor(img, cv.COLOR_BGR2LAB)
cv.imshow("labimg", labimg)

# BGR to RGB
rgbimg = cv.cvtColor(img, cv.COLOR_BGR2RGB)
plt.imshow(rgbimg)
plt.show()

# HSV to BGR (cv.COLOR_HSV2BGR)
# can use multiple trnasitions successively

cv.waitKey(0)
