-------Diagnosis Impact Analysis
SELECT
    diagnosis,
    COUNT(*) AS patients,
    ROUND(AVG(length_of_stay), 2) AS avg_los,
    ROUND(AVG(total_cost), 2) AS avg_cost
FROM hospital_admissions
GROUP BY diagnosis
ORDER BY avg_los DESC;