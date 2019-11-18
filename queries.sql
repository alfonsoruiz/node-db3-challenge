-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName 
FROM Product
JOIN Category
ON Product.CategoryId = Category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT Id, CompanyName, OrderDate 
FROM [Order]
JOIN Shipper
ON [Order].ShipVia = Shipper.Id
WHERE [Order].OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT ProductName, Quantity, Id
FROM [Order]
JOIN OrderDetail
ON [Order].Id = OrderDetail.OrderId
Join Product
ON OrderDetail.ProductId = Product.Id
WHERE [Order].id = 10251
GROUP BY ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT OrderId, CompanyName, LastName from [Order]
JOIN OrderDetail
ON [Order].id = OrderDetail.OrderId
JOIN Customer
ON [Order].CustomerId = Customer.id
JOIN Employee
ON [Order].EmployeeId = Employee.Id
GROUP BY [Order].id;