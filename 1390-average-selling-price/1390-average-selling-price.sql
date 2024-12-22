SELECT p.product_id, COALESCE(ROUND(sum(u.units*p.price)/Sum(u.units),2),0)
 as average_price  FROM Prices p left Join UnitsSold u
on p.product_id = u.product_id and u.purchase_date between
p.start_date  and p.end_date   
group by 1