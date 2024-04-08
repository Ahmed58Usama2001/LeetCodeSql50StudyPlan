select p.project_id , ROUND(AVG(CAST(e.experience_years aS DECIMAL(10,2))) ,2) as average_years 
from Project p inner join Employee e on p.employee_id=e.employee_id
group by p.project_id