/*
Business rules.
 => only accept one referral for a given
	prospective customer.
*/

CREATE TABLE cecs323sec3og12.Referrals (
	rFirstName VARCHAR(100) NOT NULL,
	rLastName VARCHAR(100) NOT NULL,
	referralDate DATE NOT NULL,
	cID INTEGER NOT NULL,
	rID INTEGER NOT NULL,
	CONSTRAINT customers_fk FOREIGN KEY (cID) REFERENCES Customers (cID),
	CONSTRAINT referral_pk PRIMARY KEY (cID, rID)
);