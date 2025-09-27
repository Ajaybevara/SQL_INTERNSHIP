--  SUM()
SELECT SUM(salary) AS total_salary
FROM employees;

-- COUNT()
SELECT COUNT(*) AS total_employees
FROM employees;

--  AVG()
SELECT AVG(salary) AS avg_salary
FROM employees;

-- GROUP BY
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- HAVING
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000;

--  Multiple Aggregates
SELECT department, COUNT(*) AS emp_count, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- DISTINCT Count
SELECT COUNT(DISTINCT job_title) AS unique_roles
FROM employees;

-- ROUND()
SELECT department, ROUND(AVG(salary), 2) AS rounded_avg_salary
FROM employees
GROUP BY department;

-- Highest Salary by Department
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- Group by multiple columns
SELECT department, job_title, COUNT(*) AS emp_count, SUM(salary) AS total_salary
FROM employees
GROUP BY department, job_title;