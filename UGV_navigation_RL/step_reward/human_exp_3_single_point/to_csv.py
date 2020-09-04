#! /usr/bin/env python
import numpy as np 
import pandas as pd 

txt = np.loadtxt('total_reward_list.txt')
print(type(txt))
txtPD = pd.DataFrame(txt,columns={"reward"})
txtPD.to_csv("file.csv",index=True)