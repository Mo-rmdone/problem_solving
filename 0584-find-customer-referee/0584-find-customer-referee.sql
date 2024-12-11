# Write your MySQL query statement below
SELECT name From Customer 
where ifnull(referee_id,1) <>2