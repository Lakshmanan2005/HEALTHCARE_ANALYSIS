# Healthcare Patient Risk Analysis Dashboard  
**Using Python, SQL & Power BI**

An end-to-end healthcare analytics project that combines **Python for data cleaning**, **SQL for querying & KPI generation**, 
and **Power BI for interactive visualization** to analyze diabetes trends and patient health risks.


# Project Overview  
This project analyzes healthcare patient data to:
- Identify diabetes prevalence
- Detect high-risk patients
- Study health patterns by age, gender, and time
- Build a professional medical analytics dashboard

It follows a complete data pipeline:
**Python → SQL → Power BI**

##  Tools & Technologies  

| Tool | Purpose |
|------|--------|
| Python (Pandas, NumPy) | Data cleaning, preprocessing, feature engineering |
| SQL | Data extraction, aggregation, KPI calculations |
| Power BI | Dashboard creation, DAX measures, visualization |

---

## Dataset Features  
- Patient_ID, Name, Age, Age_Group, Gender  
- BMI, BP_Systolic, BP_Diastolic  
- Diabetes, Diabetes_Flag  
- Date_Visit, Visit_Year, Visit_Month  
- Height_cm, Weight_kg  

---

##  Data Pipeline  

1. **Python**
   - Removed null values
   - Fixed data types
   - Created new features:
     - Age_Group  
     - Diabetes_Flag  
     - BMI categories  
     - Visit_Year & Visit_Month  

2. **SQL**
   - Calculated KPIs  
   - Aggregated diabetes statistics  
   - Built risk classification  
   - Generated datasets for Power BI  

3. **Power BI**
   - Created DAX measures  
   - Designed dashboard  
   - Added slicers & conditional formatting  
   - Applied healthcare UI theme  

---

##  Project Objectives  

- Calculate:
  - Total Patients  
  - Diabetes Patients  
  - Diabetes Rate (%)  
- Identify:
  - High-risk patients (BMI > 30 or BP > 140)  
- Analyze:
  - Age-wise risk  
  - Gender-wise diabetes  
  - Monthly trends  

---

##  Key KPIs  

| KPI | Description |
|-----|------------|
| Total Patients | Unique count of patients |
| Diabetes Patients | Patients with diabetes |
| Diabetes Rate (%) | Diabetes prevalence |
| Avg BMI | Mean BMI |
| Avg BP | Mean systolic BP |
| High Risk Count | Patients with BMI > 30 or BP > 140 |

---

##  Sample SQL Queries  

```sql
-- Total Patients
SELECT COUNT(DISTINCT Patient_ID) AS Total_Patients
FROM Cleaned_Healthcare;
