/**
Найти второе по величине значение
 */
Create table If Not Exists Employee
(Id int, Salary int
constraint pk_employee PRIMARY KEY (Id)
);
insert into Employee (Id, Salary) values ('1', '100');
insert into Employee (Id, Salary) values ('2', '200');
insert into Employee (Id, Salary) values ('3', '300');

select MAX(Salary) SecondHigestSalary
from employee where Salary < (Select MAX(Salary) from employee);