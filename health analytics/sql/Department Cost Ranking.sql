----Window Function: Department Cost Ranking
SELECT
    department,
    ROUND(AVG(total_cost), 2) AS avg_cost,
    RANK() OVER (ORDER BY AVG(total_cost) DESC) AS cost_rank
FROM hospital_admissions
GROUP BY department;