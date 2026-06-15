# Swiggy Delivery Profitability Analysis

An end-to-end Data Analytics project focused on analyzing delivery operations, customer behavior, profitability trends, and business performance for a food delivery platform inspired by Swiggy.

This project combines **MySQL, Python, and Power BI** to perform data extraction, analysis, visualization, and business insight generation.

---

## Project Objective

The objective of this project is to analyze food delivery business operations and identify factors affecting profitability, customer loyalty, cancellations, payment behavior, and restaurant performance.

The project aims to answer business questions such as:

- Which cities generate the highest order volume?
- Which restaurant categories are least profitable?
- Which payment modes lead to more cancellations?
- How do discounts affect profit?
- How does customer rating influence repeat orders?

---

## Tech Stack Used

- **MySQL** → Data querying and business analysis  
- **Python** → Data cleaning and exploratory data analysis  
- **Power BI** → Interactive dashboard creation  
- **Pandas / NumPy / Matplotlib** → Python data analysis libraries  

---

## Dataset Information

The dataset contains **3000 food delivery transactions** with attributes such as:

- Order ID  
- Customer ID  
- Order Date  
- City  
- Restaurant Type  
- Payment Mode  
- Order Value  
- Discount Percentage  
- Delivery Cost  
- Delivery Distance  
- Delivery Time  
- Profit  
- Rating  
- Order Cancelled  
- Repeat Customer  
- Refund  

---

## SQL Analysis Performed

Business analysis was performed using MySQL queries.

Key SQL analyses include:

- City-wise order analysis  
- Payment mode distribution  
- Cancelled orders by payment method  
- Restaurant-wise profitability analysis  
- Customer loyalty analysis using ratings  
- Discount vs profit analysis  
- Revenue and profit aggregation  
- Order trend analysis  

Example queries:

```sql
SELECT City, COUNT(*) AS total_orders, SUM(Profit) AS total_profit
FROM swiggy_orders
GROUP BY City;
```

```sql
SELECT Payment_Mode, COUNT(*) AS cancelled_orders
FROM swiggy_orders
WHERE Order_Cancelled = 'Yes'
GROUP BY Payment_Mode;
```

---

## Python Analysis Performed

Exploratory Data Analysis (EDA) was performed using Python.

Libraries used:

- Pandas  
- NumPy  
- Matplotlib  

Python analysis included:

- Profit distribution analysis  
- Revenue trend analysis  
- Correlation analysis  
- Discount impact on profitability  
- Customer rating analysis  
- Restaurant category performance comparison  

---

## Power BI Dashboard

An interactive dashboard was built in Power BI to visualize business performance.

Dashboard KPIs:

- Total Orders → 3000  
- Total Revenue → 142.50K  
- Total Profit → -72.37K  
- Average Rating → 3.58  
- Cancelled Orders → 304  

Dashboard Visuals:

- Orders by City  
- Payment Distribution Analysis  
- Restaurant-wise Profitability  
- Cancelled Orders by Payment Method  
- Discount vs Profit Analysis  
- Customer Loyalty by Rating  
- Interactive Filters (City, Payment Mode, Restaurant Type)

---

## Key Business Insights

### 1. Business is operating at loss

Despite generating **142.50K revenue**, the overall business recorded **-72.37K total profit**, indicating operational inefficiency.

---

### 2. Bangalore drives highest demand

Bangalore generated the highest order volume with **577 total orders**, followed by Mumbai and Delhi.

---

### 3. Fast Food category performs poorly

Fast Food restaurants contributed the highest negative profit, making it the least profitable category.

---

### 4. COD leads to highest cancellations

Cash on Delivery recorded the highest cancellation count compared to other payment methods.

---

### 5. Discounts significantly reduce profit

Higher discount percentages negatively impacted profitability, especially beyond the 15–20% range.

---

### 6. Higher ratings improve loyalty

Customers giving higher ratings showed stronger repeat ordering behavior.

---

## Business Recommendations

Based on analysis:

- Reduce excessive discount campaigns above 15%  
- Promote prepaid payment methods over COD  
- Improve pricing strategy for low-profit restaurant categories  
- Focus growth strategies on high-demand cities like Bangalore and Mumbai  
- Improve customer retention programs for high-rating customers  

---

## Dashboard Preview

<img width="464" height="324" alt="final_dashboard" src="https://github.com/user-attachments/assets/d00a46f1-226e-4a91-b061-8186a5efad0a" />






---

## Project Folder Structure

```text
swiggy-delivery-profitability-analysis/

dataset/
   swiggy_dataset.xlsx

sql/
   analysis_queries.sql

python/
   eda_analysis.py

powerbi/
   swiggy_dashboard.pbix

screenshots/
   dashboard.png

README.md
```

---

## Skills Demonstrated

- SQL Querying  
- Data Cleaning  
- Exploratory Data Analysis  
- Business Analysis  
- Dashboard Design  
- KPI Reporting  
- Data Visualization  
- Business Decision Making  

---

## Author

**Ashutosh Gupta**

GitHub: https://github.com/ashutoshdeepu256-coder  

LinkedIn: www.linkedin.com/in/ashutosh-gupta-ba31652a1  

---

## Project Outcome

This project demonstrates an end-to-end analytics workflow from raw data extraction to business insight generation using industry-standard analytics tools.

It reflects practical skills required for roles such as:

- Data Analyst  
- Business Analyst  
- Product Analyst  
- Analytics Intern  
