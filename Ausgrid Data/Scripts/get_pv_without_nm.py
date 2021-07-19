''' 
    Implementation of Net metering scheme. Alters the PV profile of customers depending on their load. If PV > Load, set value to Load
'''
import pandas as pd
import numpy as np

for i in range(161):
    gen_path = r"C:\Users\zildj\Desktop\190\repo\opendss\LVTestCase\data\1week_30min_gen\gen_profile_{0}.csv".format(i+1)
    load_path = r"C:\Users\zildj\Desktop\190\repo\opendss\LVTestCase\data\1week_30min_profiles\load_profile_{0}.csv".format(i+1)

    # Load generator profile
    df_gen = pd.read_csv(gen_path, names=["values"], na_filter=False, dtype={'values': str})

    # Load consumption profile
    df_load = pd.read_csv(load_path, names=["values"], na_filter=False, dtype={'values': str})

    # If generator value is greater than consumption, set value to consumption
    df_gen['altered'] = np.where(df_gen['values'] > df_load['values'], df_load['values'], df_gen['values'])

    ''' with pd.option_context('display.max_rows', None, 'display.max_columns', None):  # more options can be specified also
        print(df_gen) '''

    # Save new values to .csv
    df_gen.to_csv(r"C:\Users\zildj\Desktop\190\repo\opendss\LVTestCase\data\1week_30min_gen_wonm\gen_wonm_profile_{0}.csv".format(i+1), header=False, index=False, columns=['altered'])