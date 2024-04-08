SELECT s.user_id,
ROUND(CAST(COUNT(CASE WHEN action = 'confirmed' THEN 1 ELSE NULL END) AS FLOAT) / COUNT(*), 2)
 as confirmation_rate
from Signups s left join Confirmations c
on s.user_id =c.user_id 
group by s.user_id