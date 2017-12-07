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
	(11, 15, 'air-conditioning'), 	   /* 11 certified in air-conditioning */
	(13, 14, 'electrical systems'),    /* 13 certified in electrical systems */
    (13, 20, 'electrical systems'),    
    (15, 12, 'brakes'), 			   /* 15 certified in brakes*/
	(16, 15, 'transmission');		   /* 16 certified in transmission */
    (18, 20, 'computer systems'), 	   /* 18 certified in computer-systems */
    (18, 11, 'computer systems'), 
	(20, 14, 'front-end')			   /* 20 certified in front-end */
    
   
    
