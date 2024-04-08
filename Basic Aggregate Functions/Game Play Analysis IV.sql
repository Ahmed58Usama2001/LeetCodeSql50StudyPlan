with 
first_order as (select customer_id, min(order_date) as first_order_date from Delivery a group by customer_id)
select 
round(cast(count(*) as float)*100/(select  count(distinct customer_id) from Delivery),2) as immediate_percentage
from first_order a inner join Delivery b 
on b.customer_id=a.customer_id and b.order_date=a.first_order_date 
where a.first_order_date=b.customer_pref_delivery_date