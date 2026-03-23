--Case Statement practice 

SELECT product_name, price,
  CASE 
    WHEN price > 1000 THEN 'Expensive'
    WHEN price BETWEEN 100 AND 1000 THEN 'Mid-range'
    ELSE 'Budget'
  END AS price_category
FROM products;


--- Question 2 Order Value labelling 
SELECT customer_name, amount,
  CASE 
    WHEN amount >= 1000 THEN 'High Value'
    WHEN amount BETWEEN 500 AND 999.99 THEN 'Medium Value'
    ELSE 'Low Value'
  END AS order_value_category
FROM orders;



--- Question 3, employee position categorisation 
SELECT emp_name, department, salary,
  CASE 
    WHEN department = 'IT' AND salary > 80000 THEN 'Senior IT'
    WHEN department = 'HR' AND salary > 55000 THEN 'Experienced HR'
    ELSE 'Staff'
  END AS position_level
FROM employees;

--Question 4 student letter grade 

SELECT student_name, score,
  CASE 
    WHEN score >= 90 THEN 'A'
    WHEN score >= 80 THEN 'B'
    WHEN score >= 70 THEN 'C'
    WHEN score >= 60 THEN 'D'
    ELSE 'F'
  END AS grade
FROM students;

---Question 5 delivery performance 
SELECT delivery_id, delivery_time_minutes,
  CASE 
    WHEN delivery_time_minutes <= 30 THEN 'Fast'
    WHEN delivery_time_minutes <= 60 THEN 'On Time'
    ELSE 'Late'
  END AS performance
FROM deliveries;

---Question 6

SELECT issue_type, priority,
  CASE 
    WHEN priority = 3 THEN 'High'
    WHEN priority = 2 THEN 'Medium'
    WHEN priority = 1 THEN 'Low'
  END AS priority_label
FROM tickets;

--Question 7
SELECT student_id, (days_present * 100.0 / total_days) AS attendance_percentage,
  CASE 
    WHEN (days_present * 100.0 / total_days) >= 90 THEN 'Excellent'
    WHEN (days_present * 100.0 / total_days) >= 75 THEN 'Good'
    ELSE 'Needs Improvement'
  END AS attendance_status
FROM attendance;

-----Quetsion 8 Stock Inventory 
SELECT product_id, stock_qty,
  CASE 
    WHEN stock_qty = 0 THEN 'Out of Stock'
    WHEN stock_qty BETWEEN 1 AND 5 THEN 'Low Stock'
    ELSE 'In Stock'
  END AS stock_status
FROM products_inventory;

--Question 9
SELECT subject, enrolled_students,
  CASE 
    WHEN enrolled_students >= 25 THEN 'Large'
    WHEN enrolled_students BETWEEN 10 AND 24 THEN 'Medium'
    ELSE 'Small'
  END AS class_size_category
FROM classes;

--Question 10 
SELECT payment_id, payment_method, amount,
  CASE 
    WHEN payment_method = 'Cash' AND amount >= 200 THEN 'Eligible for Discount'
    ELSE 'Not Eligible'
  END AS discount_eligibility
FROM payments;
