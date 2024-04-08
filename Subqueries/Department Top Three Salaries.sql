
select d.name as Department,e1.name as Employee,e1.salary as Salary
from Employee e1 join Department d
on e1.departmentid=d.id
where (select count(distinct e2.salary) from Employee e2 where
        e1.departmentid=e2.departmentid and e2.salary>e1.salary ) <3




