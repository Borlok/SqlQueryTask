package com.borlok.sqlquerytask;

public class Main {
    /**
     * select p.FirstName, p.LastName, a.City, a.State from Person p join Address a;
     * select MAX(Salary) SecondHigestSalary from employee where Salary < (Select MAX(Salary) from employee);
     * select er.Name from employee e inner join employee er on e.Id = er.ManagerId where er.Salary > e.Salary;
     * select email from Person group by email having count(*) > 1;
     * select c.Name Names from Customers c where Name not in (select cx.Name from Customers cx inner join Orders on cx.Id = Orders.CustomerId);
     * select class from courses group by class having count(*) >= 5;
     */
    public static void main(String[] args) {

    }
}
