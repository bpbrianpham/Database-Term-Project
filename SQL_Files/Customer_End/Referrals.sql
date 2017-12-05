/*
Business rules.
 => only accept one referral for a given
	prospective customer.
*/

CREATE TABLE Referrals (
	rFirstName VARCHAR(100) NOT NULL,
	rLastName VARCHAR(100) NOT NULL,
	referralDate DATE NOT NULL,
	cID INTEGER NOT NULL,
	rID INTEGER NOT NULL,
	CONSTRAINT referrals_fk FOREIGN KEY (cID) REFERENCES Customers,
	CONSTRAINT referral_pk PRIMARY KEY (cID, rID)
);