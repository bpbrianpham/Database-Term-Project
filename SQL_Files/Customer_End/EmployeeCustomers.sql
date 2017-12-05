CREATE TABLE EmployeeCustomers (
  cID INT NOT NULL,
  employeeDiscount FLOAT NULL,
  CONSTRAINT employee_customers_pk 
  PRIMARY KEY (cID),
  CONSTRAINT employee_customers_fk 
  FOREIGN KEY (cID)
  REFERENCES Customers (cID)
);