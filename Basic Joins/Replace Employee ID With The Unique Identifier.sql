select EmployeeUNI.unique_id , Employees.name
from EmployeeUNI right join Employees on EmployeeUNI.id=Employees.id