import pandas as pd

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