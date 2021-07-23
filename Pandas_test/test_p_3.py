import pandas as pd
import numpy as np

# replace ('something', 'to', regex=True) replaces string 'somrthing' to 'to'.
data = pd.read_csv("C:/Users/dev/Downloads/tempa.csv", sep=',', encoding='utf-8')
# removequote = data.replace('"', '', regex=True)
print(data)
'''
# first five datas
print(data.head())

# check missing values
print(pd.isnull(data))  # row x col dataframe of true/false
print(np.sum(pd.isnull(data)), "\n")

print(data.describe())
'''
# index input is string, so be careful if there's extra blank in names.
print("LatM\n")
# cutdata = data['LatM'] # same as data.loc[:]['LatM'] , data.loc[:, 'LatM']
cutdata = data.iloc[0][1:6]  # same as data.iloc[0, 1:6]
print(cutdata)


# groupby() function works when datas are numbers
grouped_data = data.loc[:, ['LatM', 'LonD']].groupby('LatM').mean()
print(grouped_data)

# add new data according to pre-existing datasets.
print(np.median(data.LonD))
data["Longditude"] = np.where(data.LonD > np.median(data.LonD), 'larger', 'smaller')
print(data)
