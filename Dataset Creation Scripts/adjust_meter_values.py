import os
from pathlib import Path
import re
import pandas as pd

def get_jobs(filepath):
    '''
    Returns a list of log file paths (STR) to be processed next.
    '''
    data = []
    for root, dirs, files in os.walk(filepath):
        for file in files:
            #append the file name to the list
            if(file.endswith(".csv") and 'mal' not in file):
                data.append(os.path.join(root,file))
    return data

filepath = r"opendss\LVTestCase\no loss\dataset_merged_output_noloss"
src = "dataset_merged_output_noloss"
dest = "dataset_merged_output_noloss_adjustedloads"

sim_folder_list = []

# iterate datasets
dataset_folder = [f.path for f in os.scandir(filepath) if f.is_dir()]
for dataset in dataset_folder:
    print('Currently in dataset: {}'.format(dataset))
    csv_list = get_jobs(dataset)
    csv_list.sort(key=lambda f: int(re.sub('\D', '', f)))

    for csv in csv_list:
        print('Current file: {}'.format(csv))
        # Convert csv to dataframe
        df = pd.read_csv(csv)
        df = df.drop(df.filter(regex='voltage').columns, axis=1)

        # Parse day and sim
        match = re.search('.+sim_(?P<sim>\d+)_\d[ab].d(?P<day>\d)', csv)
        day = int(match.group('day'))
        sim = int(match.group('sim'))
        
        # If in dataset 2 to 7, subtract gen profile
        if sim >= 111:
            file_pv = r'opendss\LVTestCase\data\PV\PV_{}.txt'.format(sim)
            pv_load = []
            
            # Get list of loads with PV
            with open(file_pv, 'r') as f:
                for line in f:
                    match = re.search('gen(?P<load>\d+) .+Yearly=(?P<shape>.+)', line)
                    pv_load.append([match.group('load'), match.group('shape')])
            
            # For item in pv_load, adjust load
            bounds = [(0, 48), (48, 96), (96, 144), (144, 192), (192, 240), (240, 288), (288, 336)]
            for item in pv_load:
                load = item[0]
                shape_num = item[1].split('_')[2]
                shape_type = item[1].split('_')[0]
                #print('load{0} shape{1} type{2}'.format(load, shape_num, shape_type))
                
                folder = r'opendss\LVTestCase\data\1week_30min_gen_pv'
                if shape_type == 'NM':
                    df_pv = pd.read_csv(folder + r'_nm\gen_profile_' + str(shape_num) + '.csv', names=['PV profile'])
                    df_pv = df_pv.iloc[bounds[day-1][0]:bounds[day-1][1] ,0]
                    df_pv = pd.DataFrame([df_pv]).transpose().reset_index(drop=True)
                    load_name = 'load_{}_power'.format(str(load))
                    df[load_name] = df[load_name].astype(float) - df_pv.iloc[:,0].astype(float)
                elif shape_type == 'PV':
                    df_pv = pd.read_csv(folder + r'\gen_wonm_profile_' + str(shape_num) + '.csv', names=['PV profile'])
                    df_pv = df_pv.iloc[bounds[day-1][0]:bounds[day-1][1] ,0]
                    df_pv = pd.DataFrame([df_pv]).transpose().reset_index(drop=True)
                    load_name = 'load_{}_power'.format(str(load))
                    df[load_name] = df[load_name].astype(float) - df_pv.iloc[:,0].astype(float)
                else:
                    print('ERROR, wrong PV/NM type')
        
        dest_path = csv.replace(src, dest)
        dfolder = csv.split('\\')[-1]
        Path(dest_path.replace(dfolder, '')).mkdir(parents=True, exist_ok=True)
        df.to_csv(dest_path, index=False)
        #print(df)