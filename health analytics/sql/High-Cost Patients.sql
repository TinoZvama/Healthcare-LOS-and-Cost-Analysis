------High-Cost Patients
SELECT
    patient_id,
    department,
    total_cost
FROM hospital_admissions
ORDER BY total_cost DESC
LIMIT 20;
