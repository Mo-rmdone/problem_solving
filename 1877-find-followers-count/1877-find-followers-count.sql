# Write your MySQL query statement below
select user_id, COUNT(follower_id) as followers_count FROM Followers 
group by 1 
order by user_id asc