import pandas as pd
import warnings
warnings.filterwarnings("ignore")

# Task1
# Loading the data from the 'noc_region.csv' file
def read_data_from_csv():
    # Read the Olympic dataset along with National Olympic Committee (NOC) region information from the 'noc_region.csv' file
    df = pd.read_csv('noc_region.csv')
    return df

# Task 2: Renaming the Columns and Removing Unnecessary Columns
def data_cleaning():
    # Read data from a CSV file using the 'read_data_from_csv()' function
    data = read_data_from_csv()

    # Create a copy of the data to work with
    df = data.copy()

    # Define columns to remove (in this case, 'notes' column)
    columns_to_remove = ['notes']

    # Drop the specified columns from the dataframe
    df = df.drop(columns_to_remove, axis=1)

    # Define new column names for renaming (change 'noc_region' to 'NOC' and 'reg' to 'region')
    new_column_names = {'noc_region': 'NOC', 'reg': 'region'}
    
    # Rename columns using the new column names
    df = df.rename(columns=new_column_names)
    
    # Save the cleaned dataset to a new CSV file named 'olympics_history_noc_regions_cleaned.csv'
    df.to_csv('olympics_history_noc_regions_cleaned.csv', index=False)

    # Return the cleaned dataset
    return df

# Do not Delete the Following function
def task_runner():
    # Execute the data cleaning process and save the cleaned dataset
    data_cleaning()
