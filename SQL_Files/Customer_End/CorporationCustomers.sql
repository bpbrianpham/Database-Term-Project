CREATE TABLE CorporationCustomers (
  cID INT NOT NULL,
  corpName VARCHAR(20) NULL,
  corpType VARCHAR(20) NULL,
  CONSTRAINT corporation_customers_pk 
	PRIMARY KEY (cID),
  CONSTRAINT corporation_customers_fk 
	FOREIGN KEY (cID)
	REFERENCES Customers (cID)
);