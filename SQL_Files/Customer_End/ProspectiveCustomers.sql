/*
Business rules.
 => only accept one referral for a given
	prospective customer.

=> If a prospective customer does not become a steady or premier customer after three contacts, we flag that customer as a “dead prospect”

=> On a periodic basis, we have specials that we have for first time customers, and either send out E-mail or automated phone calls to the prospective customers

*/

CREATE TABLE cecs323sec3og12.ProspectiveCustomers (
	timesContact INTEGER,
	isActiveMember bool,
	cID INTEGER NOT NULL,
	rID INTEGER NOT NULL,
	CONSTRAINT prospC_referrals_fk FOREIGN KEY (cID, rID) REFERENCES Referrals (cID, rID),
	CONSTRAINT pc_pk PRIMARY KEY (rID)
);

INSERT INTO ProspectiveCustomers (timesContact, isActiveMember, cID, rID)
	VALUES
	(1, 0, 6, 1),
	(1, 1, 12, 2),
	(1, 0, 15, 3),
	(1, 1, 21, 4);