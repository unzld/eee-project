import os
import re
import time
import pandas as pd
from pathlib import Path

def get_jobs(filepath):
    '''
    Returns a list of log file paths (STR) to be processed next.
    '''
    data = []

    for root, dirs, files in os.walk(filepath):
        for file in files:
            #append the file name to the list
            if(file.endswith(".csv")):
                data.append(os.path.join(root,file))
                
    
    return data

def csv_to_list(path):
    results = []
    with open(path, newline='') as inputfile:
        for row in csv.reader(inputfile):
            results.append(row[0])

    return results

def add_error_column(df):
    df = df.drop(df.filter(regex='voltage').columns, axis=1)
    cm_members = [[1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12], [13, 14, 15, 16, 17],\
            [18, 19, 20, 21, 22, 23], [24, 28, 27, 26, 44, 32, 38], [34, 30, 25, 31, 29, 37, 36, 33, 35],\
            [46, 48, 49, 42, 39, 40, 54, 51, 41, 45], [43, 47, 52, 55, 50, 53]]
    
    for index, cm in enumerate(cm_members, 1):
        #print('len:{}'.format(len(cm)))
        sum = 0
        for load in cm:
            sum = sum + df['load_{}_power'.format(load)]
        df['error_{}'.format(index)] = (abs(sum - df['cm_{}'.format(index)]))/df['cm_{}'.format(index)]

    df = df[['error_1', 'error_2', 'error_3', 'error_4', 'error_5', 'error_6', 'error_7', 'error_8'] + [c for c in df if c not in ['error_1', 'error_2', 'error_3', 'error_4', 'error_5', 'error_6', 'error_7', 'error_8']]]
    df = df.drop(df.filter(regex='cm').columns, axis=1)
    return df

filepath = r"opendss\LVTestCase\dataset_merged_output_adjustedloads"
src = "dataset_merged_output_adjustedloads"
dest = "dataset_average_output"

sim_folder_list = []

dp_list = []
# iterate datasets
dataset_folder = [f.path for f in os.scandir(filepath) if f.is_dir()]
for df in dataset_folder:
    """ sim_folder = [f.path for f in os.scandir(df) if f.is_dir()]
    sim_folder.sort(key=lambda f: int(re.sub('\D', '', f)))
    sim_folder_list = sim_folder_list + sim_folder """
    print('Currently in dataset: {}'.format(df))
    csv_list = get_jobs(df)
    csv_list.sort(key=lambda f: int(re.sub('\D', '', f)))

    for csv in csv_list:
        """ sim_letter = csv.split('\\')[4].split('_')[2] """

        df = pd.read_csv(csv)
        # add error column
        #df = add_error_column(df)
        datapoint = df.mean(axis=0).to_frame().transpose()

        label = 0
        if "mal" in csv: label = 1
        datapoint["label"] = label
        category = csv.split('\\')[-2].split('_')[2]
        datapoint.insert(0, "category", category)

        dp_list.append(datapoint)
        print("Added datapoint: {}".format(csv))

print("Combining datapoints..")
dataset_df = pd.concat(dp_list)
dataset_df.reset_index(inplace=True, drop=True) 
print(dataset_df)
dest_path = filepath.replace(src, dest)
Path(dest_path).mkdir(parents=True, exist_ok=True)
dataset_df.to_csv(dest_path + r"\\dataset_average_noerror.csv" , index=False)
