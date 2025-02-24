# SQL
Shows SQL queries
# Swiggy Restaurant Data Cleaning

This repository contains an SQL script to clean and process restaurant data from the Swiggy dataset.

## 🗂 SQL Cleaning Steps
1. **Extract `restaurant_id`** from the `link` column.
2. **Create `rest_1` Table** → Stores restaurant details with extracted ID.
3. **Create `rest_2` Table** → Cleans the `name` column.
4. **Create `rest_3` Table** → Cleans the `city` & `cuisine` columns.
5. **Create `clean` Table** → Removes invalid cuisines.
6. **Drop intermediate tables** (`rest_1`, `rest_2`, `rest_3`).

## 📂 Files in This Repo
| File | Description |
|------|------------|
| `restaurant_data_cleaning.sql` | SQL script for data cleaning |
| `dataset.csv` (optional) | Sample restaurant dataset |

## 🛠 Usage
To run this SQL script in MySQL Workbench:
1. Open MySQL Workbench and select the database (`USE swiggy;`).
2. Copy-paste `restaurant_data_cleaning.sql` into a new query tab.
3. Run the script (`CTRL + ENTER`).

---
