CREATE TABLE SteadyCustomers (
  cID INT NOT NULL,
  loyaltyPoints INT NULL,
  annualSpent FLOAT NULL,
  eMailMessages TEXT NULL,
  CONSTRAINT steady_customers_pk 
	PRIMARY KEY (cID),
  CONSTRAINT steady_customers_fk 
	FOREIGN KEY (cID)
	REFERENCES Customers (cID)
);