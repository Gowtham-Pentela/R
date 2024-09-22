# Diamonds Data Analysis

## Description

This R script performs data cleaning, manipulation, and visualization on the **`diamonds`** dataset from the `ggplot2` package. The dataset contains various attributes of diamonds (like `price`, `carat`, `cut`, etc.), and this script showcases how to clean, filter, summarize, and visualize the data. Additionally, it exports the cleaned data and summary statistics into CSV files.

## Requirements

### R Version
- The script requires **R** and works with versions that support the following packages.

### Packages Used

- **tidyverse**: A collection of R packages for data manipulation, visualization, and more.
- **janitor**: Used for cleaning and standardizing column names in the dataset.

If any of the required packages are not installed, the script will install them automatically.

## Dataset

- **Dataset used**: `diamonds` from the `ggplot2` package.
- **Columns**: Includes attributes such as `carat`, `cut`, `color`, `clarity`, `depth`, `table`, `price`, and more.
- **Source**: Preloaded with the `ggplot2` package.

## Script Overview

### 1. **Data Cleaning**

- **Duplicate Removal**: Any duplicate rows in the dataset are removed using the `distinct()` function.
- **Column Name Cleaning**: The `clean_names()` function from the `janitor` package is used to standardize column names.
- **Missing Value Check**: The script checks for missing values across the dataset and summarizes their count.

### 2. **Data Manipulation**

- **Filtering**: The dataset is filtered to include only diamonds priced above $5,000.
- **Grouping and Summarization**: The diamonds are grouped by the `cut` variable, and the script calculates:
  - Average price of diamonds per cut.
  - Total carat weight per cut.

### 3. **Data Visualization**

The script generates the following visualizations:
- **Bar Plot**: Total carat weight per diamond cut.
- **Scatter Plot**: Price vs. carat for diamonds priced over $5,000.
- **Histogram**: Distribution of diamond prices for diamonds priced over $5,000.

### 4. **Data Export**

- **Cleaned Data**: The cleaned and processed dataset is saved as `cleaned_diamonds.csv`.
- **Summary Data**: Summary statistics (average price and total carat per cut) are saved as `summary_price_by_cut.csv`.

## Instructions for Use

1. **Run the Script**:
   - Open the R console or RStudio.
   - Ensure the necessary packages are installed (`tidyverse`, `janitor`).
   - Run the script provided.

2. **View Output**:
   - Cleaned and summarized data will be saved in the working directory as CSV files (`cleaned_diamonds.csv` and `summary_price_by_cut.csv`).
   - Visualizations will be displayed in the R plotting window.

3. **Modify the Script**:
   - You can adjust filtering conditions (e.g., changing the price threshold) or modify the grouping for different summary statistics.

## Files Generated

- **cleaned_diamonds.csv**: The cleaned version of the diamonds dataset.
- **summary_price_by_cut.csv**: Summary statistics for diamond prices and total carat grouped by the `cut`.

## Example Output

1. **Bar Plot**: Total Carat Weight per Cut
2. **Scatter Plot**: Price vs. Carat for Diamonds Priced Over $5,000
3. **Histogram**: Distribution of Diamond Prices

---

This README provides an overview of the steps involved in data cleaning, manipulation, visualization, and file export for the `diamonds` dataset.