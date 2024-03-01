-- Module 9 Challenge -- Data Analysis Queries
-- Question 1: List the employee number, last name, first name, sex, and salary of each employee.
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

-- Question 2: List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

-- Question 3: List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT departments.dept_no, departments.dept_name, dep_manager.emp_no, employees.last_name, employees.first_name
FROM departments
JOIN dep_manager
ON departments.dept_no = dep_manager.dept_no
JOIN employees
ON dep_manager.emp_no = employees.emp_no;

-- Question 4: List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT dep_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dep_emp
JOIN employees
ON dep_emp.emp_no = employees.emp_no
JOIN departments
ON dep_emp.dept_no = departments.dept_no;

-- Question 5: List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name,last_name,sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Question 6: List each employee in the Sales department, including their employee number, last name, and first name.
SELECT dep_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dep_emp
JOIN employees
ON dep_emp.emp_no = employees.emp_no
JOIN departments
ON dep_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

-- Question 7: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dep_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dep_emp
JOIN employees
ON dep_emp.emp_no = employees.emp_no
JOIN departments
ON dep_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';

-- Question 8: List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;







