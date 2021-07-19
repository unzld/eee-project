# -*- coding: utf-8 -*-
"""
Created on Thu Jul  8 12:43:37 2021

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

f, (ax) = plt.subplots(1, 3,figsize=(24, 4), dpi=150)
for i in range(3):
    df = pd.read_csv('d{}_avg_error_adjustedloads.csv'.format(i+1))
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
    
    df = df.sample(frac=1, random_state=42).reset_index(drop=True)
    sns.scatterplot(data=df.reset_index(), ax=ax[i], x="index", y="thief_val", hue='label', s=10)
    #sns.scatterplot(data=df, ax=ax, x="min", y="thief_val", hue='label', s=10)
    ax[i].axhline(y = 0, color = 'dimgray', linestyle = 'dotted')
    ax[i].set_xlabel("Minimum % Loss Error",size = 12,alpha=0.8)
    ax[i].set_ylabel("% Loss Error of CM with Pilferer",size = 12,alpha=0.8)
    ax[i].set_title('Dataset {}: % Loss Error of CM with Pilferer'.format(i+1))
    
    ax[i].get_xaxis().set_ticks([])
    
    #ax.set_ylim(-0.05,0.05)
    ax[i].set_ylim(-0.005,0.10)
