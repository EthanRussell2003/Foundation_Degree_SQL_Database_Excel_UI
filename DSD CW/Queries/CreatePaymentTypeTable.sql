--Create the payment type table
CREATE TABLE [Payment Type] (
    PaymentID int PRIMARY KEY IDENTITY(1,1), --Primary key which automatically increments
    PaymentName nvarchar(20) NOT NULL,
    Description nvarchar(100) --Optional field
);