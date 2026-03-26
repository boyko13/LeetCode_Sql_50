Select x.customer_id from (Select customer_id, count(distinct(product_key)) as cnt from Customer 
group by customer_id) x
where x.cnt = (Select count(*) from Product)
