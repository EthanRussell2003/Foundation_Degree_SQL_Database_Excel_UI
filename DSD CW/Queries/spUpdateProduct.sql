--Allows user to update product information
CREATE PROCEDURE spUpdateProduct
@TargetProductID int,
@ProductName nvarchar(50),
@Brand nvarchar(50),
@Make nvarchar(50),
@Price money,
@Stock int,
@SupplierID int,
@Discontinued bit
AS
UPDATE Product
SET ProductName = @ProductName, Brand = @Brand, Make = @Make, 
Price = @Price, Stock = @Stock, SupplierID = @SupplierID, Discontinued = @Discontinued
WHERE @TargetProductID = ProductID;
GO