-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT p.ProductName, c.CategoryName
FROM Product AS p
JOIN Category AS c
ON c.Id = p.CategoryId

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.Id, s.CompanyName
FROM [Order] AS o
JOIN Shipper AS s
ON o.ShipVia = s.Id
WHERE o.OrderDate < DATE("2012-08-09")

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT ProductName, Quantity 
FROM OrderDetail
JOIN [Order] AS OON OrderId = O.id
JOIN Product AS Pr
ON ProductId = Pr.id
WHERE OrderId = 10251
ORDER BY ProductName

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT Id, CompanyName, LastName
FROM [Order] AS O
JOIN Customer AS Cus
ON CustomerId = Cus.Id
JOIN Employee AS Emp
ON EmployeeId = Emp.id