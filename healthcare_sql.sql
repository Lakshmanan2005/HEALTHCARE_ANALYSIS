create database health;

use health;

select * from cleaned_healthcare;

-- count of patients
SELECT COUNT(DISTINCT Patient_ID) AS Total_Patients
FROM cleaned_healthcare;

-- count of diabetes patients
SELECT COUNT(DISTINCT Patient_ID) AS Diabetes_Patients
FROM cleaned_healthcare
WHERE Diabetes_Flag = 1;


-- count of non diabets patients
select count(distinct Patient_ID) as Non_diabetes_patients
 from cleaned_healthcare
where Diabetes_Flag=0;

-- percentage of diabetes patients
SELECT 
    (COUNT(DISTINCT CASE WHEN Diabetes_Flag = 1 THEN Patient_ID END) * 100.0) 
    / COUNT(DISTINCT Patient_ID) AS Diabetes_Rate_Percent
FROM cleaned_healthcare;

-- agvarage health 
SELECT 
    AVG(Age) AS Avg_Age,
    AVG(BMI) AS Avg_BMI,
    AVG(BP_Systolic) AS Avg_BP_Systolic,
    AVG(BP_Diastolic) AS Avg_BP_Diastolic,
    AVG(Weight_kg) AS Avg_Weight,
    AVG(Height_cm) AS Avg_Height
FROM cleaned_healthcare;

-- diabetes by gender
select gender, count(distinct Patient_ID)as total_patient,
count(distinct case when Diabetes_Flag=1 Then Patient_ID end)as diabetes_patient
from cleaned_healthcare
group by Gender;

-- diabetes by age group
SELECT 
    Age_Group,
    COUNT(DISTINCT Patient_ID) AS Total_Patients,
    COUNT(DISTINCT CASE WHEN Diabetes_Flag = 1 THEN Patient_ID END) AS Diabetes_Patients,
    (COUNT(DISTINCT CASE WHEN Diabetes_Flag = 1 THEN Patient_ID END) * 100.0 
     / COUNT(DISTINCT Patient_ID)) AS Diabetes_Rate_Percent
FROM cleaned_healthcare
GROUP BY Age_Group
ORDER BY Age_Group;

-- visit date
SELECT 
    Visit_Year,
    Visit_Month,
    COUNT(DISTINCT Patient_ID) AS Total_Patients,
    COUNT(DISTINCT CASE WHEN Diabetes_Flag = 1 THEN Patient_ID END) AS Diabetes_Patients
FROM cleaned_healthcare
GROUP BY Visit_Year, Visit_Month
ORDER BY Visit_Year, Visit_Month;

-- high risk patient
SELECT *
FROM cleaned_healthcare
WHERE BMI > 30 OR BP_Systolic > 140;

-- top 10 high BMI  patients
SELECT 
    Name, Age, Gender, BMI, BP_Systolic, BP_Diastolic
FROM cleaned_healthcare
ORDER BY BMI DESC
LIMIT 10;

-- patient visit count
SELECT 
    Patient_ID,
    COUNT(Date_Visit) AS Total_Visits
FROM cleaned_healthcare
GROUP BY Patient_ID
ORDER BY Total_Visits DESC;

