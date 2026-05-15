# olist_data_analysis
Project Overview This project provides a comprehensive end-to-end analysis of the Olist Store dataset, a large Brazilian e-commerce marketplace. The goal was to transform raw, fragmented data into actionable business insights regarding customer behavior, seller performance, and logistics optimization

🛒 Olist E-Commerce: End-to-End Analytics Pipeline
Python ETL | MySQL Analytics | Business Intelligence
📌 Project Overview
This project demonstrates a full-cycle data analytics workflow using the Olist Brazilian E-Commerce dataset. The goal was to transform 100k+ rows of raw, fragmented data into a structured relational database and extract high-level business insights regarding marketplace growth and logistics efficiency.

🛠️ Tech Stack
Language: Python 3.10+

Data Manipulation: Pandas, NumPy

Database: MySQL (Relational Schema)

Database Connector: SQLAlchemy, PyMySQL

Analysis: Advanced SQL (CTEs, Window Functions)

🚀 Workflow & Implementation
1. Data ETL & Cleaning (Python)
The project began by loading 9 interconnected CSV files. Using Pandas, I performed:

Relational Mapping: Merged orders, items, products, and translation tables to create a unified analytical view.

Data Sanitization: Handled missing values in product dimensions and converted timestamps into proper datetime objects.

Translation: Mapped Portuguese category names to English for standardized reporting.

2. Database Engineering (MySQL)
The cleaned data was programmatically pushed to a MySQL instance.

Architecture: Optimized the schema for analytical queries.

Connectivity: Established a secure pipeline using SQLAlchemy to bridge the gap between Python's processing power and MySQL's storage efficiency.

3. Advanced SQL Analytics
I leveraged advanced SQL techniques to answer critical business questions:

Month-over-Month (MoM) Growth: Used LAG() window functions to track revenue trends.

Logistics Profitability: Calculated the Freight-to-Price Ratio to identify categories where shipping costs diminish margins.

Marketplace Health: Analyzed average order values (AOV) across 70+ product categories.

📊 Key Business Insights
Logistics Bottlenecks: Identified that bulky categories (like Furniture) carry a freight ratio of 20%+, indicating a need for regional fulfillment centers.

Top Performers: The "Health & Beauty" and "Watches" categories consistently drive the highest total revenue.

Growth Trends: Identified seasonal peaks and quantified the percentage growth impact during holiday periods.
