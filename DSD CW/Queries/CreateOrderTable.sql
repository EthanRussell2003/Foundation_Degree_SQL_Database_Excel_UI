--Create the order table
CREATE TABLE [Order] (
    OrderID int PRIMARY KEY IDENTITY(1,1), --Primary key which automatically increments
    OrderDate date NOT NULL,
    PaymentID int FOREIGN KEY REFERENCES [Payment Type](PaymentID) NOT NULL, --Foreign key from the payment type table
    CustomerID int FOREIGN KEY REFERENCES Customer(CustomerID) NOT NULL, --Foreign eky from the customer table
    Notes nvarchar(100) --Optional field
);