import cv2 as cv

# Importing an image and displaying in new window
'''
# read the image in filepath and store it in variable "img"
img = cv.imread("C:/Users/dev/Desktop/LiveHDRI/OpenCV_test/imageset/landscape.jpg")

# initiate window panel named as "landscape" and display the image
cv.imshow("landscape", img)

# waitKey(param)
# (number) param waits for input seconds to get key pressed
# if elapsed time exceeds param, execute next line of codes
# infinite if set to zero
cv.waitKey(3)
'''

# Importing an video and displaying in new window
'''
# cv.VideoCapture(param)
# if param is set to integer, physical cameras are assigned accordingly
# if param is set to filepath, load video files from that filepath
capture = cv.VideoCapture("C:/Users/dev/Desktop/LiveHDRI/OpenCV_test/imageset/landscape_video.mp4")

# capture each images frame by frame
# true if captured file exists, and while true, display each captures
while True:
    isTrue, frame = capture.read()
    cv.imshow('Video', frame)
# if Getkey "d", break the loop
    if cv.waitKey(20) & 0xFF == ord('d'):
        break
# free the variable capture's pointer and destroy opened windows
capture.release()
cv.destroyAllWindows()
'''

# Image rescaling
img = cv.imread("C:/Users/dev/Desktop/LiveHDRI/OpenCV_test/imageset/landscape.jpg")
cv.imshow("landscape", img)


def rescaleFrame(frame, scale=0.75):
    width = int(frame.shape[1] * scale)
    height = int(frame.shape[0] * scale)

    dimensions = (width, height)

    return cv.resize(frame, dimensions, interpolation=cv.INTER_AREA)


cv.waitKey(0)