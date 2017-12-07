CREATE TABLE CorporationAddresses (
  cID INT NOT NULL,
  address VARCHAR(300) NOT NULL,
  addressType VARCHAR(30) NOT NULL,
  CONSTRAINT corporation_addresses_pk 
	PRIMARY KEY (cID, address, addressType),
  CONSTRAINT corporation_addresses_fk 
	FOREIGN KEY (cID)
	REFERENCES Customers (cID)
);

INSERT INTO CorporationAddresses
	(cID,	address,											addressType) VALUES
	(42,	'1342 Drag Str #451, Los Angeles CA 99999',			'P.O. Box'),
    (42,	'3214 Dart Blvd, Los Angeles CA 93214',				'Regular'),
    (42,	'6532 Cake Ln Suite 11, Los Angeles CA 99423',		'Suite'),
    (43,	'8888 News Way #451, Los Angeles CA 93299',			'P.O. Box'),
    (43,	'5322 Orange Blvd Suite 1, Los Angeles CA 99445',	'Suite'),
    (44,	'9888 Yellow Str, Los Angeles CA 96549',			'Regular'),
    (44,	'4421 Pink Way Suite 9, Los Angeles CA 94329',		'Suite'),
    (44,	'5677 Lemon Way #12, Los Angeles CA 95634',			'P.O. Box'),
    (45,	'1346 Orange Str, Los Angeles CA 12399',			'Regular'),
    (45,	'2456 Leaf Way Suite 5A, Los Angeles CA 95349',		'Suite'),
    (46,	'1345 Peel Ln, Los Angeles CA 99432',				'Regular'),
    (47,	'7888 Runner Way, Los Angeles CA 99432',			'Regular'),
    (47,	'2345 Dead Str Suite 6, Los Angeles CA 94399',		'Suite'),
    (48,	'7532 Dream Ln, Los Angeles CA 99976',				'Regular'),
    (48,	'5654 Ripoff Way #32, Los Angeles CA 98759',		'P.O. Box'),
    (49,	'4325 Lol Str, Los Angeles CA 97689',				'Regular'),
    (50,	'7653 Bruh Blvd Suite 2, Los Angeles CA 95799',		'Suite'),
    (50,	'4325 Kill Str, Los Angeles CA 95679',				'Regular');
    
    
    
    
    