#! usr/bin/env python

import numpy as np 
import pandas as pd 
import matplotlib.pyplot as plt 
import seaborn as sns 


sns.set(style="darkgrid")

fmri = pd.read_csv("file1.csv")
fmri.head()
print("nihao")
sns.relplot(x='episode',y='reward',hue="index",kind='line',ci="sd",data=fmri)
plt.show()