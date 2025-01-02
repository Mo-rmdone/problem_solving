# Write your MySQL query statement below
select Date_format(trans_date,'%Y-%m') As 'month',
country, COUNT(id) as trans_count,
sum(state = 'approved') as approved_count ,
sum(amount) as trans_total_amount,
sum(case when state='approved' then amount else 0 end ) as approved_total_amount 
from Transactions
group by 1,2
