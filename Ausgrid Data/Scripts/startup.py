''' 
    Generates the random Loads, PV, and NM files
'''
from os import dup2
import sim_util

working_path = r"C:\Users\zildj\Desktop\190\repo\opendss\LVTestCase"

# For generating new combinations, uncomment these
""" sim_util.gen_bus_combi(working_path, 161, 440)
sim_util.gen_loads(working_path)
sim_util.gen_pv_combi(working_path, 0.7, 0.2)
sim_util.gen_pv(working_path) 
sim_util.pv_nm_combi(working_path, 0.7, 0.2)"""

# Get 55 random loads from 161 (Ausgrid)
sim_util.gen_bus_combi(working_path, 161, 770)

# Make loads.txt for every simulation
sim_util.gen_loads(working_path)

# Get random PV for those with PV penetration
sim_util.gen_pv_combi(working_path, 0.7, 0.2)

# Get random NM for those with PV and NM penetration
sim_util.gen_nm_combi(working_path, 0.7, 0.2)

# Make PV.txt for every simulation
sim_util.gen_pv(working_path)
