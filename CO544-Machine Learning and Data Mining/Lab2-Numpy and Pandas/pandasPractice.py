#loading csv file

import pandas as pd
from pandas.plotting import scatter_matrix

df = pd.read_csv('lab02Exercise01.csv', names=['chanel1', 'chanel2', 'chanel3', 'chanel4', 'chanel5'])

def f(row):
    if ((row['chanel1'] + row['chanel4'])/2) < ((row['chanel2'] + row['chanel3'] + row['chanel4'])/3):
        val = 1
    else:
        val = 0
    return val


df['class'] = df.apply(f, axis=1)
print(df)
