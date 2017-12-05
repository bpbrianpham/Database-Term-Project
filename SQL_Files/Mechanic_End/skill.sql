CREATE TABLE Skill (
  mechID INT NOT NULL,
  skill VARCHAR(45) NOT NULL,
  CONSTRAINT skill_pk PRIMARY KEY (skill),
  CONSTRAINT skill_mech_fk FOREIGN KEY(mechID) REFERENCES Mechanic(mechID)
);
