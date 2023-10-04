--Allows user to delete an order item
CREATE PROCEDURE spDeleteOrderItem
@TargetOrderID int,
@TargetProductID int
AS
DELETE FROM [Order Item] 
WHERE OrderID = @TargetOrderID AND ProductID = @TargetProductID;
GO