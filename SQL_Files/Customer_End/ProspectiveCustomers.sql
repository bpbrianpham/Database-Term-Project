/*
Business rules.
 => only accept one referral for a given
	prospective customer.

=> If a prospective customer does not become a steady or premier customer after three contacts, we flag that customer as a “dead prospect”

=> On a periodic basis, we have specials that we have for first time customers, and either send out E-mail or automated phone calls to the prospective customers

*/

CREATE TABLE ProspectiveCustomers (
	timesContact INTEGER,
	isActiveMember bool,
	cID INTEGER NOT NULL,
	rID INTEGER NOT NULL,
	CONSTRAINT customers_fk FOREIGN KEY (cID) REFERENCES Customers,
	CONSTRAINT referrals_fk FOREIGN KEY (rID) REFERENCES Referrals,
	CONSTRAINT pc_pk PRIMARY KEY (rID)
);