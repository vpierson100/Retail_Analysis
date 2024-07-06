# Retail Data Preprocessing

This repository contains the preprocessing steps for a retail dataset. The aim is to clean the data by handling missing values and ensuring consistency across different columns.

## Data Preprocessing Steps

### 1. Fill Missing Values

The following steps are taken to handle missing values in the dataset:

- **Year**: Filled with the mode (most frequent value).
- **Total_Purchases**: Filled with the mode.
- **Amount**: Filled with the mean.
- **Total_Amount**: Filled with the mean.
- **Product_Category**: Filled with the mode.
- **Product_Brand**: Rows with missing values are dropped.
- **Feedback**: Filled with the mode.
- **Ratings**: Filled with the mode.
- **Order_Status**: Filled with the value "Delivered".
- **Payment_Method**: Filled with the value "Credit Card".
- **Email**: Filled with the value "Unknown".
- **Name**: Filled with the value "Unknown".
- **Customer_Segment**: Filled with the mode.
- **Income**: Filled with the mode.
- **Zipcode**: Filled with 0.
- **Age**: Filled with the mean.
- **Address**: Filled with the value "Unknown".
- **City**: Filled with the value "Unknown".
- **State**: Filled with the value "Unknown".
- **Gender**: Filled with the value "Unknown".
- **Country**: Filled with the value "Unknown".
- **Month**: Rows with missing values are dropped.
- **Time**: Rows with missing values are dropped.
- **Date**: Standardized format and rows with missing values are dropped.

### 2. Generate Unique Random Phone Numbers

For missing values in the `Phone` column, unique random 10-digit phone numbers are generated and used to fill the missing entries.

