import pandas as pd
import numpy as np

def processData(readPath, savePath):
    
    #read file data as string
    df = pd.read_csv(readPath, dtype=str)
    
    #drop empty or null name
    df['name'].replace('', np.nan, inplace=True)
    df.dropna(subset=['name'], inplace=True)
    
    #Remove any zeros prepended to the price field
    df['price'] = df['price'].str.lstrip('0')
    
    #split name and remove title/suffix
    first_name = []
    last_name = []
    for full_name in df['name'].values:
        full_split = full_name.split()
        for split_str in full_split:
            if not (split_str.isalpha() and split_str[1:].islower()):
                full_split.remove(split_str)
        last_name.append(full_split[-1])
        first_name.append(full_split[0])
        
    #convert price to float for comparsion 
    price = df['price'].astype(float)
    
    #save to csv based on format given and compare price
    df = pd.DataFrame({'first_name': first_name,
                       'last_name': last_name,
                       'price': price,
                       'above_100': (price >100)})    
    df.to_csv(savePath, index=False)
    
    
if __name__ == '__main__':
    processData('dataset1.csv', 'dataset1_cleaned.csv')
    processData('dataset2.csv', 'dataset2_cleaned.csv')