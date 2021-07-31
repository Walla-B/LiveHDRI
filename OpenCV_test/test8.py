import cv2 as cv
import numpy as np

dangles = cv.imread("C:/Users/dev/Desktop/dangles.jpg")
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

for (x, y) in zip(xloc, yloc):
    cv.rectangle(dangles, (x - 5, y - 5), (x + w + 5, y + h + 5), color=(255, 0, 0), thickness=1)

rectangles = []
for (x, y) in zip(xloc, yloc):
    rectangles.append([int(x), int(y), int(w), int(h)])
    # grouping rectangles will make single rectangle error. so duplicate once more.
    rectangles.append([int(x), int(y), int(w), int(h)])

rectangles, weights = cv.groupRectangles(rectangles, 1, 0.2)

print(len(rectangles))

cv.imshow("img", dangles)

cv.waitKey(10)
