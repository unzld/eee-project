import os
from pathlib import Path
import numpy
import re

def get_jobs(filepath):
    '''
    Returns a list of log file paths (STR) to be processed next.
    '''
    files_actual = []

    for root, dirs, files in os.walk(filepath):
        for file in files:
            #append the file name to the list
            if(file.endswith(".csv")) and ("LVTest_Mon_cm_" not in file):
                files_actual.append(os.path.join(root,file))
    
    return files_actual

filepath = r"opendss\LVTestCase\simulations_all"
dest = r"opendss\LVTestCase\dataset_output_kel"
numpy.random.seed(666)
# Get list of sim_X folders
for dataset_folder in os.scandir(filepath):
    if dataset_folder.is_dir():
        current_dataset = dataset_folder.path.split('_')[2]
        print("Currently in dataset {0}".format(current_dataset))
        
        sim_subfolders = []

        for f in os.scandir(dataset_folder.path):
            sim_word = f.path.split("\\")[-1].split("_")[0]
            if f.is_dir() and 'sim' in sim_word:
                sim_subfolders.append(f.path)

        d1 = range(1,49)
        d2 = range(49,97)
        d3 = range(97,145)
        d4 = range(145,193)
        d5 = range(193,241)
        d6 = range(241,289)
        d7 = range(289,337)
        days = ['d1', 'd2', 'd3', 'd4', 'd5', 'd6', 'd7']

        sim_subfolders.sort(key=lambda f: int(re.sub('\D', '', f)))

        freq1_count = 0
        # Iterate through each sim subfolder
        for sim in sim_subfolders:
            ket = numpy.random.normal(0.5, 0.05)
            thief = int(sim.split('\\')[4].split('_')[1])%55
            freq = 1
            if freq1_count >= 55: freq = 2
            if thief == 0: thief = 55
            print("Currently in {0}, thief: {1}, freq: {2}".format(sim, thief, freq))
            
            dataset_index = current_dataset + chr(freq + 96)

            # Create subfolders for individual days
            for day in days:
                benign_folder = dest + "\{0}\{1}_{2}".format(sim.split('\\')[3], sim.split('\\')[4], dataset_index)
                Path(benign_folder + r"\{0}".format(day)).mkdir(parents=True, exist_ok=True)
                
            # Iterate through each .csv in the current sim folder
            queue = get_jobs(sim)
            queue.sort(key=lambda f: int(re.sub('\D', '', f)))
            for file in queue:
                filename = file.split('\\')[-1]
                with open(file, 'r') as f:
                    data = []
                    mal = []
                    day = ''
                    for i, line in enumerate(f):
                        line_values = line.split(',')
                        if i == 0: continue
                        if "power" in filename:
                            value = float(line_values[2]) + float(line_values[4]) + float(line_values[-2])
                            data.append(value)

                            current_load = [int(s) for s in re.findall(r'\d+', filename.split('_')[3])]

                            if thief == current_load[0]:
                                if freq == 1:
                                    mal.append(value*ket)
                                elif freq == 2:
                                    if i%48 in range(13, 37):
                                        mal.append(value*ket)
                                    else:
                                        mal.append(value)
                                else:
                                    print('ERROR wrong freq')
                        elif "voltage" in filename:
                            data.append(float(line_values[2]))
                        elif '_actual' in filename:
                            data.append(float(line_values[0]))
                        else: print("ERROR csv type")
                    
                        if i in d1:
                            day = days[0]
                        elif i in d2:
                            day = days[1]
                        elif i in d3:
                            day = days[2]
                        elif i in d4:
                            day = days[3]
                        elif i in d5:
                            day = days[4]
                        elif i in d6:
                            day = days[5]
                        elif i in d7:
                            day = days[6]
                        else: print("ERROR not in day range")

                        filename_new = filename
                        if 'LVTest' in filename:
                            filename_new = filename.replace('LVTest_Mon_m_','')

                        if len(data) == 48:
                            with open(benign_folder + r"\{}\\".format(day) + filename_new, 'w') as f2:
                                print(*data, sep="\n", file=f2)
                            data = []
                            
                        if len(mal) == 48:
                            rem_csv = filename_new.split('.')[0]
                            with open(benign_folder + r"\{}\\".format(day) + rem_csv + r"_malicious_{:.4f}.csv".format(ket), 'w') as f2:
                                print(*mal, sep="\n", file=f2)
                            mal = []
            
            freq1_count = freq1_count + 1