import cv2 as cv
import numpy as np

img = cv.imread("C:/Users/dev/Desktop/LiveHDRI/OpenCV_test/imageset/landscape.jpg")
cv.imshow("landscape", img)


def translate(image, x, y):
    transmat = np.float32([[1, 0, x], [0, 1, y]])
    dimensions = (image.shape[1], image.shape[0])
    return cv.warpAffine(image, transmat, dimensions)

# -x : left
# -y : up
# x : right
# y : down


def rotate(image, angle, pivot=None):
    (height, width) = image.shape[:2]

    if pivot is None:
        pivot = (width//2, height//2)

    rotatematrix = cv.getRotationMatrix2D(pivot, angle, 1.0)
    dimensions = (width, height)

    return cv.warpAffine(image, rotatematrix, dimensions)


rotated = rotate(img, 45)
cv.imshow("rotated", rotated)

translated = translate(img, 50, 50)
cv.imshow("translated", translated)

flipped = cv.flip(rotated, 0)
cv.imshow("flipped", flipped)
cv.waitKey(0)