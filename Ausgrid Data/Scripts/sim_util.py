''' 
    Functions for creating a new randomized dataset.
'''
import random

# Read bus information from file
def load_bus_info():
    load_buses = []
    with open("loadbuses.txt", "r") as f:
        for line in f:
            load_buses.append(line.strip('\n'))
    
    return load_buses

# Generates bus combination, saves it to .csv
def gen_bus_combi(working_path, number, simulation_number):
    # number is 161 by default
    # simulation_number is 440 by default
    original_list = range(1,number+1)
    with open(working_path + r"\data\buscombi.csv", "w") as f:
        for itr in range(simulation_number):
            print(*random.sample(original_list, 55), sep=",", file=f)

# Generates Loads.txt for each run combination
def gen_loads(working_path):
    load_buses = load_bus_info()
    with open(working_path + r"\data\buscombi.csv", "r") as fp:
        for i, line in enumerate(fp):
            bus_combi = []
            bus_combi = line.strip("\n").split(",")
            
            filename = "\data\loads\Loads_{0}.txt".format(i+1)
            # Create Load.txt
            with open(working_path + filename, "w") as f:
                for id, bus in enumerate(load_buses):
                    print("New Load.LOAD{0} Phases=1 Bus1={1} kV=0.23 kW=1 PF=0.95 Yearly=Shape_{2}".format(id+1, bus, bus_combi[id]), file=f)

# Generates combination of loads with PV, at two penetration levels, and saves it to .csv
def gen_pv_combi(working_path, hi_pen, lo_pen):
    with open(working_path + r"\data\pvcombi.csv", "w") as f,\
         open(working_path + r"\data\buscombi.csv", "r") as fp:
        d1 = range(0,110)
        d2 = range(110,220)
        d3 = range(220,330)
        d4 = range(330,440)
        d5 = range(440,550)
        d6 = range(550,660)
        d7 = range(660,770)
        for line_id, line in enumerate(fp):
            if (line_id in d3) or (line_id in d6) or (line_id in d7):
                # Get current bus combination
                bus_combi = line.strip("\n").split(",")

                # Pick loads with PV from bus combination (70% penetration)
                loads_with_pv = random.sample(bus_combi, int(55*hi_pen))
                print(*loads_with_pv, sep=",", file=f)
            elif (line_id in d2) or (line_id in d4) or (line_id in d5):
                # Get current bus combination
                bus_combi = line.strip("\n").split(",")

                # Pick loads with PV from bus combination (20% penetration)
                loads_with_pv = random.sample(bus_combi, int(55*lo_pen))
                print(*loads_with_pv, sep=",", file=f)
            elif line_id in d1:
                print("n/a", file=f)
            else:
                print("ERROR")

# Generates PV.txt for each run combination
def gen_pv(working_path):
    load_buses = load_bus_info()
    with open(working_path + r"\data\buscombi.csv", "r") as f1,\
         open(working_path + r"\data\pvcombi.csv", "r") as f2,\
         open(working_path + r"\data\nmcombi.csv", "r") as f3:
        for i, (line1, line2, line3) in enumerate(zip(f1, f2, f3)):
            loads = []
            loads = line1.strip("\n").split(",")

            pv = []
            pv = line2.strip("\n").split(",")

            nm = []
            nm = line3.strip("\n").split(",")

            filename = r"\data\PV\PV_{0}.txt".format(i+1)
            if line2 != "n/a\n":
                with open(working_path + filename, "w") as f3:
                    for id, gen in enumerate(pv):
                        idx = loads.index(gen)
                        if gen in nm:
                            print("New generator.m_gen{0} Phases=1 Bus1={1} kV=0.23 kW=1 PF=0.95 Yearly=NM_Shape_{2}".format(idx+1, load_buses[idx], gen), file=f3)
                        else:
                            print("New generator.m_gen{0} Phases=1 Bus1={1} kV=0.23 kW=1 PF=0.95 Yearly=PV_Shape_{2}".format(idx+1, load_buses[idx], gen), file=f3)

def gen_nm_combi(working_path, hi_pen, lo_pen):
    with open(working_path + r"\data\nmcombi.csv", "w") as f,\
         open(working_path + r"\data\pvcombi.csv", "r") as fp:
        for line_id, line in enumerate(fp):
            d1 = range(0,110)
            d2 = range(110,220)
            d3 = range(220,330)
            d4 = range(330,440)
            d5 = range(440,550)
            d6 = range(550,660)
            d7 = range(660,770)
            if (line_id in d5) or (line_id in d7):
                # Get current bus combination
                bus_combi = line.strip("\n").split(",")

                # Pick loads with PV from bus combination (70% penetration)
                loads_with_pv = random.sample(bus_combi, int(len(bus_combi)*hi_pen))
                print(*loads_with_pv, sep=",", file=f)
            elif (line_id in d4) or (line_id in d6):
                # Get current bus combination
                bus_combi = line.strip("\n").split(",")

                # Pick loads with PV from bus combination (20% penetration)
                loads_with_pv = random.sample(bus_combi, int(len(bus_combi)*lo_pen))
                print(*loads_with_pv, sep=",", file=f)
            elif (line_id in d1) or (line_id in d2) or (line_id in d3):
                print("n/a", file=f)
            else:
                print("ERROR")