--Displays the customers name and details of the their total ordered products and money spent
CREATE VIEW viewCustomerSales
AS
SELECT c.Forename + c.Surname AS [Name], SUM(oi.Quantity) AS [Number of Items Purchased], SUM(oi.Quantity * p.Price) AS [Revenue]
FROM Customer c
JOIN [Order] o ON c.CustomerID = o.CustomerID
JOIN [Order Item] oi ON o.OrderID = oi.OrderID
JOIN Product p ON oi.ProductID = p.ProductID
GROUP BY c.CustomerID, c.Forename, c.Surname;