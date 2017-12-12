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
	CONSTRAINT customers_fk FOREIGN KEY (cID) REFERENCES Referrals (cID),
	CONSTRAINT referral_pk PRIMARY KEY (cID, rID)
);

INSERT INTO Referrals (rFirstName, rLastName, referralDate, cID, rID)
	VALUES
	('Johny', 'Bravo', '2017-12-09', 06, 1),
	('James', 'Dean', '2017-12-15', 12, 2),
	('Steve', 'McQueen', '2017-12-16', 15, 3),
	('Marlon', 'Brando', '2017-12-17', 21, 4);
    
INSERT INTO Referrals (rFirstName, rLastName, referralDate, cID, rID)
	VALUES
    ('Timmy', 'Johnson', '2017-08-21', 29, 5),
    ('Bohan', 'Johnson', '2017-10-11', 44, 6),
    ('Jim', 'Meyers', '2017-02-23', 32, 7),
    ('Stefanie', 'Laura', '2015-01-22', 28, 8),
    ('Heinz', 'Doof', '2017-09-07', 7, 9),
    ('Perry', 'Flynn', '2016-04-11', 17, 10);