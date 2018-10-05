use employees_db;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT last_name, emp_no
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

SELECT last_name, emp_no
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no ASC;

SELECT birth_date
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE 'E%';

SELECT DATEDIFF(NOW(),`hire_date`) AS days
FROM employees
WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31'
AND birth_date LIKE '%-12-25';
