''' 
    Extracts 1 week of data from the Ausgrid dataset and removes invalid customers.
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

# Limit entries to summer week
df_nonCL = df_nonCL[(df_nonCL['date'] >= pd.to_datetime('12/5/2010', format='%m/%d/%Y')) & (df_nonCL['date'] <= pd.to_datetime('12/11/2010', format='%m/%d/%Y'))]

#print(df_nonCL[df_nonCL['Customer'] == 11])

d0, d1 = df_nonCL.date.min(), df_nonCL.date.max()
index = pd.date_range(d0, d1 + Day(1), freq='30T', closed='left')
customers = sorted(df_nonCL.Customer.unique())
channels = df_nonCL['Consumption Category'].unique()
columns1 = pd.MultiIndex.from_product((customers, channels), names=['Customer', 'Channel'])
empty_cols = pd.MultiIndex(
    levels=[customers, channels],
    codes=[[],[]],
    names=['Customer', 'Channel'])
df = pd.DataFrame(index=index, columns=columns1)
missing_records = []

for c in customers:
    d_c = df_nonCL[df_nonCL.Customer == c]
    
    for ch in channels:
        d_c_ch = d_c[d_c['Consumption Category'] == ch]
        ts = d_c_ch.iloc[:,5:53].values.ravel()
        if len(ts) != len(index):
            missing_records.append((c,ch, len(ts)))
        else:
            df[c, ch] = ts

i = 1
for c in customers:
    pth1 = "./load_profiles_summer_1week/load_profile_{0}.csv".format(i)
    pth2 = "./gen_profiles_summer_1week/gen_profile_{0}.csv".format(i)
    df_l = df[c, 'GC']
    df_g = df[c, 'GG']

    # Convert kWh to kW
    df_l[:] = df_l[:]*2
    df_g[:] = df_g[:]*2

    df_l.to_csv(pth1, index=False, header=False)
    df_g.to_csv(pth2, index=False, header=False)
    i += 1

#print()