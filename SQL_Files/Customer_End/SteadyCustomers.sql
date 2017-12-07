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

INSERT INTO SteadyCustomers
	(cID,	loyaltyPoints,	annualSpent,	eMailMessages) VALUES
    (16,	38,				888.88 ,		'The next checkup will be on 2019-12-05'),
    (17,	19,				999.99 ,		'The next checkup will be on 2019-01-07'),
    (18,	09,				909.00 ,		'The next checkup will be on 2019-01-03'),
    (19,	12,				212.12 ,		'The next checkup will be on 2019-12-14'),
    (20,	32,				232.32 ,		'The next checkup will be on 2019-01-06'),
    (21,	43,				434.34 ,		'The next checkup will be on 2019-01-03'),
    (22,	04,				454.44 ,		'The next checkup will be on 2019-12-05'),
    (23,	76,				676.77 ,		'The next checkup will be on 2019-01-07'),
    (24,	33,				444.55 ,		'The next checkup will be on 2019-11-03'),
    (25,	05,				567.78 ,		'The next checkup will be on 2019-05-05'),
    (26,	31,				567.89 ,		'The next checkup will be on 2019-08-20'),
    (27,	35,				653.11 ,		'The next checkup will be on 2019-09-24'),
    (28,	19,				766.78 ,		'The next checkup will be on 2019-12-08'),
    (29,	09,				776.67 ,		'The next checkup will be on 2019-09-02'),
    (30,	67,				558.94 ,		'The next checkup will be on 2019-08-12'),
    (31,	08,				658.75 ,		'The next checkup will be on 2019-07-15'),
    (32,	65,				324.15 ,		'The next checkup will be on 2019-12-10'),
    (33,	54,				435.32 ,		'The next checkup will be on 2019-04-04'),
    (34,	42,				424.44 ,		'The next checkup will be on 2019-08-16'),
    (35,	42,				234.34 ,		'The next checkup will be on 2019-01-18');