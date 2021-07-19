''' 
    Calculates the standard deviation of generated electricity, by time frame
'''
import pandas as pd
import matplotlib.pyplot as plt
from pandas.tseries.offsets import Day

fname = '2010-2011_ausgrid.csv'
d_raw = pd.read_csv(fname, skiprows=1,
                    parse_dates=['date'], dayfirst=True,
                    na_filter=False, dtype={'Row Quality': str})
print('Unique postcodes: {0}'.format(len(d_raw.Postcode.unique())))

# Get entries with CL
df_CL = d_raw[(d_raw['date'] == pd.to_datetime('7/1/2010', format='%m/%d/%Y')) & (d_raw['Consumption Category'] == 'CL')]
print('Number of customers with CL: {0}'.format(len(df_CL.Customer.unique())))
#print(df_CL.Customer.unique())

# Get entries without CL
df_nonCL = d_raw[~(d_raw['Customer'].isin(df_CL.Customer))]
print('Number of customers without CL: {0}'.format(len(df_nonCL.Customer.unique())))
print(df_nonCL.Customer.unique())

# Limit entries to first week
#df_nonCL = df_nonCL[df_nonCL['date'] <= pd.to_datetime('7/7/2010', format='%m/%d/%Y')]

#print(df_nonCL[df_nonCL['Customer'] == 11])

var = []

df_var = df_nonCL.iloc[:,5:-1][0:0]
currdate = pd.to_datetime('7/5/2010', format='%m/%d/%Y')
    
for n in range(7):
    curr_df = df_nonCL[(df_nonCL['Consumption Category'] == 'GG') & (df_nonCL['date'] == currdate)]
    
    #print(df_nonCL[(df_nonCL['Consumption Category'] == 'GG') & (df_nonCL['date'] == currdate)])
    #curr_var = pd.DataFrame([df_nonCL.iloc[:,5:-1].var()])
    df_var.loc[n] = curr_df.iloc[:,5:-1].std().transpose()
    #print(df_var.loc[n])
    currdate = currdate + pd.DateOffset(1)
    
#print(df_var)
df_var = df_var.multiply(2)
#print(df_var)
df_var.to_csv("generation_variance.csv")