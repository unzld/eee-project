import os
from pathlib import Path
import numpy as np
import re

def get_jobs(filepath):
    '''
    Returns a list of log file paths (STR) to be processed next.
    '''
    files_actual = []

    for root, dirs, files in os.walk(filepath):
        for file in files:
            #append the file name to the list
            if(file.endswith(".csv") and "_cm_" in file):
                files_actual.append(os.path.join(root,file))
    
    return files_actual

filepath = r"opendss\LVTestCase\simulations_all"
#dest = r"opendss\LVTestCase\simulations_all_days"

sim_subfolders = []

# Get list of sim_X folders
for dataset_folder in os.scandir(filepath):
    if dataset_folder.is_dir():
        print("Found dataset folder: {0}".format(dataset_folder.path))
        for f in os.scandir(dataset_folder.path):
            sim_word = f.path.split("\\")[-1].split("_")[0]
            if f.is_dir() and 'sim' in sim_word:
                sim_subfolders.append(f.path)

sim_subfolders.sort(key=lambda f: int(re.sub('\D', '', f)))
# Iterate through each sim subfolder
for sim in sim_subfolders:
    print("Currently in {0}".format(sim))
    
    # Iterate through each cm .csv in the current sim folder
    queue = get_jobs(sim)
    cm_1 = [0]
    cm_2 = [0]
    cm_3 = [0]
    cm_4 = [0]
    cm_5 = [0]
    cm_6 = [0]
    cm_7 = [0]
    cm_8 = [0]
    for file in queue:
        filename = file.split('\\')[-1]
        
        with open(file, 'r') as f:
            for i, line in enumerate(f):
                line_values = line.split(',')
                if i > 0:
                    if "_cm_1" in filename:
                        cm_1.append(float(line_values[2]) + float(line_values[4]) + float(line_values[6]))
                    elif "_cm_2" in filename:
                        cm_2.append(float(line_values[2]) + float(line_values[4]) + float(line_values[6]))
                    elif "_cm_3" in filename:
                        cm_3.append(float(line_values[2]) + float(line_values[4]) + float(line_values[6]))
                    elif "_cm_4" in filename:
                        cm_4.append(float(line_values[2]) + float(line_values[4]) + float(line_values[6]))
                    elif "_cm_5" in filename:
                        cm_5.append(float(line_values[2]) + float(line_values[4]) + float(line_values[6]))
                    elif "_cm_6" in filename:
                        cm_6.append(float(line_values[2]) + float(line_values[4]) + float(line_values[6]))
                    elif "_cm_7" in filename:
                        cm_7.append(float(line_values[2]) + float(line_values[4]) + float(line_values[6]))
                    elif "_cm_8" in filename:
                        cm_8.append(float(line_values[2]) + float(line_values[4]) + float(line_values[6]))
                    else: print("ERROR")

    cm_1 = np.array(cm_1)
    cm_2 = np.array(cm_2)
    cm_3 = np.array(cm_3)
    cm_4 = np.array(cm_4)
    cm_5 = np.array(cm_5)
    cm_6 = np.array(cm_6)
    cm_7 = np.array(cm_7)
    cm_8 = np.array(cm_8)

    cm_1_actual = cm_1 - cm_2 - cm_3 - cm_4
    cm_2_actual = cm_2
    cm_3_actual = cm_3
    cm_4_actual = cm_4 - cm_5 - cm_6
    cm_5_actual = cm_5 - cm_7
    cm_6_actual = cm_6
    cm_7_actual = cm_7 - cm_8
    cm_8_actual = cm_8
    #np.set_printoptions(suppress=True, formatter={'float_kind':'{:0.2f}'.format})
    np.savetxt(sim + "\cm_1_actual.csv", cm_1_actual, delimiter="\n", fmt="%.6f")
    np.savetxt(sim + "\cm_2_actual.csv", cm_2_actual, delimiter="\n", fmt="%.6f")
    np.savetxt(sim + "\cm_3_actual.csv", cm_3_actual, delimiter="\n", fmt="%.6f")
    np.savetxt(sim + "\cm_4_actual.csv", cm_4_actual, delimiter="\n", fmt="%.6f")
    np.savetxt(sim + "\cm_5_actual.csv", cm_5_actual, delimiter="\n", fmt="%.6f")
    np.savetxt(sim + "\cm_6_actual.csv", cm_6_actual, delimiter="\n", fmt="%.6f")
    np.savetxt(sim + "\cm_7_actual.csv", cm_7_actual, delimiter="\n", fmt="%.6f")
    np.savetxt(sim + "\cm_8_actual.csv", cm_8_actual, delimiter="\n", fmt="%.6f")
    
