# Exercise-two
SYNTAX 

--QUESTION 1 
SELECT COUNT(*) As total-employees
FROM employees;

--QUESTION 2
SELECT SUM(salary) As total_total_salary
FROM employees;

--QUESTION 3
SELECT AVG(salary)As average_hr_salary 
FROM employees 
WHERE department ='HR';

--QUESTION 4
SLECT MAX(salry)As highest_salary,MINI(salary) As lowest_salary
FROM employees;

--QUESTION 5
SELECT department,SUM(salary)As total_department_salary
FROM employees
GROUP BY department;

--Question 6
SELECT city, COUNT(*) AS employee_count 
FROM employees 
GROUP BY city;

--QUESTION 7
SELECT department, AVG(salary) AS avg_salary
FROM employees GROUP BY department
ORDER BY avg_salary DESC;

--QUESTION 8
SELECT department, SUM(salary) AS total_salary 
FROM employees
GROUP BY department HAVING SUM(salary) > 100000;

--QUESTION 9

SELECT city, COUNT(*) AS employee_count 
FROM employees 
GROUP BY city HAVING COUNT(*) > 1 
ORDER BY employee_count DESC

--QUESTION 10
SELECT department, AVG(salary) AS highest_avg_salary
FROM employees 
GROUP BY department ORDER BY highest_avg_salary DESC LIMIT 1;
