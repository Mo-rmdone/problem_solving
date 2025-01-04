# Write your MySQL query statement below
SELECT ROUND(COUNT(DISTINCT b.player_id)/COUNT(DISTINCT a.player_id),2) AS fraction  from 
(select player_id , min(event_date) as event_date from Activity group by player_id) a
left join Activity b on a.player_id = b.player_id
AND DATEDIFF(b.event_date, a.event_date) = 1