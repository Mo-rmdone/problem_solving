# Write your MySQL query statement below
select x,y,z,
case when x+y <= z then 'No'
when x+z <= y then 'No'
when y+z <= x then 'No'
else 'Yes' END as triangle 
from Triangle 