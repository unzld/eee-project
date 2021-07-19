''' 
    Iterative OpenDSS simulation for the whole dataset through COM.
'''
import win32com.client
import os
import shutil

working_path = r"C:\Users\zildj\Desktop\190\repo\opendss\LVTestCase"

dssObj = win32com.client.Dispatch("OpenDSSEngine.DSS")
dssText = dssObj.Text
dssCircuit = dssObj.ActiveCircuit
dssSolution = dssCircuit.Solution
dssElem = dssCircuit.ActiveCktElement
dssBus = dssCircuit.ActiveBus

# Iterate through buscombi
with open(working_path + r"\data\buscombi.csv", "r") as f1,\
     open(working_path + r"\data\pvcombi.csv", "r") as f2,\
     open(working_path + r"\data\nmcombi.csv", "r") as f3:

    d1 = range(0,110)
    d2 = range(110,220)
    d3 = range(220,330)
    d4 = range(330,440)
    d5 = range(440,550)
    d6 = range(550,660)
    d7 = range(660,770)

    for line_id, (line1, line2, line3) in enumerate(zip(f1, f2, f3)):
        bus_combi = line1.strip("\n").split(",")
        pv_combi = line2.strip("\n").split(",")
        nm_combi = line3.strip("\n").split(",")

        x = 0
        if line_id in d1: x = 1
        elif line_id in d2: x = 2
        elif line_id in d3: x = 3
        elif line_id in d4: x = 4
        elif line_id in d5: x = 5
        elif line_id in d6: x = 6
        elif line_id in d7: x = 7

        # Reset DSS
        dssObj.ClearAll()
        
        # Compile DSS file
        dssText.Command = "compile '{0}'".format(working_path + r'\time_series_python.dss')

        # Add PV and NM load shapes
        dssText.Command = r"Redirect '.\data\PV_LoadShapes_1week.txt'"
        dssText.Command = r"Redirect '.\data\NM_LoadShapes_1week.txt'"

        # Add load definitions
        dssText.Command = r"Redirect '.\data\Loads\Loads_{0}.txt'".format(line_id+1)

        # Add PV definitions
        if line2 != "n/a\n":
            dssText.Command = r"Redirect '.\data\PV\PV_{0}.txt'".format(line_id+1)

        # Add meter monitors
        dssText.Command = r"Redirect '.\data\NewMonitors.txt'"

        # Extra stuff
        dssText.Command = r"Set voltagebases=[11  .416]"
        dssText.Command = r"Calcvoltagebases"

        dssText.Command = r"buscoords '.\data\buscoords.txt'"
        dssSolution.Solve()

        dssText.Command = r"Set mode=yearly number=336 stepsize=30m"
        dssText.Command = r"Set Year=1"

        # Solve the circuit
        dssSolution.Solve()

        # Export monitor data
        dssText.Command = r"Redirect '.\data\Export.txt'"

        # Close demand interval files
        dssText.Command = "closedi"

        # Move simulation results to own folder
        files = os.listdir(working_path)
        path = r"\simulations_all\dataset_{1}\sim_{0}".format(line_id+1, x)
        dest = working_path + path
        os.makedirs(dest, exist_ok=True)
        for f in files:
            if f.startswith("LVTest_Mon"):
                shutil.move(os.path.join(working_path, f), os.path.join(dest, f))

        with open(dest + "\info.txt", "w") as f:
            print("Loads:", file=f)
            print(*bus_combi, sep=",", file=f)
            print("PV Generators:", file=f)
            print(*pv_combi, sep=",", file=f)
            print("Net metering:", file=f)
            print(*nm_combi, sep=",", file=f)
        
        if line2 != "n/a\n":
            print("Simulation with PV/NM {0}.. Finished!".format(line_id+1))
        else:
            print("Simulation {0}.. Finished!".format(line_id+1))
            
    print("Done.")
