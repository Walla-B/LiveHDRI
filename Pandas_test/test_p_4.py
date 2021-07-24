import pandas as pd
import numpy as np

df = pd.DataFrame(data=[[100, 20.3], [200, 15.1], [300, 25.9]], index=['idx_a', 'idx_b', 'idx_c'], columns=['price', 'weight'])
print(df, "\n")

print(df['price'].dtype)
print(df['weight'].dtype, "\n")

print("iter row\n")
# iterate rows
for idx, row in df.iterrows():
    print("Row : ", idx)
    # print(type(row.dtype))
    print(row, "\n")

print("iter column\n")

# iterate column
for col, item in df.iteritems():
    print("Column : ", col)
    print(item, "\n")


# iterate as tuple
for row in df.itertuples():  # index=False to exclude index
    print(row)

# add new empty column
df["distance"] = ""

'''
for idx, row in df.iterrows():
    if row['weight'] >= 20:
        row["distance"] = 30
    else:
        row["distance"] = 10
'''

# doing with a better way

# resetting index for easier access
df.reset_index(drop=True, inplace=True)

for i in df.index:
    if df.loc[i]['weight'] >= 20:
        df.at[i, 'distance'] = 30
    else:
        df.at[i, 'distance'] = 0


print("after modificatiion\n")


df.to_csv("C:/Users/dev/Desktop/2010pandas.csv", sep=',', na_rep='NaN', encoding='EUC-KR')

