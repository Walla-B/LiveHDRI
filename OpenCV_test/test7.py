import cv2 as cv
import numpy as np

img = cv.imread("C:/Users/dev/Desktop/LiveHDRI/OpenCV_test/imageset/landscape.jpg")
cv.imshow("img", img)

# splitting color channel
b, g, r = cv.split(img)

'''
cv.imshow("b", b)
cv.imshow("g", g)
cv.imshow("r", r)

# type = tuple(a,b,c)
print(type(img.shape))
print(img.shape)

# type = tuple(a,b)
print(type(b.shape))
print(b.shape)

# merging a image
mergedimg = cv.merge([b, g, r])
cv.imshow("merged", mergedimg)
'''
print(type(b))
'''
# reconstructing image
newmerged = cv.merge([0, g, 0])
cv.imshow("newmerged", mergedimg)
'''

arr = [[0 for i in range(3)] for j in range(3)]
print(type(arr))

blankimg = np.zeros(img.shape[:2], dtype="uint8")
blue = cv.merge([b, blankimg, blankimg])
green = cv.merge([blankimg, g, blankimg])
red = cv.merge([blankimg, blankimg, r])
cv.imshow("Blue", blue)
cv.imshow("Green", green)
cv.imshow("Red", red)

cv.waitKey(0)