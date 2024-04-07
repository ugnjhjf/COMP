CREATE TABLE CHECKOUT
(
    UserID   Number(4),
    ProductID  Number(4),
    ParcelID Number(4),
    CONSTRAINT FK_CHECKOUT_CUSTOMER FOREIGN KEY (UserID) REFERENCES CUSTOMER(UserID),
    CONSTRAINT FK_CHECKOUT_PRODUCT FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID),
    CONSTRAINT FK_CHECKOUT_PARCEL FOREIGN KEY (ParcelID) REFERENCES PARCEL(ParcelID),
    CONSTRAINT PK_CHECKOUT PRIMARY KEY (UserID,ProductID)
);