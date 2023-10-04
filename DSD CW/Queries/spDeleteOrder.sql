--Allows user to delete an order
CREATE PROCEDURE spDeleteOrder
@TargetOrderID int
AS
--Deletes associated elements
DELETE FROM [Order Item] WHERE OrderID = @TargetOrderID
DELETE FROM [Order] WHERE OrderID = @TargetOrderID;
GO