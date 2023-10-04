--Allows user to add a new supplier
CREATE PROCEDURE spAddSupplier
@SupplierName nvarchar(50),
@TelNo char(11),
@Email nvarchar(60)

AS

INSERT INTO Supplier(SupplierName, TelNo, Email)
VALUES(@SupplierName, @TelNo, @Email);
GO