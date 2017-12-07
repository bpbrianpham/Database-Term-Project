CREATE TABLE Employee (
  empID INT NOT NULL,
  eName VARCHAR(80) NULL,
  eDOB DATE NULL,
  ePhone VARCHAR(45) NULL,
  eEmail VARCHAR(45) NULL,
  eSalary FLOAT NULL,
  CONSTRAINT emp_pk PRIMARY KEY (empID)
  );

/* Employees get a 15% discount for all services */
  

INSERT INTO Employee (empID, eName, eDOB, ePhone, eEmail, eSalary) VALUES
	(1, 'Arlan Steward', '1995/12/10', '714-564-5487', 'asteward0@gmail.com', 33000),
	(2, 'Tomasine Drinkwater', '1953/08/07', '116-677-1776', 'tdrinkwater1@yahoo.com', 58000),
	(3, 'Callie Vandenhoff', '1970/07/17', '404-843-4754', 'cvandenhoff2@hotmail.com', 55000),
	(4, 'Leettle Hiney', '1929/09/27', '705-480-2457', 'lhiney@gmail.com', 53000),
	(5, 'Augustine Hupps', '1975/09/16', '777-719-5328', 'ahupps@yahoo.com', 36000),
	(6, 'Nicol Jardin', '1938/07/05', '689-189-2960', 'njardin5@gmail.com', 48000),
	(7, 'Devora Butternut', '1995/07/18', '915-890-9862', 'butternut90@bing.com', 37000),
	(8, 'Giles Bucher', '1974/10/16', '661-627-5041', 'gbucher7@gmail.com', 36000),
	(9, 'Karlotta Gamlin', '1976/02/28', '995-596-7823', 'kgamlin8@yahoo.com', 34000),
	(10, 'Mahmud Pinball', '1932/08/18', '814-958-5736', 'mahball@bing.com', 51000),
	(11, 'Shayna Di Franceshci', '1975/08/31', '503-910-2858', 'sdi0@gmail.com', 44000),
	(12, 'Iorgos Kiddey', '1990/01/10', '818-526-9020', 'ikiddey1@gmail.com', 46000),
	(13, 'Othilie Duigenan', '2000/10/03', '677-977-3458', 'oduigenan2@yahoo.com', 56000),
	(14, 'Mariann Rzehorz', '1973/03/30', '680-665-9507', 'mrzehorz3@hotmail.com', 53000),
	(15, 'Pearline Esland', '1930/12/26', '859-171-6235', 'pesland4@gmail.com', 57000),
	(16, 'Willdon Demkowicz', '1975/11/06', '901-609-6910', 'wdemkowicz5@yahoo.com', 47000),
	(17, 'Tanitansy Probate', '1938/08/22', '242-920-8214', 'tprobate6@hotmail.com', 33000),
	(18, 'Lon Campaigne', '1978/07/03', '518-942-7152', 'lcampaigne7@bing.com', 39000),
	(19, 'Loren Belleny', '1989/09/01', '712-645-8439', 'lbelleny8@godaddy.com', 36000),
	(20, 'Reese Hamelyn', '1957/12/15', '660-555-6604', 'rhamelyn9@godaddy.com', 57000);

