# Cleaning Loan Informative Data with SQL

## Project Description

This project focuses on cleaning and transforming a loan dataset using SQL to improve data quality for analysis. The aim is to prepare the data for meaningful insights into loan trends and customer behaviors. By addressing issues like missing values, duplicates, and inconsistent formats, the project ensures that the dataset is ready for further analysis in the banking and finance domain.

## Dataset

The dataset used in this project was sourced from Kaggle. It contains various attributes related to customer loans, such as loan amount, customer income, loan status, and more.

**Dataset link:** [Auto Loan Default Prediction Dataset on Kaggle](https://www.kaggle.com/datasets/nezukokamaado/auto-loan-dataset)

## Data Cleaning Methods

1. **Removing Duplicates (Deduplication):**  
   The process of identifying and eliminating duplicate records from the dataset to ensure that each entry is unique. This prevents skewed analysis due to repeated data points.

2. **Formatting Verification Status (Data Normalization):**  
   Normalizing data by adjusting values to follow a standard format or convention. For example, ensuring consistent entries for the `verification_status` field.

3. **Consistency Checks:**  
   Ensuring that categorical values, such as `emp_title`, `verification_status`, and `home_ownership`, are consistent by removing extra spaces, fixing case variations, and correcting typos.

4. **Cross-Field Validation:**  
   Verifying logical relationships between fields, such as ensuring that a loan marked as "Fully Paid" corresponds to a valid `last_payment_date`.

5. **Rounding to Decimal Places (Data Rounding):**  
   Rounding numeric fields like loan amounts to a specified number of decimal places to ensure uniformity in the dataset.

6. **Trimming White Spaces (Whitespace Removal):**  
   Eliminating unnecessary spaces from strings to ensure clean data entries and accurate filtering or comparisons.

7. **Replacing Null Values (Imputation):**  
   Handling missing data by imputing null values with specific entries, such as filling in `employment_status` with "Unemployed," to make the dataset complete for analysis.

## Files in This Repository

1. **cleaning-loan-informative-data-w-sql.sql**  
   This SQL file contains the scripts used to clean and preprocess the financial loan dataset. The scripts cover various data cleaning techniques such as removing duplicates, normalizing data formats, validating field consistency, and handling missing values.

2. **financial_loan.csv**  
   This is the dataset used in the project. It contains various loan-related attributes such as loan amounts, customer income, loan status, employment titles, and more. The dataset was sourced from Kaggle and has been cleaned and prepared for analysis through the SQL scripts in this repository.
