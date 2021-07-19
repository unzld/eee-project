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
for x in range(3):
    for i in range(110):
        if x==1: i=i+110
        if x==2: i=i+220
        # Reset DSS
        dssObj.ClearAll()
        
        # Compile DSS file
        dssText.Command = "compile '{0}'".format(working_path + r'\time_series_python.dss')

        # Add PV and NM load shapes
        dssText.Command = r"Redirect '.\data\PV_LoadShapes_1week.txt'"
        dssText.Command = r"Redirect '.\data\NM_LoadShapes_1week.txt'"

        # Add load definitions
        dssText.Command = r"Redirect '.\data\SpecialAC\Loads_770.txt'"

        # Add PV definitions
        if x==1:
            dssText.Command = r"Redirect '.\data\SpecialAC\PV_770.txt'"
        elif x==2:
            dssText.Command = r"Redirect '.\data\SpecialAC\NM_770.txt'"

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
        path = r"\simulations_special_AC\dataset_{1}\sim_{0}".format(i+1, x+1)
        dest = working_path + path
        os.makedirs(dest, exist_ok=True)
        for f in files:
            if f.startswith("LVTest_Mon"):
                shutil.move(os.path.join(working_path, f), os.path.join(dest, f))
        
        print("Simulation {0}.. Finished!".format(i+1))
            
    print("Done.")
