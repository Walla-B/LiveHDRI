import cv2 as cv
import numpy as np
import os
from time import time
from test_mss_1 import WindowCapture

# Change the working directory to the folder this script is in.
# Doing this because I'll be putting the files from each video in their own folder on GitHub
os.chdir(os.path.dirname(os.path.abspath(__file__)))


# initialize the WindowCapture class
wincap = WindowCapture()

loop_time = time()
while True:

    # get an updated image of the game
    dangles = wincap.get_screenshot()
    # resized = cv.resize(screenshot, dsize=(0, 0), fx=0.5, fy=0.5, interpolation=cv.INTER_AREA)

    # cv.imshow('Computer Vision', resized)

    danglesample = cv.imread("C:/Users/dev/Desktop/danglesample.jpg")

    # cv.imshow("img", dangles, cv.IMREAD_UNCHANGED)
    # cv.imshow("sample", danglesample, cv.IMREAD_UNCHANGED)

    result = cv.matchTemplate(dangles, danglesample, cv.TM_CCOEFF_NORMED)

    # cv.imshow("result", result)

    min_val, max_val, min_loc, max_loc = cv.minMaxLoc(result)

    print(max_loc)
    print(max_val)

    w = danglesample.shape[1]
    h = danglesample.shape[0]

    threshold = .60

    yloc, xloc = np.where(result >= threshold)
    print(len(xloc))

    rectangles = []
    for (x, y) in zip(xloc, yloc):
        rectangles.append([int(x), int(y), int(w), int(h)])
        # grouping rectangles will make single rectangle error. so duplicate once more.
        rectangles.append([int(x), int(y), int(w), int(h)])

    rectangles, weights = cv.groupRectangles(rectangles, 1, 0.2)

    print(len(rectangles))

    for (x, y, w, h) in rectangles:
        cv.rectangle(dangles, (x - 5, y - 5), (x + w + 5, y + h + 5), color=(255, 0, 0), thickness=1)
        prob = str(round(result[y, x], 2))
        cv.putText(dangles, prob, fontFace=cv.QT_FONT_NORMAL, fontScale=0.3, thickness=1, color=(255, 0, 0), org=(x - 5, y - 10))

    resized = cv.resize(dangles, dsize=(0, 0), fx=0.55, fy=0.55, interpolation=cv.INTER_AREA)
    cv.imshow("img", resized)

    # debug the loop rate
    print('FPS {}'.format(1 / (time() - loop_time)))
    loop_time = time()

    # press 'q' with the output window focused to exit.
    # waits 1 ms every loop to process key presses
    if cv.waitKey(1) == ord('q'):
        cv.destroyAllWindows()
        break

print('Done.')