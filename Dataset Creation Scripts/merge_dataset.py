import os
from pathlib import Path
import numpy
import re
import pandas as pd
import csv

def get_jobs(filepath):
    '''
    Returns a list of log file paths (STR) to be processed next.
    '''
    cm = []
    power = []
    voltage = []
    mal = ''

    for root, dirs, files in os.walk(filepath):
        for file in files:
            #append the file name to the list
            if(file.endswith(".csv")):
                if 'cm' in file:
                    cm.append(os.path.join(root,file))
                elif 'voltage' in file:
                    voltage.append(os.path.join(root,file))
                elif 'malicious' in file:
                    mal = os.path.join(root,file)
                elif 'power' in file:
                    power.append(os.path.join(root,file))
    
    return cm, power, voltage, mal

def csv_to_list(path):
    results = []
    with open(path, newline='') as inputfile:
        for row in csv.reader(inputfile):
            results.append(row[0])

    return results

filepath = r"opendss\LVTestCase\dataset_output_kel"
src = "dataset_output_kel"
dest = "dataset_merged_output_kel"

day_folder_list = []

# iterate datasets
dataset_folder = [f.path for f in os.scandir(filepath) if f.is_dir()]
for df in dataset_folder:
    sim_folder = [f.path for f in os.scandir(df) if f.is_dir()]
    sim_folder.sort(key=lambda f: int(re.sub('\D', '', f)))

    # iterate sim folders then populate day folder list
    for sf in sim_folder:
        day_folder = [f.path for f in os.scandir(sf) if f.is_dir()]
        day_folder.sort(key=lambda f: int(re.sub('\D', '', f)))
        day_folder_list = day_folder_list + day_folder

# iterate day folder list
for day in day_folder_list:
    cm_list, power_list, voltage_list, mal = get_jobs(day)
    power_list.sort(key=lambda f: int(re.sub('\D', '', f)))
    voltage_list.sort(key=lambda f: int(re.sub('\D', '', f)))

    # merge csv in one dataframe
    data = []
    malicious = csv_to_list(mal)
    column_names = []
    for cm in cm_list:
        data.append(csv_to_list(cm))
        column_names.append(cm.split('\\')[6].replace('_actual.csv',''))
    for power in power_list:
        data.append(csv_to_list(power))
        column_names.append(power.split('\\')[6].replace('_power_1.csv','_power').replace('load','load_'))
    for voltage in voltage_list:
        data.append(csv_to_list(voltage))
        column_names.append(voltage.split('\\')[6].replace('_voltage_1.csv','_voltage').replace('load','load_'))

    mal_load = mal.split("\\")[-1].split('_')
    mal_load = '_'.join([mal_load[0], mal_load[1]]).replace('load','load_')

    # benign
    df = pd.DataFrame(data, index=column_names)
    df = df.transpose()

    # malicious
    df_mal = df.copy()
    df_mal[mal_load] = malicious

    dest_path = day.replace(src, dest)
    dfolder = day.split('\\')[-1]
    Path(dest_path.replace(dfolder, '')).mkdir(parents=True, exist_ok=True)
    df.to_csv(dest_path + ".csv", index=False)
    df_mal.to_csv(dest_path + '_mal'+ ".csv", index=False)
    #print(df)
    print("Exported {}".format(day))
    