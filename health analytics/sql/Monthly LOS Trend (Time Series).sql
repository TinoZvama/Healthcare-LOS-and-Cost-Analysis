----Monthly LOS Trend (Time Series)
SELECT
    DATE_TRUNC('month', admission_date) AS month,
    ROUND(AVG(length_of_stay), 2) AS avg_los
FROM hospital_admissions
GROUP BY month
ORDER BY month;
