------Identify Long-Stay Patients
WITH los_threshold AS (
    SELECT
        PERCENTILE_CONT(0.75)
        WITHIN GROUP (ORDER BY length_of_stay) AS los_75
    FROM hospital_admissions
)
SELECT *
FROM hospital_admissions
WHERE length_of_stay >
      (SELECT los_75 FROM los_threshold);



