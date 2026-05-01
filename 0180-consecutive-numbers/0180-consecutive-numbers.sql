Select distinct (num) as ConsecutiveNums from 
(
    select num,
    lead (num) over (order by id) as Ld,
    lag (num) over (order by id ) as Lg
    from Logs
 

) as t
where num = Ld and Lg = num
