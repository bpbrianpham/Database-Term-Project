CREATE TABLE PremierCustomers (
  cID INT NOT NULL,
  annualFee FLOAT NULL,
  annualSpent FLOAT NULL,
  CONSTRAINT premier_customers_pk 
	PRIMARY KEY (cID),
  CONSTRAINT premier_customers_fk 
	FOREIGN KEY (cID)
	REFERENCES Customers (cID)
);

/*
  simple formula for calculating the monthly payment for premier customers
  ((annualMileage * 5) / correspondingVehicleMaintenanceIntervals) / 12)



*/

INSERT INTO PremierCustomers
	(cID,	annualFee,	annualSpent) VALUES
    (01,	048.33,		040.13),
    (02,	034.80,		015.44),
    (03,	110.40,		100.53),
    (04,	045.00,		133.64),
    (05,	097.06,		020.11),
    (06,	115.00,		111.88),
    (07,	060.75,		090.32),
    (08,	027.50,		011.00),
    (09,	096.67,		048.00),
    (10,	058.00,		033.00),
    (11,	006.96,		018.00),
    (12,	696.00,		543.11),
    (13,	062.83,		018.33),
    (14,	066.92,		048.22),
    (15,	014.50,		028.99);