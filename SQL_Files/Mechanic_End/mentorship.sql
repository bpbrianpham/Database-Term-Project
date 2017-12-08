CREATE TABLE Mentorship (
  mentorID INT NOT NULL,
  menteeID INT NOT NULL,
  skillTaught VARCHAR(45) NOT NULL,
  startDate DATE NOT NULL,
  endDate DATE,
  CONSTRAINT mShip_pk PRIMARY KEY (mentorID, menteeID, startDate),
  CONSTRAINT mShip_mentor_fk FOREIGN KEY (mentorID) REFERENCES Mechanic(mechID),
  CONSTRAINT mship_mentee_fk FOREIGN KEY (menteeID) REFERENCES Mechanic(mechID)
);

/*
	diagnostics
	tune-up
	engine repair
	transmission
	brakes
	steering and suspension
	vehicle refinishing
	air-conditioning
	front-end
	bodywork
	electrical systems
	computer systems
	ignition systems
*/

INSERT INTO Mentorship(mentorID, menteeID, skillTaught, startDate, endDate) VALUES
	(11, 15, 'air-conditioning', '2017-01-30', '2017-03-23' ), 	   /* 11 certified in air-conditioning */
	(13, 14, 'electrical systems', '2016-11-08', '2017-11-09'),    /* 13 certified in electrical systems */
    (13, 20, 'electrical systems', '2017-11-10', '2017-11-11'),    
    (15, 12, 'brakes', '2014-10-14', '2017-01-23'),  			   /* 15 certified in brakes*/
	(16, 15, 'transmission', '2017-12-01', null),   	   		   /* 16 certified in transmission */
	(18, 11, 'computer systems', '1990-05-17', '1990-05-19'), 
    (18, 20, 'computer systems', '2017-08-30', null), 	   /* 18 certified in computer-systems */
	(20, 14, 'front-end', '2015-10-10', null);			   /* 20 certified in front-end */
    
   
    
