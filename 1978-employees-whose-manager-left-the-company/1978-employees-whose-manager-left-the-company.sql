# Write your MySQL query statement below

SELECT employee_id FROM Employees
 WHERE salary < 30000 and 
manager_id  NOT IN
 (SELECT employee_id FROM employees)
 order by employee_id