# R Projects Repository

## Overview

This repository contains two R projects that demonstrate different aspects of data analysis, manipulation, and visualization in R. These projects explore different datasets and techniques, providing insights into association rule mining and exploratory data analysis.

## Contents

### 1. **[Apriori Algorithm on Groceries Dataset](./apriori-groceries/)**  
   This project implements the **Apriori algorithm** to mine frequent itemsets and discover association rules from the Groceries dataset. The goal is to identify relationships between items frequently purchased together.  
   - **Key Features**: Data preprocessing, frequent itemset mining, association rules, rule visualization.
   - **Tech Stack**: `arules`, `arulesViz`.

### 2. **[Diamonds Data Analysis](./diamonds-data-analysis/)**  
   This project involves a comprehensive analysis of the `diamonds` dataset, using R’s data manipulation, visualization, and statistical functions. The analysis includes data cleaning, summary statistics, and visualizations like bar plots, scatter plots, and histograms.  
   - **Key Features**: Data cleaning, summary statistics, visualization (bar plots, scatter plots, histograms).
   - **Tech Stack**: `ggplot2`, `dplyr`, `tidyverse`, `janitor`.

## Prerequisites

To run these projects, ensure that you have the following installed:

1. **R**: Version 3.6 or higher.
2. **RStudio**: Optional, but recommended for an IDE.
3. **Required Packages**:
   - `arules`
   - `arulesViz`
   - `tidyverse`
   - `ggplot2`
   - `dplyr`
   - `janitor`

You can install all required packages using:

```r
install.packages(c("arules", "arulesViz", "tidyverse", "ggplot2", "dplyr", "janitor"))
```

## Project Details

### 1. **Apriori Algorithm on Groceries Dataset**
   - **Dataset**: `Groceries` from the `arules` package.
   - **Objective**: To find frequent itemsets and association rules.
   - **Visualizations**: Graphical representations of association rules.
   - **Files**:
     - `apriori_groceries.R`: R script implementing the Apriori algorithm and visualizing the rules.

### 2. **Diamonds Data Analysis**
   - **Dataset**: `diamonds` from the `ggplot2` package.
   - **Objective**: To perform an exploratory data analysis (EDA) and visualize relationships between different diamond characteristics.
   - **Visualizations**: Bar plots (total carat per cut), scatter plots (price vs. carat), and histograms (price distribution).
   - **Files**:
     - `diamonds_analysis.R`: R script for data cleaning, manipulation, and visualization of the `diamonds` dataset.

## How to Run

1. **Clone the repository**:

   ```bash
   git clone https://github.com/your-username/r-projects.git
   ```

2. **Navigate to a project folder**:

   ```bash
   cd r-projects/<project-folder-name>
   ```

3. **Open the R Project**:
   Open the `.Rproj` file in RStudio or run the R script (`.R`) files in the console.

## Contribution

Contributions are welcome! You can fork the repository, make your changes, and submit a pull request with the updated project or new features.

## License

This repository is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more details.

---

This README provides an overview of your current projects and gives clear instructions on how to run them. Feel free to adjust any sections or add more details as your repository grows.
