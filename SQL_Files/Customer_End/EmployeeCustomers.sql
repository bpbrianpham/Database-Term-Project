CREATE TABLE EmployeeCustomers (
  cID INT NOT NULL,
  employeeDiscount FLOAT NULL,
  CONSTRAINT employee_customers_pk 
	PRIMARY KEY (cID),
  CONSTRAINT employee_customers_fk 
	FOREIGN KEY (cID)
	REFERENCES Customers (cID)
);

INSERT INTO EmployeeCustomers
	(cID,	employeeDiscount) VALUES
    (36,	0.85),
    (37,	0.85),
    (38,	0.85),
    (39,	0.85),
    (40,	0.85),
    (41,	0.85),
    (42,	0.85),
    (43,	0.85),
    (44,	0.85),
    (45,	0.85),
    (46,	0.85),
    (47,	0.85),
    (48,	0.85),
    (49,	0.85),
    (50,	0.85);