import yfinance as yf
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from pandas.plotting import register_matplotlib_converters
register_matplotlib_converters()

omx  = yf.Ticker("^OMX")  
start_date = '2020-01-01'

indices = omx.history(period='max') 
indices['Perc change'] = 0.0

for i in range(1,indices.shape[0]):
    indices['Perc change'][i] = (float)(indices['Close'][i] - indices['Close'][i-1])/indices['Close'][i] * 100

sel_ind = indices.loc[indices.index >= start_date] 
closeValue = sel_ind['Close']
percChange = sel_ind['Perc change']

#plt.plot(percChange)
xlabels = sel_ind.index.strftime('%m-%d')
ylabels = percChange
colors = np.sign(percChange).values #['red' for i in len(xlabels)]
ax = sns.barplot(y=percChange, x=xlabels, hue = colors) #, palette='Greens')  

ax.axhline(y=0, color="black", linestyle="--")
ax.set_xticklabels(xlabels, rotation=90) #, rotation_mode="anchor")
ax.grid(True)
plt.show()