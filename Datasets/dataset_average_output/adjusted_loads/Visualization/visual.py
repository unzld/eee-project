# -*- coding: utf-8 -*-
"""
Created on Wed Jul  7 01:46:43 2021

@author: zildj
"""
import pandas as pd
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import matplotlib as mpl
import numpy as np
import seaborn as sns

# for i in range(7):
#     file = r'd{}_avg_error_adjustedloads.csv'.format(i+1)
#     df = pd.read_csv(file)
#     df = df[df['label'] == 1]
#     df_errors = df.iloc[:, 1:9]
#     df_errors = df_errors.sample(frac=1, random_state=42).reset_index(drop=True)
    
#     df_errors.hist(bins=25, color='steelblue', edgecolor='black', linewidth=1.0,
#                 xlabelsize=8, ylabelsize=8, grid=False, range=[-1, 1])
#     plt.tight_layout(rect=(0, 0, 1.2, 1.2))
#     plt.yscale('log')

# for i in range(6,7):
#     file = r'd{}_avg_error_adjustedloads.csv'.format(i+1)
#     df = pd.read_csv(file)
#     #df = df[df['label'] == 1]
#     df_errors = df.iloc[:, np.r_[1:9, 64]]
#     df_errors = df_errors.sample(frac=1, random_state=42).reset_index(drop=True)
    
#     # Violin Plots
#     f, (ax) = plt.subplots(1, 1, figsize=(6, 4))
#     f.suptitle('Dataset {}: CM 5 % Loss Error'.format(i+1), fontsize=14)
    
#     sns.violinplot(x="label", y="error_5", data=df_errors, ax=ax, cut=0, width=0.9)
#     ax.set_xlabel("Label",size = 12,alpha=0.8)
#     ax.set_ylabel("% Loss Error",size = 12,alpha=0.8)
#     if i in range(3):
#         ax.set_ylim(-0.01,0.155)
#     if i in range(3,5):
#         ax.set_ylim(-3.8,1.8)
#     #ax.set(yscale="symlog")
#     plt.axhline(y = 0, color = 'dimgray', linestyle = 'dotted')
#     #plt.tight_layout()
#     #plt.grid()
#     plt.show()

f, (ax) = plt.subplots(1, 3,figsize=(17, 4))
n = 84+70+84+98+126+126+84
for i in range(3):
    file = r'd{}_avg_error_adjustedloads.csv'.format(i+1)
    df = pd.read_csv(file)
    #df = df.iloc[np.r_[0+n:84+n, 770+n:854+n], :]
    #df = df[df['label'] == 1]
    df_errors = df.iloc[:, np.r_[1:9, 64]]
    df_errors = df_errors.sample(frac=1, random_state=42).reset_index(drop=True)
    
    # Violin Plots
    #f.suptitle('Dataset {}: CM6 Error'.format(i+1), fontsize=14)
    
    sns.violinplot(x="label", y="error_5", data=df_errors, ax=ax[i], cut=0, width=0.9)
    ax[i].set_xlabel("Label",size = 12,alpha=0.8)
    ax[i].set_ylabel("% Loss Error",size = 12,alpha=0.8)
    ax[i].set_title('Dataset {}: CM 5 % Loss Error'.format(i+1))
    if i in range(3):
        #ax[i].set_ylim(-0.01,0.155)
        ax[i].set_ylim(-0.01,0.3)
    if i in range(3,5):
        ax[i].set_ylim(-3.8,1.8)
    #ax.set(yscale="symlog")
    ax[i].axhline(y = 0, color = 'dimgray', linestyle = 'dotted')
    #plt.tight_layout()
    #plt.grid()
    #plt.show()
    
# file = r'd7_avg_error_adjustedloads.csv'
# df = pd.read_csv(file)
# df = df.iloc[:, np.r_[1:9, 64]]
# df_mal = df[df['label'] == 1]
# df_ben = df[df['label'] == 0]
# print('Smallest value of benign:\n{}'.format(df_ben.min()))
# print('Smallest value of malicious:\n{}'.format(df_mal.min()))