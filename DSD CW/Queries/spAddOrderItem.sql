--Allows user to add a new order item
CREATE PROCEDURE spAddOrderItem
@OrderID int,
@ProductID int,
@Quantity int
AS
INSERT INTO [Order Item](OrderID, ProductID, Quantity)
VALUES(@OrderID, @ProductID, @Quantity);
GO