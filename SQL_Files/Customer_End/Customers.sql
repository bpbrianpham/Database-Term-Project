CREATE TABLE Customers (
  cID INT NOT NULL,
  eMail VARCHAR(45) NULL,
  phoneNumber VARCHAR(10) NULL,
  cDateRegistered DATE NULL,
  address VARCHAR(45) NULL,
  CONSTRAINT customer_pk 
	PRIMARY KEY (cID)
);
