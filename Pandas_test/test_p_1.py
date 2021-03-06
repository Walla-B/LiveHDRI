import pandas as pd

# read csv data and save it as Dataframe
data = pd.read_csv("C:/Users/dev/Desktop/input.csv")

# group by index 'location', and average its values
outputdata = data.groupby('location').mean()

# write data to csv file. encoding set to EUC-KR
outputdata.to_csv("C:/Users/dev/Desktop/output.csv", sep=',', na_rep='NaN', encoding='EUC-KR')
