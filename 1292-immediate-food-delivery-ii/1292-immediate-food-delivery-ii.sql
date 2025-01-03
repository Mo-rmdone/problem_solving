# Write your MySQL query statement below
SELECT ROUND(
    (SELECT COUNT(*)  FROM 
        (select customer_id  from
         Delivery GROUP BY customer_id 
        HAVING MIN(order_date) = MIN(customer_pref_delivery_date)
        ) as immediate )
         * 100.0 / COUNT(DISTINCT customer_id ),2) as immediate_percentage 
        FROM Delivery 