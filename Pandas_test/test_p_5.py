import pandas as pd
import math
import numpy as np


df = pd.DataFrame(data=[[100, 20.3], [200, 15.1], [300, 25.9]], index=['idx_a', 'idx_b', 'idx_c'], columns=['price', 'weight'])
print(df)

# apply() : do calculation for every elements in row or coluumn

df["distance"] = ""

print("\n")

context = pd.DataFrame(data=[[100, 1], [300, 3], [200, 2]], columns=['price', 'setval'])
print(context, "\n")


def get_average(frame):
    return math.ceil((frame['price'] + frame['weight']) / 2)


def get_value(frame_item):
    # print(frame_item['price'])
    result = (context.loc[context[:][0] == frame_item['price']])
    print(result)
    return 1


# df["distance"] = df.apply(get_value, axis=1)
for i in df.index:
    # df.at[i, 'distance'] = context.loc[]
    # df.at[i, 'distance'] = (context.loc[]
    idex = context[context['price'] == df.loc[i, 'price']].index.values

    df.at[i, 'distance'] = context.loc[idex, 'setval']
    # print(context.loc[context[:, 0] == df.loc[i, 'price']])
# print(df, "\n")

# print(df.loc[df['distance'] == 61])
print(df)