CREATE TABLE VehicleModelInfo (
	myVehicleID INTEGER NOT NULL,
	make VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	maintanenceInterval INTEGER NOT NULL,
	yearMade YEAR,
	CONSTRAINT vehicleInfo_pk PRIMARY KEY(myVehicleID)
);

/* -------
still working on inserting the data
------- */

INSERT INTO cecs323sec3og12.VehicleModelInfo 
    (myVehicleID, make, model, maintanenceInterval, yearMade) VALUES
	(1, 'Toyota', 'Corolla', 12000, '2017'),
	(2, 'Toyota', 'Camry', 20000, '2002'),
	(3, 'Jeep', 'Wrangler', 10000, '2012'),
	(4, 'Jeep', 'Grand Cherokee', 15000, '2011'),
	(5, 'Jeep', 'Patriot', 17000, '1992'),
	(6, 'Lamborghini', 'Aventador', 18000, '2005'),
	(7, 'Lamborghini', 'Huracan', 20000, '2014'),
	(8, 'Ferrari', '488', 10000, '2010'),
	(9, 'Ferrari', '458', 12000, '2012'),
	(10, 'Ferrari', 'Spider', 14000, '1999'),

	(11, 'Jaguar', 'XJ', 10000, '2013'),
	(12, 'Jaguar', 'XKSS', 1000, '2011'),
	(13, 'Jaguar', 'XF', 12000, '2009'),
	(14, 'Jaguar', 'XE', 13000, '2004'),
	(15, 'Honda', 'Accord', 10000, '2015'),
	(16, 'Honda', 'Civic', 16000, '2013'),
	(17, 'Honda', 'CRV', 15000, '2018'),
	(18, 'Porsche', '718 Cayman', 13000, '2020'),
	(19, 'Porsche', '718 Boxster', 1500, '2007'),
	(20, 'Porsche', '911 Carrera', 1800, '2009'),

	(21, 'Maserati', 'GranTurismo', 1400, '2016'),
	(22, 'Maserati', 'Levante', 1100, '2016'),
	(23, 'Maserati', 'Quattroporte', 1500, '2013'),
	(24, 'Maserati', 'Ghibli', 1200, '2011'),
	(25, 'Tesla', 'Model S', 1500, '2010');