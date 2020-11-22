/**
Найти покупателей которые ничего не заказывали
 */
Create table If Not Exists Customers
(Id int, Name varchar(255)
constraint pk_customers PRIMARY KEY (Id)
);
Create table If Not Exists Orders
(Id int, CustomerId int
constraint pk_orders (ID)
);

insert into Customers (Id, Name) values ('1', 'Joe');
insert into Customers (Id, Name) values ('2', 'Henry');
insert into Customers (Id, Name) values ('3', 'Sam');
insert into Customers (Id, Name) values ('4', 'Max');
insert into Orders (Id, CustomerId) values ('1', '3');
insert into Orders (Id, CustomerId) values ('2', '1');

select c.Name Names
from Customers c
where Name not in
(select cx.Name from Customers cx inner join Orders on cx.Id = Orders.CustomerId);