-- Select all columns
SELECT * FROM employees;

--  Select specific columns
SELECT first_name, last_name, salary FROM employees;

-- Filtering with WHERE
SELECT first_name, last_name, salary
FROM employees
WHERE salary > 50000;

--  Using AND condition
SELECT first_name, last_name, department, salary
FROM employees
WHERE department = 'IT' AND salary > 40000;

-- Using OR condition
SELECT first_name, last_name, department
FROM employees
WHERE department = 'IT' OR department = 'HR';

-- Pattern Matching with LIKE
SELECT first_name, last_name
FROM employees
WHERE first_name LIKE 'A%';

-- Range Filtering with BETWEEN
SELECT first_name, last_name, salary
FROM employees
WHERE salary BETWEEN 30000 AND 60000;

-- Sorting Results with ORDER BY
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC;

-- Limiting Rows with LIMIT
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;