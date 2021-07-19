# -*- coding: utf-8 -*-
"""
Created on Fri Jul  9 00:02:20 2021

@author: zildj
"""

import pandas as pd
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import matplotlib as mpl
import numpy as np
import seaborn as sns

cm1 = [1, 2, 3, 4, 5, 6]
cm2 = [7, 8, 9, 10, 11, 12]
cm3 = [13, 14, 15, 16, 17]
cm4 = [18, 19, 20, 21, 22, 23]
cm5 = [24, 26, 27, 28, 32, 38, 44]
cm6 = [25, 29, 30, 31, 33, 34, 35, 36, 37]
cm7 = [39, 40, 41, 42, 45, 46, 48, 49, 51, 54]
cm8 = [43, 47, 50, 52, 53, 55]

# f, (ax) = plt.subplots(1, 3,figsize=(14, 3), dpi=150)
# desc = ['0% PV', '20% PV', '70% PV']
# for i in range(3):
#     df = pd.read_csv('d{}_avg_error_adjustedloads.csv'.format(i+1))
#     df = df.astype({col: 'float32' for col in df.select_dtypes('int64').columns})
#     df = df.drop(df.filter(regex='power').columns, axis=1)
#     df['thief'] = 0
#     df.iloc[0:770,-1] = np.divmod(np.arange(770),14)[0]+1
#     df.iloc[770:1540,-1] = np.divmod(np.arange(770),14)[0]+1
    
#     df.loc[df['thief'].isin(cm1),'thief_val'] = df[df['thief'].isin(cm1)]['error_1']
#     df.loc[df['thief'].isin(cm2),'thief_val'] = df[df['thief'].isin(cm2)]['error_2']
#     df.loc[df['thief'].isin(cm3),'thief_val'] = df[df['thief'].isin(cm3)]['error_3']
#     df.loc[df['thief'].isin(cm4),'thief_val'] = df[df['thief'].isin(cm4)]['error_4']
#     df.loc[df['thief'].isin(cm5),'thief_val'] = df[df['thief'].isin(cm5)]['error_5']
#     df.loc[df['thief'].isin(cm6),'thief_val'] = df[df['thief'].isin(cm6)]['error_6']
#     df.loc[df['thief'].isin(cm7),'thief_val'] = df[df['thief'].isin(cm7)]['error_7']
#     df.loc[df['thief'].isin(cm8),'thief_val'] = df[df['thief'].isin(cm8)]['error_8']
    
#     df['max'] = df.drop(df.filter(regex='label').columns, axis=1).max(axis=1)
#     df['min'] = df.drop(df.filter(regex='label').columns, axis=1).min(axis=1)
#     df['delta'] = df['thief_val'] - df['min']
#     df = df[~df['thief'].isin(cm1)]
#     df = df[~df['thief'].isin(cm2)]
#     df = df[~df['thief'].isin(cm3)]
#     df = df[~df['thief'].isin(cm4)]
#     df = pd.concat([df]*2, ignore_index=True)
#     df = df.iloc[0:1541,:]
#     df = df.sample(frac=1, random_state=42).reset_index(drop=True)
    
#     sns.histplot(data=df, x="thief_val", hue='label', ax=ax[i], bins=25, element="poly")
#     ax[i].set_xlim(-0.0005,0.14)
#     ax[i].legend(labels=['malicious', 'benign'])
#     ax[i].set_xlabel("Dataset {0} ({1})".format(i+1,desc[i]), size=12, alpha=0.8)
#     plt.suptitle('% Loss Error of CM with Pilferer'.format(i+1))
#     #ax.set_xlim(-2,15)

f, (ax) = plt.subplots(1, 2,figsize=(12, 3), dpi=150)
desc = ['20% NM', '70% NM']
for i in range(2):
    df = pd.read_csv('d{}_avg_error_adjustedloads.csv'.format(i+6))
    df = df.astype({col: 'float32' for col in df.select_dtypes('int64').columns})
    df = df.drop(df.filter(regex='power').columns, axis=1)
    df['thief'] = 0
    df.iloc[0:770,-1] = np.divmod(np.arange(770),14)[0]+1
    df.iloc[770:1540,-1] = np.divmod(np.arange(770),14)[0]+1
    
    df.loc[df['thief'].isin(cm1),'thief_val'] = df[df['thief'].isin(cm1)]['error_1']
    df.loc[df['thief'].isin(cm2),'thief_val'] = df[df['thief'].isin(cm2)]['error_2']
    df.loc[df['thief'].isin(cm3),'thief_val'] = df[df['thief'].isin(cm3)]['error_3']
    df.loc[df['thief'].isin(cm4),'thief_val'] = df[df['thief'].isin(cm4)]['error_4']
    df.loc[df['thief'].isin(cm5),'thief_val'] = df[df['thief'].isin(cm5)]['error_5']
    df.loc[df['thief'].isin(cm6),'thief_val'] = df[df['thief'].isin(cm6)]['error_6']
    df.loc[df['thief'].isin(cm7),'thief_val'] = df[df['thief'].isin(cm7)]['error_7']
    df.loc[df['thief'].isin(cm8),'thief_val'] = df[df['thief'].isin(cm8)]['error_8']
    
    df['max'] = df.drop(df.filter(regex='label').columns, axis=1).max(axis=1)
    df['min'] = df.drop(df.filter(regex='label').columns, axis=1).min(axis=1)
    df['delta'] = df['thief_val'] - df['min']
    df = df[~df['thief'].isin(cm1)]
    df = df[~df['thief'].isin(cm2)]
    df = df[~df['thief'].isin(cm3)]
    df = df[~df['thief'].isin(cm4)]
    df = pd.concat([df]*2, ignore_index=True)
    df = df.iloc[0:1541,:]
    df = df.sample(frac=1, random_state=42).reset_index(drop=True)
    
    bins = 25
    if i==1:
        bins = 900
    sns.histplot(data=df, x="thief_val", hue='label', ax=ax[i], bins=bins, element="poly")
    ax[i].legend(labels=['malicious', 'benign'])
    ax[i].set_xlabel("Dataset {0} (70% PV, {1})".format(i+6, desc[i]), size=12, alpha=0.8)
    plt.suptitle('% Loss Error of CM with Pilferer')
    
    if i==0:
        ax[i].set_xlim(-1,1.5)
    else:
        ax[i].set_xlim(-2,4)