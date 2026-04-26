Hospital Operations & Revenue Analysis 🏥📊

An end-to-end data analytics project utilizing SQL for ETL (Extract, Transform, Load) and Tableau for advanced business visualization. This project explores the intersection of clinical complexity and financial performance.

🔗 Project Links

Data Source: Kaggle - Hospital Operations Dataset

Interactive Dashboard: (https://public.tableau.com/views/HospitalOperationsRevenueAnalysis/RevenuebyDemographics?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

Full Case Study: Link to hospital_portfolio_case_study.md

🎯 Project Objective

The goal of this analysis was to identify how patient demographics and clinical severity impact the hospital's bottom line. I transformed raw clinical records into actionable insights to help hospital administrators optimize staffing and revenue cycle management.

🛠️ Technical Workflow

1. Data Cleaning & Transformation (SQL)

Raw data was processed in SQL to ensure consistency. Key steps included:

Demographic Segmentation: Created decade-based age cohorts (20s, 30s, etc.).

Logical Mapping: Converted clinical severity codes into "Low, Medium, High" business categories.

Null Handling: Standardized missing discharge timestamps.

2. Visualization & Insight Discovery (Tableau)

Developed an interactive executive dashboard focusing on:

Volume vs. Value: Comparing total revenue against average revenue per patient.

Demographic Skew: Identifying high-revenue patient segments by gender and age.

Complexity Mapping: Heat maps correlating CMI (Case Mix Index) with specialty departments.

📈 Key Findings

Revenue Driver: "Low Severity" cases represent the highest volume (45% of total revenue) despite having lower individual margins.

Top Demographic: Patients in their 20s and 30s are the primary revenue contributors.

Clinical Alignment: Revenue scales effectively with clinical complexity (CMI), validating the current billing model.

📂 Repository Structure

data/: Contains the raw .csv dataset from Kaggle.

sql_queries/: All SQL scripts used for ETL and data transformation.

visualizations/: Screenshots of the final Tableau dashboard.

hospital_portfolio_case_study.md: A detailed narrative of the business problem and strategic recommendations.

Author: Ashley Davila

Tools: SQL, Tableau, Excel

Domain: Healthcare Analytics / Revenue Cycle Management
