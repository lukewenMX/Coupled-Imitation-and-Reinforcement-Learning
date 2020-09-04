#! /usr/bin/env python
import numpy as np 
import pandas as pd 

data = pd.read_csv('file3.csv',encoding='utf-8')

print(type(data))

for index,row in data.iterrows():
    if row['reward'] > 10:
        row['reward'] = row['reward'] - 9.0
        print (row['reward'])
    else:
        pass
data.to_csv('file4.csv',index=False,encoding='utf-8')
# for index,row in data:
# print("done!")
    