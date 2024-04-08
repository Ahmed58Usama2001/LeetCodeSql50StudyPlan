select m.employee_id , min(m.name) as name  ,count(e.employee_id) as reports_count ,round(AVG(e.age+0.0),0) as  average_age 
from Employees e inner join Employees m 
on m.employee_id=e.reports_to
group by m.employee_id
order by m.employee_id
