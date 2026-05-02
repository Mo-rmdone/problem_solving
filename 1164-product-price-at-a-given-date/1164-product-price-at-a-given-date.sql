SELECT 
    p.product_id, 
    IFNULL(p2.new_price, 10) AS price
FROM 
    (SELECT DISTINCT product_id FROM products) p
LEFT JOIN 
    products p2 
ON 
    p.product_id = p2.product_id 
    AND p2.change_date = (
        SELECT MAX(change_date) 
        FROM products 
        WHERE product_id = p.product_id 
          AND change_date <= '2019-08-16'
    )
ORDER BY 
    p.product_id;