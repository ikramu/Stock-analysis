import sys
import os
from bs4 import BeautifulSoup
import pandas as pd
import numpy as np

# import local library functions
dirPath = os.path.dirname(os.path.realpath(__file__))

with open('/Users/eullikr/Downloads/omx_companies.html', 'r') as f:
    htmlTable = f.read()

soup = BeautifulSoup(htmlTable, 'lxml')
header = list()
cols = soup.find_all('th')
for hdr in cols:
    header.append(hdr.get_text())

records = soup.find_all('tr')

omxDf = pd.DataFrame(np.zeros((len(records)-2, len(cols))), columns= header)

for ctr in range(2, len(records)):
    val = records[ctr].find_all('td')
    omxDf.loc[ctr, 'Name'] = val[0].get_text()
    for col in [0,1,2,3,5]:
        omxDf.loc[ctr, header[col]] = val[col].get_text()
    omxDf.loc[ctr, header[4]] = val[4].get('title')
    omxDf.loc[ctr, header[6]] = val[6].find('a').get('href')

# first two lines are zero as they contain header info, so remove them
omxDf.drop([0,1], inplace=True)

# add a link info for Yahoo Finance 
omxDf['yfSymbol'] = omxDf['Symbol'].apply(lambda x: x.replace(' ', '-')+'.ST')

omxDf.to_csv(os.path.join(dirPath,'nasdaqOmxStocksInfo.csv'), index=False)
print('')