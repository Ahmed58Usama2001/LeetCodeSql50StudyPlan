select p.product_id, ISNULL(ROUND(CAST(SUM(p.price * us.units) AS FLOAT)/SUM(us.units), 2), 0) as average_price 
from Prices p left join UnitsSold US on p.product_id=US.product_id
where US.purchase_date between p.start_date and p.end_date or us.purchase_date is null
group by p.product_id