/**
Вывести сотрудников, чья зп больше зп их менеджеров
 */

Create table If Not Exists Employee
(Id int, Name varchar(255), Salary int, ManagerId int
constraint pk_employee PRIMARY KEY (Id)
);
insert into Employee (Id, Name, Salary, ManagerId) values ('1', 'Joe', '70000', '3');
insert into Employee (Id, Name, Salary, ManagerId) values ('2', 'Henry', '80000', '4');
insert into Employee (Id, Name, Salary, ManagerId) values ('3', 'Sam', '60000', 'None');
insert into Employee (Id, Name, Salary, ManagerId) values ('4', 'Max', '90000', 'None');

select e.Name
from employee e inner join employee er on er.Id = e.ManagerId
where e.Salary > er.Salary;
