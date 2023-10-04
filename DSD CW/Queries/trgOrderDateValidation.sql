--Stops user from creating orders in the past
CREATE TRIGGER trgOrderDateValidation ON [Order]
INSTEAD OF INSERT
AS
DECLARE @Date date
SET @Date = (SELECT OrderDate FROM inserted)
IF( @Date < GETDATE()) RAISERROR('Cannot create an order in the past', 16,1)
ELSE
	INSERT INTO [Order](OrderDate, PaymentID, CustomerID, Notes) SELECT OrderDate, PaymentID, CustomerID, Notes FROM inserted;
