---Age Group LOS Analysis
SELECT
    CASE
        WHEN age < 13 THEN 'Child'
        WHEN age < 18 THEN 'Teen'
        WHEN age < 35 THEN 'Young Adult'
        WHEN age < 60 THEN 'Adult'
        ELSE 'Elderly'
    END AS age_group,
    COUNT(*) AS patients,
    ROUND(AVG(length_of_stay), 2) AS avg_los
FROM hospital_admissions
GROUP BY age_group
ORDER BY avg_los DESC;

