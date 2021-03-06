import cv2 as cv

'''
img = cv.imread("C:/Users/dev/Desktop/LiveHDRI/OpenCV_test/imageset/landscape.jpg")
cv.imshow("landscape", img)

# cv.cvtColor changes image to greyscale
grayimg = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
cv.imshow("grey_landscape", grayimg)

# blur image (remove noise)
blurimg = cv.GaussianBlur(img, (3, 3), cv.BORDER_DEFAULT)
cv.imshow("blurimg", blurimg)

# edge cascade (finding edge)
cannyimg = cv.Canny(blurimg, 125, 175)
cv.imshow("cannyimg", cannyimg)

# dilate an image (expanding edges), iteration will make lines thicker
dilateimg = cv.dilate(cannyimg, (3, 3), iterations=3)
cv.imshow("dilateimg", dilateimg)

# erode an image (make lines thickness slighter, opposite of dilating)
erodedimg = cv.erode(dilateimg, (3, 3), iterations=3)
cv.imshow("erodeimg", erodedimg)

# resize an image, ignores aspect ratio
# default interpolation when resizing to small image : cv.INTER_AREA
# interpolation method cv.INTER_CUBIC is slow, but returns high quality image
resizeimg = cv.resize(img, (2000, 1900), interpolation=cv.INTER_CUBIC)
cv.imshow("resizedimg", resizeimg)

# crop an image
croppedimg = img[50:200, 200:400]
cv.imshow("croppedimg", croppedimg)

print(type(img))
cv.waitKey(0)
'''

# testing in videos
capture = cv.VideoCapture(0)

# capture each images frame by frame
# true if captured file exists, and while true, display each captures
while True:
    isTrue, frame = capture.read()
    blurimg = cv.GaussianBlur(frame, (3, 3), cv.BORDER_DEFAULT)
    cannyimg = cv.Canny(blurimg, 90, 150)
    dilateimg = cv.dilate(cannyimg, (3, 3), iterations=1)

    cv.imshow('Video', dilateimg)
    # if Getkey "d", break the loop
    if cv.waitKey(20) & 0xFF == ord('d'):
        break
# free the variable capture's pointer and destroy opened windows
capture.release()
cv.destroyAllWindows()