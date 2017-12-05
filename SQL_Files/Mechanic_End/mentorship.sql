CREATE TABLE Mentorship (
  mentorID INT NOT NULL,
  menteeID INT NOT NULL,
  startDate DATE NOT NULL,
  endDate DATE,
  CONSTRAINT mShip_pk PRIMARY KEY (mentorID, menteeID, startDate),
  CONSTRAINT mShip_mentor_fk FOREIGN KEY (mentorID) REFERENCES Mechanic(mechID),
  CONSTRAINT mship_mentee_fk FOREIGN KEY (menteeID) REFERENCES Mechanic(mechID)
);
