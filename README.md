# Olist E-commerce Business Analytics
### **Transforming Raw Data into Strategic Business Action with Engineering Precision**

## Project Overview
This project provides an end-to-end analytical deep dive into **Olist**, the largest e-commerce marketplace in Brazil (connecting small businesses to major retailers). By analyzing over 100,000 transaction records, this project transforms raw data into actionable business strategies focused on three core pillars: **Customer Retention, Payment Optimization, and Regional Logistics Efficiency.**

---

## Repository Structure
The repository is organized following a systematic analytical pipeline:

* **`01_Data_Preprocessing/`**: Python scripts for data cleaning, temporal calibration, and relational database construction.
* **`02_SQL_Analysis_and_Insights/`**: Advanced SQL queries developed in **DBeaver** for KPI extraction and business metric engineering.
* **`03_Exploratory_Data_Analysis/`**: Diagnostic visualizations using Seaborn and Matplotlib to identify preliminary patterns.
* **`04_Statistical_Modeling/`**: RFM segmentation and hypothesis testing (T-tests) for quantitative validation.
* **`05_PowerBI_Dashboard/`**: Interactive **Power BI** report files and executive dashboard snapshots.
* **`Olist E-commerce Business Analytics Report.pdf`**: Full Executive Report and Presentation.

---

## Data Source
The analysis is based on the Brazilian E-Commerce Public Dataset by Olist available on Kaggle:
[Olist Brazilian E-Commerce Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

**Note:** Due to GitHub's file size limitations, the raw `.csv` files and the generated `olist.db` (SQLite) are not included in this repository. 

**To replicate the database:**
1. Download the dataset from Kaggle and place it in a `/dataset` folder.
2. Run the notebook in `01_Data_Preprocessing/01_Exploration_and_Cleaning.ipynb` to automatically generate the `olist.db` file.

---

## Technical Methodology

### **Stage 1: Data Preprocessing & Calibration**
* **Data Cleaning:** Addressed missing values, standardized timestamps into `datetime` objects, and translated product categories from Portuguese to English.
* **Database Ingestion:** Engineered a centralized **SQLite Database (`olist.db`)** to serve as the "Single Source of Truth," joining 9 relational tables using Python's SQLAlchemy.

### **Stage 2: SQL Metric Engineering (via DBeaver)**
* **Query Optimization:** Utilized **DBeaver** to develop complex SQL joins for calculating Monthly Revenue trends, identifying Top/Bottom product categories, and benchmarking state-level delivery times.
* **Feature Engineering:** Prepared high-integrity datasets for time-series analysis and geographic performance mapping.

### **Stage 3: Visual Storytelling (EDA)**
* **Diagnostic Exploration:** Analyzed data distributions and identified outliers. Compared national delivery averages against regional performance.
* **Key Discovery:** Identified a significant logistics performance gap between **São Paulo (SP)** and **Rio de Janeiro (RJ)**, serving as a trigger for further statistical investigation.

### **Stage 4: Statistical Validation & Modeling**
* **RFM Segmentation:** Categorized 93k+ active customers based on Recency, Frequency, and Monetary scores.
    * *Core Finding:* The combined **"Champions" and "Loyal Customers"** segments represent only **1.71%** of the total base, indicating a critical need for retention strategies.
* **Hypothesis Testing (Independent T-test):** Evaluated the impact of payment methods on transaction value.
    * *Methodology:* Applied **99th Percentile Clipping** to handle extreme outliers while preserving high-value behavior.
    * *Result:* Confirmed that **Credit Card installments** drive significantly higher Average Order Value (AOV) compared to other methods ($p < 0.001$).
* **Welch’s T-test:** Statistically validated that logistics delays in the RJ region directly correlate with lower customer review scores.

### **Stage 5: BI Deployment & Reporting**
* **Power BI:** Developed an interactive 3-page dashboard for stakeholders to monitor customer health, financial trends, and regional logistics.
* **Canva:** Designed a professional executive-level presentation to bridge the gap between technical findings and business execution.

---

## Strategic Recommendations
1.  **Retention:** Launch an exclusive VIP Loyalty Program for the top **1.71%** core customers to maximize Lifetime Value (LTV).
2.  **Conversion:** Implement "Next-Best-Offer" personalized campaigns to transition "New Customers" into "Loyal" segments.
3.  **Revenue Growth:** Incentivize **Credit Card installments** for high-ticket items, as statistically proven to boost total basket size.
4.  **Operational Excellence:** Prioritize Last-Mile optimization in **Rio de Janeiro** to reduce churn and elevate national satisfaction scores.

---

## Tech Stack
* **Language:** Python (Pandas, Scipy, Seaborn, Matplotlib)
* **SQL IDE:** DBeaver (SQLite)
* **BI Tool:** Power BI
* **Design & Reporting:** Canva
* **Frameworks:** RFM Analysis, Hypothesis Testing (Parametric & Non-Parametric)

---

**Author: Purinut Chairungrueang**
