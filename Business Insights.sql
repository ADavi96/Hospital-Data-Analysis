-- We want to know which Nationality is bringing in the most money. 
--Can you give me a list of Nationalities, their Total Revenue, and the Total Number of Cases they’ve had? 
--Please put the highest revenue at the top. 
SELECT nationality, 
	SUM(revenue) AS total_revenue,
    COUNT(*) AS number_of_cases
FROM hospital_operations
GROUP BY nationality
Order BY total_revenue DESC
-- UAE 1791184 85



--The Chief Operating Officer (COO) wants to know if there is a difference in how long patients stay in the hospital based on the Doctor Type (Consultant, Specialist, or GP)
--Can you provide a list showing each Doctor Type, their Average Length of Stay (LOS), and the Total Number of Patients they treated?
--We want to see which group of doctors is keeping patients the longest on average. 

SELECT 
	doctor_type,
    AVG(los) AS average_length_of_stay,
    count(*) AS total_number_of_patients
FROM hospital_operations
GROUP By doctor_type
Order By average_length_of_stay DESC
--GP 1.45 days 58



--The Board of Directors wants to know if high-severity cases are actually generating enough revenue to cover the resources they use.
--Can you show us the Total Revenue and Average CMI Value (complexity) grouped by our Severity Levels (High, Medium, Low)?

SELECT
	CASE
    	when severity = 3 THEN 'High'
        When severity = 2 THEN 'Medium'
        else 'Low'
	End as severity_levels,
	SUM(revenue) as total_revenue,
    AVG(cmi_value) As average_cmi_value,
    AVG(revenue) AS avg_revenue
FROM hospital_operations
Group BY 
	severity_levels
order by 
	total_revenue desc