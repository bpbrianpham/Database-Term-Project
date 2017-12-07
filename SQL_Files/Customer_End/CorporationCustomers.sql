CREATE TABLE CorporationCustomers (
  cID INT NOT NULL,
  corpName VARCHAR(20) NULL,
  corpType VARCHAR(20) NULL,
  CONSTRAINT corporation_customers_pk 
	PRIMARY KEY (cID),
  CONSTRAINT corporation_customers_fk 
	FOREIGN KEY (cID)
	REFERENCES Customers (cID)
);

INSERT INTO CorporationCustomers
	(cID,	corpName,		corpType) VALUES
	(42,	'Craigslist',	'Public'),
    (43,	'Fame',			'Professional'),
    (44,	'Wish',			'Non-Profit'),
    (45,	'PokeStar',		'Foreign'),
    (46,	'Fantasy',		'Professional'),
    (47,	'Doors-R-Us',	'Public'),
    (48,	'Windows-R-Us',	'Public'),
    (49,	'Apple Inc.',	'Private'),
    (50,	'Oracle',		'Private');