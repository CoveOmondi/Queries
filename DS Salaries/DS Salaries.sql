SELECT work_year, job_title, salary_in_usd, employee_residence
FROM ds_salaries$

WHERE work_year = 2022
ORDER BY salary_in_usd ASC

