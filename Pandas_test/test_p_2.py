import numpy as np
import pandas as pd


# my_2darray is numpy's ndarray
my_2darray = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])

# after making dataframe from ndarray, type is shown as pd.Dataframe
dataframe_from_ndarray = pd.DataFrame(my_2darray)
print(dataframe_from_ndarray, "\n")


# python's dict class
my_dictionay = {"a": [1, 3], "b": [2, 4], "c": [3, 6]}

# making dataframe from dictionary
dataframe_from_dict = pd.DataFrame(my_dictionay)
print(dataframe_from_dict, "\n")
'''
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
print(len(dataframe_from_ndarray.columns), "\n")
'''

# select specific column or row (index)
# loc, iloc
# loc : location, access with label or boolean array
# iloc : integer location, access row or column with index

# if index is "2", "A", "4"  loc[2] will return first row, iloc[2] will return third row with index 2.


# values are returned as pd.Series
print(type(dataframe_from_dict.iloc[0]))
print(dataframe_from_dict.iloc[0])

# these two values are same
print(dataframe_from_dict.loc[1, 'a'])
print(dataframe_from_dict.loc[1]['a'], "\n")

print(dataframe_from_ndarray.iloc[0][2])
# these are same
print(dataframe_from_ndarray.loc[0])
print(dataframe_from_ndarray.loc[0][:], "\n")

print(dataframe_from_ndarray.loc[:][0])
print(dataframe_from_ndarray.loc[:, 0])


# set index / reset index

df = pd.DataFrame({"A": [1, 4, 7], "B": [2, 5, 8], "C": [3, 6, 9]})
print(df)

k = ['a', 'b', 'c']
df.index = k

print(df)

# default: drop=False, if drop is True, remove the custom index
rs = df.reset_index()
rsT = df.reset_index(drop=True)
print(rsT, "\n rst")

# set_index
k = df.set_index('A')
print(k)

# default: inplace = false, if inplace is true, change the original data
k.reset_index(inplace=True)
print(k)


# Add row or Column

data = pd.DataFrame(data=[[1, 2, 3], [4, 5, 6], [7, 8, 9]], index=[2.5, 12.6, 4.8], columns=[48, 49, 50])
print(data.iloc[2])
# print(data.iloc[2.5])         //error, there is no 2.5th array
# data.iloc[3] = [10, 11, 12]   //error, adding without index info, just location

# print(data.loc[2]) error
print(data.loc[2.5])
data.loc[3] = [10, 11, 12]      # this is possible, add a row with index name 3


print(data)

# Adding row with append()
newdata = pd.DataFrame(data=[[13, 14, 15]], index=[2.5], columns=[48, 49, 50])
print(newdata)

data = data.append(newdata)
print(data)

data.reset_index(inplace=True, drop=True)
print(data)


# Adding column with insert
'''
coldata = data.loc[:]['51'] = pd.Series(data=[4, 7, 10, 13, 16], index=data.index)
print(coldata)
'''

data.insert(3, "51", [4, 7, 10, 13, 16], True)
print(data, "\n")

# Remove column or row
# axis = 0 if row, axis = 1 if column
data.drop(48, axis=1, inplace=True)
print(data, "\n")

data.drop(3, axis=0, inplace=True)
print(data)
