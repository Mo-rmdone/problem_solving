WITH T AS (
    SELECT 
        person_name, 
        SUM(weight) OVER (ORDER BY turn ASC) AS weights
    FROM Queue
)
SELECT person_name 
FROM T 
WHERE weights <= 1000
ORDER BY weights DESC
LIMIT 1;