--Allows user to add a new order
CREATE PROCEDURE spAddOrder
@OrderDate date,
@PaymentID int,
@CustomerID int,
@Notes nvarchar(100)
AS
INSERT INTO [Order](OrderDate, PaymentID, CustomerID, Notes)
VALUES(@OrderDate, @PaymentID, @CustomerID, @Notes);
GO