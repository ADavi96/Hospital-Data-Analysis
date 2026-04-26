UPDATE hospital_operations SET patient_age = 2026 - DOB;

SELECT * from hospital_operations LIMIT 10

SELECT 
    Case_No, 
    DOB, 
    (2026 - DOB) AS patient_age,
    COALESCE(discharge_time, '00:00') AS clean_discharge_time
FROM hospital_operations;

SELECT 
    case_no, 
    (2025 - dob) AS patient_age,
    
 
    CASE 
        WHEN discharge_time IS NULL OR discharge_time = '' THEN '00:00'
        ELSE discharge_time 
    END AS clean_discharge_time,
    
    CASE 
        WHEN severity = 3 THEN 'High'
        WHEN severity = 2 THEN 'Medium'
        WHEN severity = 1 THEN 'Low'
        ELSE 'Not Rated'
    END AS severity_level,
    
    specialty,
    revenue
FROM hospital_operations;