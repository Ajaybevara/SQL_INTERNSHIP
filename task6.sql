-- Scalar Subquery 
SELECT name, salary,
       (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;

-- Subquery
SELECT name
FROM employees
WHERE department_id IN (SELECT id FROM departments WHERE location = 'New York');

-- Correlated Subquery
SELECT e1.name, e1.salary
FROM employees e1
WHERE e1.salary > (SELECT AVG(e2.salary)
                   FROM employees e2
                   WHERE e1.department_id = e2.department_id);

-- Subquery in FROM (Derived Table)
SELECT dept_id, MAX(avg_salary) AS highest_avg
FROM (SELECT department_id AS dept_id, AVG(salary) AS avg_salary
      FROM employees
      GROUP BY department_id) AS dept_summary;

-- 5. Using EXISTS
SELECT name
FROM employees e
WHERE EXISTS (SELECT 1
              FROM projects p
              WHERE p.emp_id = e.id);