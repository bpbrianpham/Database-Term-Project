CREATE TABLE CorporationAddresses (
  cID INT NOT NULL,
  address VARCHAR(30) NOT NULL,
  addressType VARCHAR(30) NOT NULL,
  CONSTRAINT corporation_addresses_pk 
	PRIMARY KEY (cID, address, addressType),
  CONSTRAINT corporation_addresses_fk 
	FOREIGN KEY (cID)
	REFERENCES Customers (cID)
);

INSERT INTO CorporationCustomers
	(cID,	address,		addressType) VALUES
	(42,	'1342 Drag Str',		''),
    (42,	'3214 Dart Blvd',		''),
    (42,	'6532 Cake Ln',		''),
    (43,	'8888 ',		''),
    (43,	'5322 ',		''),
    (44,	'9888 ',		''),
    (44,	'4421 ',		''),
    (44,	'5677 ',		''),
    (45,	'1346 ',		''),
    (45,	'2456 ',		''),
    (46,	'1345 ',		''),
    (47,	'7888 ',		''),
    (47,	'2345 ',		''),
    (48,	'7532 ',		''),
    (48,	'5654 ',		''),
    (49,	'4325 ',		''),
    (50,	'7653 ',		''),
    (50,	'4325 ',		'');
    
    
    
    
    