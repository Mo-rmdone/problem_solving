/* Write your T-SQL query statement below */
SELECT u.unique_id, e.name from Employees e
left join EmployeeUNI u on e.id = u.id