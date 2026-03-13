

----Hospital LOS Baseline
SELECT
    ROUND(AVG(length_of_stay), 2) AS avg_los,
    MIN(length_of_stay) AS min_los,
    MAX(length_of_stay) AS max_los
FROM hospital_admissions;




