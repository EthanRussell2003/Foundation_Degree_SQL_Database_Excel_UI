--Adds to the modification log when insert is performed
CREATE TRIGGER trgAddPaymentType ON [Payment Type]
FOR INSERT
AS
INSERT INTO ModificationLog(TableAffected, TypeOfChange, TimestampOfChange)
VALUES('Payment Type', 'INSERT', GETDATE());