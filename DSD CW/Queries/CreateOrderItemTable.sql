--Creates the Order Item link table
CREATE TABLE [Order Item] (
    OrderID int,
    ProductID int,
    Quantity int NOT NULL,
    PRIMARY KEY (OrderID, ProductID), --Composite primary key
    FOREIGN KEY (OrderID) REFERENCES [Order](OrderID), --Foreign key from the Order table
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID) --Foreign key from the product table
);