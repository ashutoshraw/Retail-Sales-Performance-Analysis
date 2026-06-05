# 🛒 Retail Sales Performance Analysis

## 📌 Project Overview
An end-to-end data analysis project on a retail superstore dataset, uncovering key business insights around sales performance, profitability, discount impact, and customer behavior using Excel, SQL, Python, and Power BI.

---

## 🎯 Business Problem
The retail store was generating high revenue but struggling with low profit margins. The goal was to identify the root cause of profit loss and provide data-driven recommendations to improve business performance.

---

## 🔧 Tools & Technologies
| Tool | Purpose |
|---|---|
| Excel + Power Query | Data Cleaning & Transformation |
| MySQL | Business Analysis using SQL Queries |
| Python (Jupyter Notebook) | Data Analysis & Visualization |
| Power BI | Interactive Dashboard |
| GitHub | Version Control & Portfolio |

---

## 📂 Project Structure
```
Retail-Sales-Performance-Analysis/
│
├── data/
│   └── retail_sales.csv
│
├── excel/
│   └── Retail_Sales_Cleaned.xlsx
│
├── sql/
│   └── retail_sales_queries.sql
│
├── python/
│   └── Retail_Sales_Analysis.ipynb
│
├── powerbi/
│   └── Retail_Sales_Dashboard.pbix
│
└── README.md
```

---

## 📊 Dataset
- **Source:** Kaggle — Sample Superstore Dataset
- **Size:** 5,009 rows, 20 columns
- **Domain:** US Retail Store Sales (2014-2017)
- **Features:** Orders, Customers, Products, Sales, Profit, Discount, Region, Category

---

## 🧹 Phase 1 — Data Cleaning (Excel + Power Query)
- Removed unnecessary columns (Row ID)
- Removed duplicate rows
- Fixed date formats using Locale settings
- Set correct data types for all columns
- Trimmed whitespace from all text columns
- Standardized text casing to Proper Case
- Verified no null values exist

---

## 🗄️ Phase 2 — SQL Analysis (MySQL)
Wrote 12 business queries to answer key questions:

| Query | Business Question |
|---|---|
| 1 | What are total sales, profit and orders? |
| 2 | Which region generates most sales and profit? |
| 3 | Which states have highest and lowest sales? |
| 4 | Which category generates most revenue? |
| 5 | Which sub-category is most and least profitable? |
| 6 | What are top 10 best selling products? |
| 7 | Which customer segment generates most profit? |
| 8 | Who are top 10 customers by sales vs profit? |
| 9 | How does discount level affect profit? |
| 10 | Which category receives highest average discount? |
| 11 | Which ship mode is most used and profitable? |
| 12 | How many orders are profitable vs loss making? |

---

## 🐍 Phase 3 — Python Analysis (Jupyter Notebook)
**Libraries Used:** pandas, matplotlib, seaborn

**Visualizations Created:**
- Sales & Profit by Region
- Sales & Profit by Category
- Discount Impact on Profit
- Top 10 Customers by Sales
- Profit by Sub-Category
- Order Status Distribution (Pie Chart)

---

## 📈 Phase 4 — Power BI Dashboard
**3 Page Interactive Dashboard:**

**Page 1 — Overview**
- KPI Cards: Total Sales, Total Profit, Total Orders, Average Profit
- Sales & Profit by Region
- Sales & Profit by Category
- Interactive Slicers: Region, Category, Segment

**Page 2 — Profit & Discount Analysis**
- KPI Cards: Total Profit, Profit Margin %, Loss Orders
- Top 5 vs Bottom 5 Sub-Categories
- Discount Impact on Profit
- Order Status Distribution

**Page 3 — Customer & Geographic Analysis**
- KPI Cards: Total Customers, Total Orders, Avg Order Value
- Top 10 Customers by Sales
- Sales by Customer Segment
- Top 5 Profit States (California, New York, Michigan, Virginia, Washington)
- Bottom 5 Profit States (Texas, Illinois, Pennsylvania, North Carolina, Colorado)

---

## 🔍 Key Insights & Findings

### 1️⃣ Discount is the Root Cause of Profit Loss
- Orders with **40%+ discount** lose **-107 per order on average**
- No discount orders generate **+1,49,264 total profit**
- High discount orders result in **-51,502 total loss**

### 2️⃣ Furniture Category is Loss Prone
- Furniture gets **highest average discount (16.98%)**
- Tables sub-category loses **-10,997 in profit**
- Despite high sales, Furniture generates only **7,500 profit**

### 3️⃣ Geographic Profit Problem
- **Texas, Illinois, Pennsylvania, Washington** all have negative profit
- These states have high sales but heavy discounting kills margins

### 4️⃣ Sales vs Profit Paradox in Customers
- Top customers by sales are **NOT** top customers by profit
- Some customers with low sales rank generate much higher profit
- Indicates heavy discounts given to high volume buyers

### 5️⃣ 905 Orders Causing Massive Loss
- Only **905 out of 5,009 orders** (18%) are loss making
- These 905 orders generate **-78,000 in losses**
- Eliminating these could increase profit by **59%**

---

## 💡 Business Recommendations
1. **Reduce discounts** on Furniture category — especially Tables
2. **Cap maximum discount** at 20% across all categories
3. **Focus on Technology** products — lowest discount, highest profit
4. **Review pricing strategy** in Texas, Illinois, Pennsylvania
5. **Retain profitable customers** rather than just high volume buyers

---

## 🚀 How to Run This Project

**SQL:**
```sql
CREATE DATABASE retail_db;
USE retail_db;
-- Run retail_sales_queries.sql
```

**Python:**
```bash
jupyter notebook
-- Open Retail_Sales_Analysis.ipynb
```

**Power BI:**
- Open Retail_Sales_Dashboard.pbix in Power BI Desktop

---

## 📬 Connect With Me
- **LinkedIn:** https://www.linkedin.com/in/ashutosh-rawat-032ab4263/
- **GitHub:** https://github.com/ashutoshraw
- **Email:** ashutoshrawat301@gmail.com

---

⭐ If you found this project helpful, please give it a star!
