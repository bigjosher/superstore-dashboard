import pandas as pd
# csv file in the folder has already been cleaned- skip this step
# Load raw file (change path to your file)
df = pd.read_csv("Sample - Superstore.csv", encoding='latin1')

# Drop any unnamed/index column
df = df.loc[:, ~df.columns.str.contains('^Unnamed|Row ID', case=False)]

# Save cleaned version
df.to_csv("cleaned_superstore.csv", index=False, encoding='utf-8')
print("✅ CSV cleaned and saved as UTF-8.")
