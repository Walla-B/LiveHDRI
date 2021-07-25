import pandas as pd
import math
import numpy as np


# df = pd.DataFrame(data=[[100, 20.3], [200, 15.1], [300, 25.9]], index=['idx_a', 'idx_b', 'idx_c'], columns=['price', 'weight'])
df = pd.read_csv("C:/Users/dev/Desktop/2010.csv")
print(df)

# apply() : do calculation for every elements in row or coluumn

df["grade"] = ""

print("\n")

# context = pd.DataFrame(data=[[100, 1], [300, 3], [200, 2]], columns=['price', 'setval'])
context = pd.read_csv("C:/Users/dev/Desktop/SGG.csv")

# removing first and last unneccesary whitespaces. it works great :D
context['location'] = context['location'].str.strip()
print(context, "\n")

'''
def get_average(frame):
    return math.ceil((frame['price'] + frame['weight']) / 2)


def get_value(frame_item):
    # print(frame_item['price'])
    result = (context.loc[context[:][0] == frame_item['price']])
    print(result)
    return 1
'''

# df["distance"] = df.apply(get_value, axis=1)

# iterating through dataframe and setting values according to another dataframe
for i in df.index:
    idex = context[context['location'] == df.loc[i, 'location']].index.values
    print(idex)
    if len(idex) is 0:
        df.at[i, 'grade'] = "NaN"
    elif len(idex) is not 0:
        df.at[i, 'grade'] = context.loc[int(idex), 'grade']

print(df)

df.to_csv("C:/Users/dev/Desktop/2010pandas.csv",sep=',',na_rep='Nan',encoding='EUC-KR')
