--Allows user to delete a payment type
CREATE PROCEDURE spDeletePaymentType
@TargetPaymentID int
AS
--Deletes associated elements
DELETE FROM [Order Item] WHERE OrderID IN (
SELECT OrderID 
FROM [Order]
WHERE PaymentID = @TargetPaymentID
);
DELETE FROM [Order] WHERE PaymentID = @TargetPaymentID
DELETE FROM [Payment Type] WHERE PaymentID = @TargetPaymentID;
GO