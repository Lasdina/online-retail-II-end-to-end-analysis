# online-retail-II--end-to-end-analysis
End-to-end B2B data analysis: Transforming flat-file retail transactions into relational database insights using SQL, Python (Pandas), and Tableau
1. Business Understanding & Context
Background: The company is a global wholesale (B2B) distributor specializing in unique giftware products.

Problem Statement:

Data Inefficiency: Raw data was stored in a single large flat-file, leading to data redundancy and sluggish query performance for large-scale analytics.

Data Integrity: Presence of missing values and pricing anomalies that could lead to skewed business insights.

Project Objectives:

Design and implement a Relational Database Schema (Fact & Dimension tables) for optimized data structuring.

Execute rigorous Data Cleaning to ensure the analysis is based solely on valid transactions.

Perform Customer Segmentation using the RFM (Recency, Frequency, Monetary) model to map retail store loyalty.

2. Data Understanding (Snapshot 2010-2011)
Data Source: UCI Machine Learning Repository.

Timeframe: December 1, 2010 – December 9, 2011.

Dataset Characteristics: ~541,000 rows of retail transactional data.

3. Data Cleaning & Optimization Strategy
Handling Missing Values & Duplicates: Removed rows with null Customer ID and eliminated duplicate records. Analysis revealed that missing price data could not be accurately recovered through feature relationships, necessitating removal.

Transaction Filtering: Focused on standard transactions by excluding "C" (Canceled) codes to reflect actual sales performance and prevent overstated revenue metrics.

Performance Optimization: Leveraged Google Colab to bypass local hardware (RAM/CPU) limitations when processing the high-volume dataset.

4. Data Modeling (Python Implementation)
Transformed the flat-file into a relational schema to enhance visualization efficiency in Tableau:

Dim_Customer: Contains unique Customer IDs and Country data.

Dim_Product: Stores StockCode, Description, and the latest Unit_Price.

Fact_Sales: The central transactional table linking products and customers via Invoice, Quantity, Total_Amount, and InvoiceDate.

5. Exploratory Data Analysis & Segmentation
RFM Analysis (Python):

Recency: Calculated days since the last transaction per store.

Frequency: Quantified the number of unique orders per year.

Monetary: Aggregated the total expenditure per customer.

Market Intelligence: Identified non-UK regions with the most stable wholesale order frequencies.

6. Dashboard Visualization (Tableau)
Connected the relational tables (Fact_Sales, Dim_Product, Dim_Customer) to visualize:

Net Sales Performance: Monthly revenue trends derived from cleaned transactional data.

Top 10 High-Value Customers: Ranking customers with the highest monetary contributions.

Geographic Distribution: Mapping the global footprint of the customer base.

7. Strategic Recommendations
Marketing: Implement tailored loyalty programs for the "Champions" segment identified through RFM analysis.

Inventory Management: Prioritize stock availability for products falling within the "Top 20% Pareto" category to ensure consistent wholesale fulfillment.
