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
    (01,	),
    (02,	),
    (03,	),
    (04,	),
    (05,	),
    (06,	),
    (07,	),
    (08,	),
    (09,	),
    (10,	),
    (11,	),
    (12,	),
    (13,	),
    (14,	),
    (15,	);