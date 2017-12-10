CREATE TABLE ProspectContacts (
	rID INTEGER NOT NULL,
	contactDateTime DATETIME NOT NULL,
	contactType VARCHAR(50),
	CONSTRAINT prospContacts_pk PRIMARY KEY (rID),
	CONSTRAINT referrals_fk FOREIGN KEY (rID) REFERENCES ProspectiveContacts (rID)
);
