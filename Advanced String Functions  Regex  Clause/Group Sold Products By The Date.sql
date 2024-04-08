with Distinct_ativities as (
    select distinct *
    from Activities
)
select sell_date, count(product) as 'num_sold', string_agg(product, ',') as products
from
Distinct_ativities
group by sell_date