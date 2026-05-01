# online-retail-II--end-to-end-analysis
End-to-end B2B data analysis: Transforming flat-file retail transactions into relational database insights using SQL, Python (Pandas), and Tableau
# A. Business Understanding & Context

Background: The company is a global wholesale (B2B) distributor specializing in unique giftware products.

**Problem Statement:**

1.Data Inefficiency: Raw data was stored in a single large flat-file, leading to data redundancy and sluggish query performance for large-scale analytics.

2.Data Integrity: Presence of missing values and pricing anomalies that could lead to skewed business insights.

**Project Objectives:**

1.Design and implement a Relational Database Schema (Fact & Dimension tables) for optimized data structuring.

2.Execute rigorous Data Cleaning to ensure the analysis is based solely on valid transactions.

3.Perform Customer Segmentation using the RFM (Recency, Frequency, Monetary) model to map retail store loyalty.

# B. Data Understanding (Snapshot 2010-2011)
1.Data Source: UCI Machine Learning Repository.

2.Timeframe: December 1, 2010 – December 9, 2011.

3.Dataset Characteristics: ~541,000 rows of retail transactional data.

# C. Data Cleaning & Optimization Strategy
1.Handling Missing Values & Duplicates: Removed rows with null Customer ID and eliminated duplicate records. Analysis revealed that missing price data could not be accurately recovered through feature relationships, necessitating removal.

2.Transaction Filtering: Focused on standard transactions by excluding "C" (Canceled) codes to reflect actual sales performance and prevent overstated revenue metrics.

3.Performance Optimization: Leveraged Google Colab to bypass local hardware (RAM/CPU) limitations when processing the high-volume dataset.

# D. Data Modeling (Python Implementation)
Transformed the flat-file into a relational schema to enhance visualization efficiency in Tableau:

1.Dim_Customer: Contains unique Customer IDs and Country data.

2.Dim_Product: Stores StockCode, Description, and the latest Unit_Price.

3.Fact_Sales: The central transactional table linking products and customers via Invoice, Quantity, Total_Amount, and InvoiceDate.

# E. Exploratory Data Analysis & Segmentation
**RFM Analysis (Python):**

1.Recency: Calculated days since the last transaction per store.

2.Frequency: Quantified the number of unique orders per year.

3.Monetary: Aggregated the total expenditure per customer.

**Market Intelligence: Identified non-UK regions with the most stable wholesale order frequencies.**

# F. Dashboard Visualization (Tableau)
Connected the relational tables (Fact_Sales, Dim_Product, Dim_Customer) to visualize:

1.Net Sales Performance: Monthly revenue trends derived from cleaned transactional data.

2.Top 10 High-Value Customers: Ranking customers with the highest monetary contributions.

3.Geographic Distribution: Mapping the global footprint of the customer base.

# G. Strategic Recommendations
1.Marketing: Implement tailored loyalty programs for the "Champions" segment identified through RFM analysis.

2.Inventory Management: Prioritize stock availability for products falling within the "Top 20% Pareto" category to ensure consistent wholesale fulfillment.
