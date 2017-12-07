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

INSERT INTO IndividualCustomers
	(cID,	indivName,			indivDOB) VALUES
    (01,	'Andrew Brens',		'1999-01-06'),
    (02,	'Christine Robins',	'1995-11-18'),
    (03,	'Thomas Gale',		'1999-01-02'),
    (04,	'Derrick Gale',		'1993-05-22'),
    (05,	'Chris Late',		'1997-07-04'),
    (06,	'Cann Plus',		'1996-09-08'),
    (07,	'Ashley Minus',		'1998-05-05'),
    (08,	'Don Queue',		'1991-04-02'),
    (09,	'Bobby Boy',		'1998-09-07'),
    (10,	'Gregg Game',		'1996-08-09'),
    (11,	'Dick Doss',		'1991-05-22'),
    (12,	'Quinn Randy',		'1993-03-12'),
    (13,	'Peter Poppins',	'1997-01-09'),
    (14,	'Tim Tommy',		'1993-04-12'),
    (15,	'Harry Potter',		'1994-08-16'),
    (16,	'Hermione Granger',	'1999-12-07'),
    (17,	'Albus Dumbledore',	'1991-01-15'),
    (18,	'Ron Weasley',		'1992-01-08'),
    (19,	'George Andalf',	'1993-12-19'),
    (20,	'Rick Roy',			'1994-01-03'),
    (21,	'Dan Lot',			'1996-01-01'),
    (22,	'Arthur Sand',		'1999-12-27'),
    (23,	'Bryan Sup',		'1991-01-09'),
    (24,	'Prim Ron',			'1991-11-07'),
    (25,	'Oswald Kay',		'1990-05-05'),
    (26,	'Randy Gen',		'1997-08-23'),
    (27,	'Gal Randy',		'1995-09-02'),
    (28,	'Ben Fanta',		'1994-12-04'),
    (29,	'Paul Power',		'1991-09-05'),
    (30,	'Rondy Eanal',		'1992-08-06'),
    (31,	'Erney Astal',		'1993-07-07'),
    (32,	'Pammy Ortal',		'1990-12-18'),
    (33,	'Delaney Ragon',	'1998-04-09'),
    (34,	'Carly Razy',		'1997-08-01'),
    (35,	'Melaney Aiden',	'1998-01-01'),
    (36,	'Ren Ocker',		'1997-12-03'),
    (37,	'Rey Ainin',		'1996-01-04'),
    (38,	'Francis Uall',		'1995-09-25'),
    (39,	'Tuck Hisis',		'1992-08-07'),
    (40,	'Larry Aming',		'1994-11-08'),
    (41,	'Osaya Kok',		'1994-02-03');