select isnull(
(select top 1 salary   
from Employee 
where salary not in (select top 1 salary
                    from employee
                    order by salary desc)
order by salary desc),
null)as SecondHighestSalary