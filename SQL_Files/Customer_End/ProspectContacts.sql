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
	(1, '2017-12-09 12:03:45', 'email'),
	(2, '2017-12-15 12:34:52', 'phone'),
	(3, '2017-12-16 12:13:45', 'mail'),
	(4, '2017-12-17 13:33:45', 'email');