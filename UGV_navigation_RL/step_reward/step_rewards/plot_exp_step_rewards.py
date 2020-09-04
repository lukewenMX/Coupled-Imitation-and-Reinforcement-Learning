#! usr/bin/env python

import numpy as np 
import pandas as pd 
import matplotlib.pyplot as plt 
import seaborn as sns 


sns.set(style="darkgrid")

fmri = pd.read_csv("exp_step_1.csv")
fmri.head()
sns.relplot(x='step',y='reward',hue="exp",style="exp",kind='line',ci='sd',data=fmri)
plt.show()