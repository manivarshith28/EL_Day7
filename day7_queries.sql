use day7;

-- Q1

CREATE VIEW hr_employees_view AS
SELECT name, salary
FROM employees
WHERE department = 'HR';

SELECT * FROM hr_employees_view;

-- Q2

CREATE VIEW employee_department_bonus_view AS
SELECT 
    e.name,
    e.department,
    d.dept_name,
    e.salary,
    e.salary * 1.10 AS bonus_salary
FROM 
    employees e
JOIN 
    departments d ON e.department = d.dept_name;

SELECT * FROM employee_department_bonus_view;

-- Q3 : security view => hiding salary details

CREATE VIEW public_employee_view AS
SELECT name, department FROM employees;

SELECT * FROM public_employee_view;

-- Q4

CREATE VIEW hr_high_earners_view AS
SELECT 
    name,
    department,
    salary
FROM 
    employees
WHERE 
    department = 'hr' AND salary > 52000;
    
SELECT * FROM hr_high_earners_view;

-- Q5

CREATE VIEW department_avg_salary_view AS
SELECT 
    department,
    AVG(salary) AS average_salary
FROM 
    employees
GROUP BY 
    department;

SELECT * FROM department_avg_salary_view;
