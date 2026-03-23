# SQL-Exercise-one-
Code for my exercise 
--Question 1 
SELECT* employees 
--Question 2 
SELECT DISTINCT department FROM employee;
QUESTION 3
SELCET first-name,last_name
FROM employees
ORDER BY SALARY DESC;

---QUESTION 4
 SELECT *
 FROM employee
 ORDER BY salary DESC LIMIT 5;

--- QUESTION 5 
 SELECT *
  FROM employees
  WHERE department 'IT';

---QUESTION 6
SELECT *
FROM employees
WHERE department 'finance' AND salary > 58 000;

---QUESTION 7 
SELECT * FROM employees
WHERE department = 'HR',OR department = 'marketing';

---QUESTION 8 
SELECT * 
FROM employees WHERE NOT department = 'IT';
---QUESTION 9
SELECT *
FROM employees 
WHERE department IN ('HR', 'IT', 'Finance');

---QUESTION 10
SELECT * 
FROM employees
WHERE department = 'IT' AND salary > 50000 AND city = 'New York';

---QUESTION 11
SELECT first-name,last-name
FROM employees
WHERE ( department ='finance' OR 'Mmarketing') AND salary > 50000,ORDER BY salary DESC;

---QUESTION 12
SELECT DISTINCT city 
FROM employees
WHERE department NOT IN ('IT', 'HR');

--QUESTION 13
SELECT * FROM employees 
WHERE department <> 'Finance' AND salary > 50000 ORDER BY hire_date ASC;

--QUESTION 14 
SELECT * 
FROM employees 
WHERE city IN ('Chicago', 'Los Angeles') AND department IN ('IT', 'Marketing') LIMIT 3;
