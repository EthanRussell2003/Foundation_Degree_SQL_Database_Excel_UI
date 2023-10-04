--Displays the most popular product and the revenue gained
CREATE VIEW viewPopularProducts
AS
SELECT p.ProductName AS [Product], SUM(oi.Quantity) AS [Quantity Sold], SUM(oi.Quantity * p.Price) AS [Revenue]
FROM Product p
JOIN [Order Item] oi ON p.ProductID = oi.ProductID
GROUP BY p.ProductID, p.ProductName;