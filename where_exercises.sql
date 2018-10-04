use employees_db;

SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT hire_date
FROM employees
WHERE hire_date BETWEEN 1990-01-01 and 1999-12-31;

SELECT birth_date
FROM employees
WHERE birth_date = 12-25;

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';