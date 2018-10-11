use employees_db;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name, m.dept_manager
FROM employees as e
JOIN dept_emp as de
  ON de.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
JOIN dept_manager as m
ON m.dept_manager;