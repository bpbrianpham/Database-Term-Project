CREATE TABLE ProspectContacts (
	rID INTEGER NOT NULL,
	contactDateTime DATETIME NOT NULL,
	contactType VARCHAR(50),
	CONSTRAINT prospContacts_pk PRIMARY KEY (rID),
	CONSTRAINT referrals_fk FOREIGN KEY (rID) REFERENCES ProspectiveCustomers (rID)
);

INSERT INTO ProspectContacts 
	(rID, contactDateTime, contactType)
	VALUES
	(1, '2017-12-09', 'email'),
	(2, '2017-12-15', 'phone'),
	(3, '2017-12-16', 'mail'),
	(4, '2017-12-17', 'email');