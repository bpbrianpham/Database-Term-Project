CREATE TABLE Skill (
  mechID INT NOT NULL,
  skill VARCHAR(45) NOT NULL,
  CONSTRAINT skill_pk PRIMARY KEY (skill),
  CONSTRAINT skill_mech_fk FOREIGN KEY(mechID) REFERENCES Mechanic(mechID)
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
INSERT INTO Skill(mechID, skill) VALUES
	(11, 'air-conditioning'), (11, 'diagnostics'), (11, 'engine-repair'),
    (11, 'transmission'), (11, 'brakes'), (11, 'steering and suspension'),
    
    (12, 'steering and suspension'), (12, 'vehicle refinishing'), (12, 'front-end'),  
    (12, 'electrical systems'), (12, 'computer systems'), (12, 'ignition systems'),
    
	(13, 'electrical systems'), (13, 'diagnostics'), (13, 'engine-repair'),
    (13, 'air-conditioning'), (13, 'computer systems'), (13, 'ignition systems'),
    
    (14, 'diagnostics'), (14, 'engine-repair'), (14, 'transmission'), 
    (14, 'brakes'), (14, 'steering and suspension'), (14, 'body-work'), 
    (14, 'vehicle refinishing'), (14, 'ignition systems'),
    
    
    (15, 'engine-repair'), (15, 'steering and suspension'),
    (15, 'vehicle refinishing'), (15, 'front-end'), (15, 'body-work'), (15, 'electrical systems'),
    
    (11, 'air-conditioning'), (11, 'diagnostics'), (11, 'engine-repair'),
    (11, 'transmission'), (11, 'brakes'), (11, 'steering and suspension'),
    (11, 'vehicle refinishing'), (11, 'front-end'), (11, 'body-work'), 
    (11, 'electrical systems'),(11, 'computer systems'), (11, 'ignition systems'),
    
    (11, 'air-conditioning'), (11, 'diagnostics'), (11, 'engine-repair'),
    (11, 'transmission'), (11, 'brakes'), (11, 'steering and suspension'),
    (11, 'vehicle refinishing'), (11, 'front-end'), (11, 'body-work'), 
    (11, 'electrical systems'),(11, 'computer systems'), (11, 'ignition systems'),
    
    
    (11, 'air-conditioning'), (11, 'diagnostics'), (11, 'engine-repair'),
    (11, 'transmission'), (11, 'brakes'), (11, 'steering and suspension'),
    (11, 'vehicle refinishing'), (11, 'front-end'), (11, 'body-work'), 
    (11, 'electrical systems'),(11, 'computer systems'), (11, 'ignition systems');