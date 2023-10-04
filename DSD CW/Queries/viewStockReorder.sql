--Displays the stock for each item and if reordering is required
CREATE VIEW viewStockReorder
AS
SELECT p.ProductName AS [Product], p.Brand, p.Make, p.Stock, s.SupplierName AS [Supplier], 
CASE WHEN p.Stock <= 5 THEN 'Yes' ELSE 'No' END AS Reorder
FROM Product p
JOIN Supplier s ON p.SupplierID = s.SupplierID;