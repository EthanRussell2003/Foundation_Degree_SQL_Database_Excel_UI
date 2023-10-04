--Allows user to add a new product
CREATE PROCEDURE spAddProduct
@ProductName nvarchar(50),
@Brand nvarchar(50),
@Make nvarchar(50),
@Price money,
@Stock int,
@SupplierID int,
@Discontinued bit

AS

INSERT INTO Product(ProductName, Brand, Make, Price, Stock, SupplierID, Discontinued)
VALUES(@ProductName, @Brand, @Make, @Price, @Stock, @SupplierID, @Discontinued);
GO