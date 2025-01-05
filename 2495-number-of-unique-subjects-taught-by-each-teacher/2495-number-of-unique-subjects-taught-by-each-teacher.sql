# Write your MySQL query statement below
select teacher_id, COUNT(DISTINCT subject_id ) as cnt FROM Teacher
group by 1