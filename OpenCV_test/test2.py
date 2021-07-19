import cv2 as cv
import numpy as np

# numpy.zeros() : make an array with zeros.
# numpy.ones() : make an array with ones.
# numpy.zeros((row, col, height), datatype) > make 3-dimentional array of zeros
zero = np.zeros((500, 500), dtype='uint8')

# this image is shown as black image, (0,0,0)
cv.imshow("zeros", zero)

# initialize three dimentional array with zeros, each representing R,G,B
# datatype is nparray
color = np.zeros((500, 500, 3), dtype='uint8')

# slicing array and setting BGR values
color[0:500:2, 0:500:2] = (255, 255, 156)
color[300:500, 300:500] = (0, 255, 0)

# drawing with cv.rectangle. this rectangle is empty
# starting cursor, end cursor, color, thickness
cv.rectangle(color, (0, 0), (250, 250), (0, 0, 255), thickness=2)
# draw filled rectangle
cv.rectangle(color, (0, 0), (250, 250), (0, 0, 255), thickness=cv.FILLED)

# drawing a circle
# fill if thickness is -1
cv.circle(color, (color.shape[1]//2, color.shape[0]//2), radius=100, color=(255, 0, 0), thickness=-1)

# drawing a line
cv.line(color, (color.shape[1]//2, color.shape[0]//2), (500, 500), color=(100, 10, 100), thickness=3)

# drawing a text
cv.putText(color, "Hello", org=(250, 250), fontFace=cv.FONT_HERSHEY_TRIPLEX, fontScale=1.0, thickness=2, color=(10, 100, 70))
print(type(color))

cv.imshow("white", color)
cv.waitKey(0)
