select name as results from (select top 1 u.name
from Users u join MovieRating mr
on u.user_id = mr.user_id
group by u.user_id, u.name
order by count(*) desc, u.name asc)t

union all

select title as results from (select top 1 m.title
from Movies m join MovieRating mr
on m.movie_id = mr.movie_id
where month(created_at) = 2 and year(created_at) = 2020
group by m.movie_id, m.title
order by avg(rating+0.0) desc, m.title asc)t1