select q.query_name ,
round(sum(q.rating*1.0/q.position*1.0) 
/count(*),2)
as quality 
,
round((select count(*)
from Queries
where query_name=q.query_name and rating<3 ) * 100.0
/ count(*) ,2)
as poor_query_percentage  
from Queries q
where q.query_name is not null
group by q.query_name