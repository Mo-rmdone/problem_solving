# Write your MySQL query statement below
with nums as(
    select num, count(*) as times from Mynumbers
    group by 1
)
select max(num) as num from nums
where times = 1