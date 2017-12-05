CREATE TABLE PremierCustomers (
  cID INT NOT NULL,
  annualFee FLOAT NULL,
  CONSTRAINT premier_customers_pk 
  PRIMARY KEY (cID),
  CONSTRAINT premier_customers_fk 
  FOREIGN KEY (cID)
  REFERENCES Customers (cID)
);