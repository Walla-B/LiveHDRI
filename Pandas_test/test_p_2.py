import numpy as np
import pandas as pd

# my_2darray is numpy's ndarray
my_2darray = np.array([[1, 2, 3], [1, 5, 6]])

# after making dataframe from ndarray, type is shown as pd.Dataframe
dataframe_from_ndarray = pd.DataFrame(my_2darray)
print(dataframe_from_ndarray, "\n")


# python's dict class
my_dictionay = {"a": [1, 3], "b": [2, 4], "c": [3, 6]}

# making dataframe from dictionary
dataframe_from_dict = pd.DataFrame(my_dictionay)
print(dataframe_from_dict, "\n")

# making dataframe from dataframe
dataframe_from_dataframe = pd.DataFrame(data=[[4, 5], [1, 2]], index=range(0, 2), columns=['A', 'B'])
print(dataframe_from_dataframe, "\n")

# making dataframe from pd.Series
dataframe_from_series = pd.Series({"A": 3, "B": 4, "C": 5})
print(dataframe_from_series, "\n")

print(dataframe_from_ndarray.index)
print(dataframe_from_ndarray.columns)
print(dataframe_from_ndarray.dtypes)

print(len(dataframe_from_ndarray.index))
print(len(dataframe_from_ndarray.columns))
