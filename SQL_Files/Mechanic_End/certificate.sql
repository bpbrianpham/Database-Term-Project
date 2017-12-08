CREATE TABLE Certificate (
  mechID INT NOT NULL,
  certificate VARCHAR(45) NOT NULL,
  CONSTRAINT certif_pk PRIMARY KEY (mechID, certificate),
  CONSTRAINT certif_mech_fk FOREIGN KEY(mechID) REFERENCES Mechanic(mechID)
);

INSERT INTO Certificate() VALUES
	(11, 'air-conditioning'), (11, 'diagnostics'), (11, 'engine-repair'),
    
	(12, 'steering and suspension'), (12, 'vehicle refinishing'), (12, 'front-end'),  
    (12, 'electrical systems'), (12, 'computer systems'), (12, 'ignition systems'),
    
	(13, 'electrical systems'), (13, 'diagnostics'), (13, 'engine-repair'),
    (13, 'air-conditioning'), (13, 'computer systems'), (13, 'ignition systems'),

	(14, 'diagnostics'), (14, 'engine-repair'), (14, 'transmission'), (14, 'brakes'), 
    (14, 'steering and suspension'), (14, 'ignition systems'),
    
	(15, 'brakes'), (15, 'steering and suspension'), (15, 'vehicle refinishing'),
    
	(16, 'transmission'), (16, 'vehicle refinishing'),

	(17, 'air-conditioning'), (17, 'diagnostics'), (17, 'engine-repair'), (17, 'transmission'),
	(17, 'vehicle refinishing'), (17, 'front-end'), (17, 'body-work'), 
    (17, 'electrical systems'),(17, 'computer systems'), (17, 'ignition systems'),
    
	(18, 'air-conditioning'), (18, 'computer systems'),
    
	(19, 'ignition systems'),
    
	(20, 'air-conditioning'), (20, 'diagnostics'), (20, 'engine-repair'), (20, 'transmission'), (20, 'front-end');