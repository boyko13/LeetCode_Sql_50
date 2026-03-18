
with tempT AS
 (Select *,
  ROW_NUMBER() Over(PARTITION BY customer_id Order by order_date ) as rn from Delivery)

select Round(Sum(CASE when order_date = customer_pref_delivery_date then 1 else 0 end ) * 100/ count(*),2)  as immediate_percentage from tempT where rn = 1;
