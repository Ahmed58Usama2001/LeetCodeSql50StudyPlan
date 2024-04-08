with cahnge_dates as (select product_id, max(change_date) as change_date 
from Products 
where change_date<='2019-08-16'
group by product_id)

select p.product_id,
p.new_price as price 
from Products p  join cahnge_dates cd
on p.product_id=cd.product_id and p.change_date = cd.change_date

union 

select distinct product_id, 10 as price
from Products
group by product_id
having min(change_date) > '2019-08-16'