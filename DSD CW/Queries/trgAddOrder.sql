--Adds to the modification log when insert is performed
CREATE TRIGGER trgAddOrder ON [Order]
FOR INSERT
AS
INSERT INTO ModificationLog(TableAffected, TypeOfChange, TimestampOfChange)
VALUES('Order', 'INSERT', GETDATE());