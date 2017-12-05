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