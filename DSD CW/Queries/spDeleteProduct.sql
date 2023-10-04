CREATE PROCEDURE spDeleteProduct
@TargetProductID int
AS

DELETE FROM [Order Item] WHERE ProductID = @TargetProductID
DELETE FROM Product WHERE ProductID = @TargetProductID;
GO