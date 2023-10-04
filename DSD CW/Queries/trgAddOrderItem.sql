--Adds to the modification log when insert is performed
CREATE TRIGGER trgAddOrderItem ON [Order Item]
FOR INSERT
AS
INSERT INTO ModificationLog(TableAffected, TypeOfChange, TimestampOfChange)
VALUES('Order Item', 'INSERT', GETDATE());