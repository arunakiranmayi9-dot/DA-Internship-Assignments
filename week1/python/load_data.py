import pandas as pd
from sqlalchemy import create_engine

# Read CSV
df = pd.read_csv(
    r"C:/Users/PC/Downloads/week 1 DA internship/Dataset/Sample - Superstore.csv",
    encoding="latin1"
)

# Connect to SQLite
engine = create_engine("sqlite:///sql/sales.db")

# Load data into SQLite
df.to_sql("superstore", con=engine, if_exists="replace", index=False)

print("Data imported successfully!")