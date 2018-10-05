use employees_db;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31';

SELECT birth_date
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT first_name, last_name
FROM employees
WHERE first_name ='Irena'
OR first_name = 'Vidya'
OR first_name ='Maya';

SELECT first_name, last_name
FROM employees
WHERE first_name ='Irena'
OR first_name = 'Vidya'
OR first_name ='Maya'
AND gender = 'male';

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E';

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';

SELECT hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31'
AND birth_date LIKE '%-12-25';
