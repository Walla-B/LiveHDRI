import numpy as np

arr = [[0, 0, 0, 255, 255],
       [0, 0, 0, 255, 255],
       [0, 0, 0, 255, 255],
       [255, 255, 255, 255, 255],
       [255, 255, 255, 255, 255]]

x_filter = [[-1, 0, 1],
            [-2, 0, 2],
            [-1, 0, 1]]

y_filter = [[1, 2, 1],
            [0, 0, 0],
            [-1, -2, -1]]

print(type(np.shape(arr)))


def multiply(input_arr, filter_arr):
    outputlist = [[0 for i in range(3)] for j in range(3)]
    for i in range(1, np.shape(input_arr)[0]-1):
        for j in range(1, np.shape(input_arr)[1]-1):
            outputlist[i-1][j-1] = (input_arr[i-1][j-1]*filter_arr[0][0] +
                                    input_arr[i-1][j]*filter_arr[0][1] +
                                    input_arr[i-1][j+1]*filter_arr[0][2] +
                                    input_arr[i][j-1]*filter_arr[1][0] +
                                    input_arr[i][j]*filter_arr[1][1] +
                                    input_arr[i][j+1]*filter_arr[1][2] +
                                    input_arr[i+1][j-1]*filter_arr[2][0] +
                                    input_arr[i+1][j]*filter_arr[2][1] +
                                    input_arr[i+1][j+1]*filter_arr[2][2])
    return outputlist


print("x_filterd")
print(multiply(arr, x_filter))

print("y_filterd")
print(multiply(arr, y_filter))

