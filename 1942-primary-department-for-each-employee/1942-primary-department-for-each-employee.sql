# Write your MySQL query statement below
select employee_id, 
COALESCE(MAX(CASE when primary_flag = 'Y' THEN department_id END ),max(department_id)) as department_id 
from Employee group by 1