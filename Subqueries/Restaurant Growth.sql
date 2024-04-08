select c1.visited_on
    ,sum(c2.amount) amount
    ,ROUND(sum(c2.amount+0.00)/7, 2) average_amount
from (select distinct visited_on from customer) c1
inner join customer c2 on c2.visited_on <= c1.visited_on 
    and c2.visited_on >  dateadd(day, -7, c1.visited_on)
group by c1.visited_on
having count(distinct c2.visited_on) = 7
order by c1.visited_on