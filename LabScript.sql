USE Northwind;


--Select * from Customers;


--Select distinct Country from Customers;


--Select * from Customers
--Where CustomerID like 'BL%'

--Select TOP 100 * from Orders
---When the table is huge and you want to see all the column names and data structure



--Select * from Customers
--Where PostalCode in ('1010','3012','12209','05023')


--Select * from Orders
--Where ShipRegion is not null


--Select * from Customers
--Order by Country, City


--Insert INTO Customers (CustomerID,CompanyName,ContactName,ContactTitle,[Address],City,Region,PostalCode,Country, Phone, Fax)
--Values('Apple', 'Beatles', 'Pedro', 'Crooner', 'Something Somewhere', 'Chicago','IL','60616','USA','(1)123-123-4567',null)


--Update Orders Set ShipRegion = 'EuroZone' where ShipCountry = 'France'

--Select * from [Order Details]

--Delete  from [Order Details] Where Quantity = 1



--Select CustomerID from Orders
--Where OrderID = '10290'

--Select * from Customers C
--Inner Join Orders O ON O.CustomerID = C.CustomerID


--Select FirstName from Employees Where ReportsTo is null


--Select * from Employees Where ReportsTo = 2

--CREATE index idx_CustomerId on Customers(CustomerId)




--Calculate the average, max, and min of the quantity at the orderdetails table, grouped by the orderid. 

--Select OrderID, avg(Quantity) AS 'AVG', max(Quantity) AS 'MAX', min(Quantity) AS 'MIN'  from [Order Details] 
--Group By OrderID


--Calculate the average, max, and min of the quantity at the orderdetails table.
--Select avg(Quantity) AS 'AVG', max(Quantity) AS 'MAX', min(Quantity) AS 'MIN'  from [Order Details] 



--Find all customers living in London or Paris
--Select * from Customers
--Where City in ('Paris','London')


--Do an inner join, left join, right join on orders and customers tables. 
--Select * from Customers C
--Inner Join Orders O ON O.CustomerID = C.CustomerID
--Select * from Customers C
--Left Join Orders O ON O.CustomerID = C.CustomerID
--Select * from Customers C
--Right Join Orders O ON O.CustomerID = C.CustomerID



--Make a list of cities where customers are coming from. The list should not have any duplicates or nulls.
--Select distinct City from Customers 


--Show a sorted list of employees’ first names.
--Select * from Employees
--Order by FirstName


--Find total for each order
--Select O.OrderID, sum(O.UnitPrice * O.Quantity) AS Total from [Order Details] O
--Group by O.OrderID


--Get a list of all employees who got hired between 1/1/1994 and today
--Select * from Employees
--Where HireDate between '1/1/1994' and '5/23/2024'


--Find how long employees have been working for Northwind (in years!)
--Select datediff(YEAR,HireDate,'5/23/2024') AS WorkYears from Employees


--Get a list of all products sorted by quantity (ascending and descending order)
--Select * from Products
--Order BY UnitsInStock 

--Select * from Products
--Order BY UnitsInStock DESC

--Find all products that are low on stock (quantity less than 6)
--Select * from Products
--Where UnitsInStock <6


--Find a list of all discontinued products. 
--Select * from Products
--Where Discontinued = 1;



--Find a list of all products that have Tofu in the product name.
--Select * from Products
--Where ProductName like '%tofu%'

--Find the product that has the highest unit price. 
--Select ProductName, UnitPrice from Products
--Where UnitPrice = (Select MAX(UnitPrice) from Products)


--Get a list of all employees who got hired after 1/1/1993
--Select * from Employees	
--Where HireDate > '1/1/1993'

--Get all employees who have title : “Ms.” And “Mrs.”
--Select * from Employees
--Where TitleOfCourtesy in ('Ms.','Mrs.')

--Get all employees who have a Home phone number that has area code 206
--Select * from Employees
--Where HomePhone like '(206%'

