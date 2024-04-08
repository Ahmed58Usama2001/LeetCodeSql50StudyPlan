with cs as (
    select *,
    sum(weight) over(order by turn) as weight_sum
    from queue
)
select person_name
from cs
where weight_sum=(select max(weight_sum) from cs where weight_sum<=1000)
