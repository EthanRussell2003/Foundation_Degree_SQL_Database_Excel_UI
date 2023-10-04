--Allows user to update payment type information
CREATE PROCEDURE spUpdatePaymentType
@TargetProductID int,
@PaymentName nvarchar(20),
@Description nvarchar(100)

AS
UPDATE [Payment Type]
SET PaymentName = @PaymentName, [Description] = @Description
WHERE @TargetProductID = PaymentID;
GO