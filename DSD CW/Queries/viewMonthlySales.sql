--Displays the total orders, number of items sold and the revenue for this month
CREATE VIEW viewMonthlySales
AS
SELECT FORMAT(o.OrderDate, 'MM-yyyy') AS [Date], COUNT(DISTINCT o.OrderID) AS [Total Orders],
       SUM(oi.Quantity) AS [Total Quantity Sold], SUM(oi.Quantity * p.Price) AS [Total Sales Revenue]
FROM [Order] o
JOIN [Order Item] oi ON o.OrderID = oi.OrderID
JOIN Product p ON oi.ProductID = p.ProductID
WHERE MONTH(OrderDate) = MONTH(GETDATE()) AND YEAR(OrderDate) = YEAR(GETDATE())
GROUP BY FORMAT(o.OrderDate, 'MM-yyyy');