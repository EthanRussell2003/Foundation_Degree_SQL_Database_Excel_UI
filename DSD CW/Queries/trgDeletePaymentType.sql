--Adds to the modification log when delete is performed
CREATE TRIGGER trgDeletePaymentType ON [Payment Type]
FOR DELETE
AS
INSERT INTO ModificationLog(TableAffected, TypeOfChange, TimestampOfChange)
VALUES('Payment Type', 'DELETE', GETDATE());