
# 📊 Marketing Performance Analysis using SQL & Power BI

## ⭐ Overview  
This project focuses on analyzing key marketing performance metrics through structured SQL transformations and interactive Power BI dashboards. It covers insights related to customer profiles, content engagement, product segmentation, campaign performance, and journey behavior.

---

## 🧩 Data Sources  
The analysis is based on multiple datasets reflecting core marketing entities:
- `customers.csv`
- `geography.csv`
- `products.csv`
- `customer_reviews.csv`
- `engagement_data.csv`
- `customer_journey.csv`

These were transformed and queried using SQL before being visualized in Power BI.

---

## 🧠 STAR Format Summary

### 🔹 Situation  
Marketing teams often deal with large volumes of data across various dimensions — customer behavior, campaign engagement, and product feedback. Analyzing this data efficiently is critical for making informed decisions.

### 🔹 Task  
Develop an end-to-end solution that:
- Cleans and transforms multi-source marketing data using SQL  
- Generates insights into customer demographics, content types, sentiment, and campaign performance  
- Visualizes key KPIs across different stages of the customer journey

### 🔹 Action  
- Wrote modular SQL queries to join and analyze datasets  
- Created derived fields such as sentiment category and price segmentation using conditional logic  
- Cleaned engagement and journey data using parsing functions and de-duplication  
- Designed 4 Power BI dashboards to communicate business insights effectively

### 🔹 Result  
Delivered a marketing analysis report that provides:
- Customer and product segmentation views  
- Campaign and content engagement breakdowns  
- Conversion funnel insights  
- Visual trends and summary metrics to aid marketing decisions

---

## 🗂️ Project Structure

\`\`\`bash
Marketing-Analysis-Project/
│
├── data/                        # Raw data files (CSV)
│   ├── customers.csv
│   ├── geography.csv
│   ├── products.csv
│   ├── customer_reviews.csv
│   └── engagement_data.csv
│
├── queries/
│   └── marketing_analysis_queries.sql   # All SQL scripts
│
├── dashboard_screenshots/
│   ├── customer_profile.png
│   ├── product_segmentation.png
│   ├── campaign_performance.png
│   └── funnel_analysis.png
│
└── README.md
\`\`\`

---

## 📌 Highlights
- SQL joins, subqueries, case statements, window functions, and data parsing  
- Power BI dashboards for both high-level summaries and deep dives  
- Clear, structured folder organization and project documentation
