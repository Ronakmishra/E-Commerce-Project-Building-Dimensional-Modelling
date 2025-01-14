# E-Commerce Project - Building Dimensional Modelling

## Overview

This project focuses on implementing a dimensional model for an e-commerce dataset using the **Instacart Market Basket Analysis dataset**. It involves creating Snowflake tables, implementing ETL processes, designing fact and dimension tables, and performing analytical queries for actionable insights.

---

## Key Features

- **Dimensional Modeling**: Created a star schema with one fact table and multiple dimension tables.
- **ETL Processing**: Loaded data from an S3 bucket into Snowflake using SQL and Snowflake stages.
- **Data Analysis**: Conducted insightful queries to understand product trends, user behavior, and reorder patterns.

---

## Data Model

The project follows a star schema, with a central fact table (`fact_order_products`) surrounded by dimension tables. Below is the data model:

![Fact-Dimension Table](fact_dimension_flowchart.png)

---

## Workflow

### Step 1: Data Source

- Dataset:
  - [Kaggle - Instacart Market Basket Analysis](https://www.kaggle.com/competitions/instacart-market-basket-analysis/data)
  - [Google Drive - Instacart Dataset](https://drive.google.com/drive/folders/1XJluibMqtv5Ulw3R7nSqQWXi5e6s5FUQ)
- Uploaded to an Amazon S3 bucket in the `instacart` folder.

### Step 2: Snowflake Setup

- Created a Snowflake schema named `instacart`.
- Configured an IAM role for Snowflake to access the S3 bucket.

### Step 3: Data Loading and Table Creation

- Raw data was loaded into staging tables in Snowflake.
- Created fact and dimension tables using SQL scripts.

### Step 4: Analysis

- Wrote analytical queries to:
  - Identify top-performing products and aisles.
  - Analyze user reorder trends.
  - Calculate average cart sizes and more.

---

## Directory Structure

```plaintext
e-commerce-project/
├── sql/
│   ├── 01_create_stage.sql          # Stage creation script
│   ├── 02_create_file_formats.sql   # File format definition
│   ├── 03_create_tables.sql         # Raw table creation
│   ├── 04_load_data.sql             # Data loading scripts
│   ├── 05_create_dimensions.sql     # Dimension table creation
│   ├── 06_create_fact_table.sql     # Fact table creation
│   ├── 07_analytics_queries.sql     # Analytical queries
│
├── README.md                        # Project documentation
├── fact_dimension_flowchart.png     # Fact-dimension table diagram
└── LICENSE                          # License file
```
