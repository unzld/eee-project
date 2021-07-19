import os
from pathlib import Path
import re
import pandas as pd
import numpy as np

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

filepath = r"opendss\LVTestCase\no loss\dataset_merged_output_noloss_adjustedloads"
dest = "dataset_merged_output_noloss_adjustedloads"

sim_folder_list = []

# iterate datasets
dataset_folder = [f.path for f in os.scandir(filepath) if f.is_dir()]
for dataset in dataset_folder:
    print('Currently in dataset: {}'.format(dataset))

    sim_folder = [f.path for f in os.scandir(dataset) if f.is_dir()]
    sim_folder.sort(key=lambda f: int(re.sub('\D', '', f)))

    for sim_x in sim_folder:
        csv_list = get_jobs(sim_x)
        csv_list.sort(key=lambda f: int(re.sub('\D', '', f)))
        ket = np.random.normal(0.5, 0.05)
        with open(sim_x + r'\ket.txt', 'w') as f:
            print('{}'.format(ket), file=f)

        for csv in csv_list:
            print('Current file: {}'.format(csv))
            # Convert csv to dataframe
            df = pd.read_csv(csv)

            # Parse day and sim
            match = re.search('.+sim_(?P<sim>\d+)_\d(?P<freq>[ab]).d(?P<day>\d)', csv)
            day = int(match.group('day'))
            sim = int(match.group('sim'))
            freq = match.group('freq')

            # Apply theft
            thief = sim%55
            if thief == 0: thief = 55
            thief_column = 'load_{}_power'.format(thief)
            if freq == 'a':
                df[thief_column] = df[thief_column] * ket
            elif freq == 'b':
                df.iloc[11:35,7+thief] = df.iloc[11:35,7+thief] * ket
            
            dest_path = csv.replace('d{}'.format(day), 'd{}_mal'.format(day))
            print(dest_path)
            df.to_csv(dest_path, index=False)