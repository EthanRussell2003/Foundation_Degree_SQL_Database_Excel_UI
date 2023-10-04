--Allows user to add a new payment type
CREATE PROCEDURE spAddPaymentType
@PaymentName nvarchar(50),
@Description nvarchar(100)
AS

INSERT INTO [Payment Type](PaymentName, Description)
VALUES(@PaymentName, @Description);
GO