--Adds to the modification log when update is performed
CREATE TRIGGER trgUpdatePaymentType ON [Payment Type]
FOR UPDATE
AS
INSERT INTO ModificationLog(TableAffected, TypeOfChange, TimestampOfChange)
VALUES('Payment Type', 'UPDATE', GETDATE());