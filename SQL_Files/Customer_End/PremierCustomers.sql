CREATE TABLE PremierCustomers (
  cID INT NOT NULL,
  annualFee FLOAT NULL,
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
	(cID,	annualFee) VALUES
    (01,	48.33),
    (02,	34.80),
    (03,	110.40),
    (04,	45),
    (05,	97.06),
    (06,	115),
    (07,	60.75),
    (08,	27.50),
    (09,	96.67),
    (10,	58),
    (11,	6.96),
    (12,	696),
    (13,	62.83),
    (14,	66.92),
    (15,	14.5);