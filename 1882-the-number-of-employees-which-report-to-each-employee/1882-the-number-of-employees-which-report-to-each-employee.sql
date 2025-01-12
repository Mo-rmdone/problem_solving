# Write your MySQL query statement below
select e1.employee_id ,e1.name, count(*) as reports_count ,
ROUND(avg(e2.age) ) as average_age from Employees e1
join Employees e2 
on e1.employee_id = e2.reports_to 
group by 1,2
order by 1
