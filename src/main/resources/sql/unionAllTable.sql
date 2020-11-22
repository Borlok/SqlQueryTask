/**
Объеденить все таблицы
 */
Create table Person
 (PersonId int, FirstName varchar(255), LastName varchar(255),
 constraint pk_person PRIMARY KEY (PersonId)
 );
Create table Address
(AddressId int, PersonId int, City varchar(255), State varchar(255),
 constraint pk_address PRIMARY KEY (AddressId)
);
insert into Person (PersonId, LastName, FirstName) values ('1', 'Wang', 'Allen');
insert into Address (AddressId, PersonId, City, State) values ('1', '1', 'New York City', 'New York');

select p.FirstName, p.LastName, a.City, a.State
from Person p join address a on p.PersonId = a.PersonId;