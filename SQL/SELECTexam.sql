SELECT ProductID, ProductName, SupplierID, Unit, Price, CategoryName
FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID
ORDER BY Price
LIMIT 5;

SELECT e.EmployeeID, LastName, FirstName, BirthDate, Photo, Notes, COUNT(OrderID) AS OrdersCount
FROM Orders o JOIN Employees e ON o.EmployeeID = e.EmployeeID
GROUP BY o.EmployeeID;

SELECT CustomerName, FirstName AS EmployeeFirstName, LastName AS EmployeeLastName
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Employees e ON o.EmployeeID = e.EmployeeID
ORDER BY OrderID
LIMIT 5;