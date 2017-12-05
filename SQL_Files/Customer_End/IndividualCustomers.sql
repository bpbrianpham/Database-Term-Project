CREATE TABLE IndividualCustomers (
  cID INT NOT NULL,
  indivName VARCHAR(20) NULL,
  indivDOB DATE NULL,
  CONSTRAINT individual_customers_pk 
	PRIMARY KEY (cID),
  CONSTRAINT individual_customers_fk 
	FOREIGN KEY (cID)
	REFERENCES Customers (cID)
);