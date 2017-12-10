CREATE TABLE Skill (
  mechID INT,
  skill VARCHAR(45) NOT NULL,
  CONSTRAINT skill_pk PRIMARY KEY (skill, mechID),
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

	(14, 'diagnostics'), (14, 'engine-repair'), (14, 'transmission'), (14, 'brakes'), 
    (14, 'steering and suspension'), (14, 'body-work'), (14, 'vehicle refinishing'), (14, 'ignition systems'),
    
	(15, 'brakes'), (15, 'steering and suspension'), (15, 'body-work'), (15, 'vehicle refinishing'),
    
	(16, 'transmission'), (16, 'vehicle refinishing'),

	(17, 'air-conditioning'), (17, 'diagnostics'), (17, 'engine-repair'), (17, 'transmission'), (17, 'brakes'),
    (17, 'steering and suspension'), (17, 'vehicle refinishing'), (17, 'front-end'), (17, 'body-work'), 
    (17, 'electrical systems'),(17, 'computer systems'), (17, 'ignition systems'),
    
	(18, 'air-conditioning'), (18, 'computer systems'),
    
	(19, 'ignition systems'),
    
	(20, 'air-conditioning'), (20, 'diagnostics'), (20, 'engine-repair'), (20, 'transmission'),
    (20, 'steering and suspension'),(20, 'vehicle refinishing'), (20, 'front-end');
    
    INSERT INTO Skill(mechID, skill) VALUES
    (21, 'diagnostics'),(21, 'vehicle refinishing'),(21, 'engine-repair'),(21, 'transmission'),
    
    (22, 'ignition systems'),(22, 'air-conditioning'),(22, 'vehicle refinishing'),(22, 'front-end'),
    
    (23 ,'ignition-systems'),(23, 'diagnostics'),(23, 'air-conditioning'),
    
    (24, 'body-work'),(24, 'vehicle refininishing'),(24,'diagnostics'),
    
	(25, 'air-conditioning'),(25, 'diagnostics'),(25, 'brakes'),(25, 'transmission'),
    
	(26, 'body-work'),(26, 'air-conditioning'),(26, 'diagnostics'),(26, 'electrical systems'),(26, 'vehicle refinishing'),
    
	(27, 'air-conditioning'),
    
	(28, 'diagnostics'),(28, 'body-work'),(28, 'air-conditioning'), (28, 'ignition-systems'),
    
	(29, 'ignition-systems'),(29, 'air-conditioning'),(29, 'brakes'),(29, 'transmission'),(29, 'vehicle refinishing'),
    
	(30,'electrical-systems'),(30, 'vehicle refinishing'), (30, 'diagnostics'),
    
	(31, 'diagnostics'),(31, 'body-work'),
    
	(32, 'ignition-systems'),(32, 'air-conditioning'),(32, 'brakes'),(32, 'transmission'),
    
	(33, 'brakes'),(33, 'transmission'),(33, 'ignition systems'),(33, 'diagnostics'),

	(34, 'diagnostics'),(34, 'air-conditioning'),(34, 'brakes'),(34, 'transmission'),

	(35, 'electrical systems'),(35, 'vehicle refinishing'),(35, 'air-conditioning'),
    
	(36, 'body-work'),(36, 'ignition-systems'),(36, 'air-conditioning'),(36, 'ignition-systems'),(36, 'diagnostics'),(36, 'electrical systems'),
    
	(37, 'air-conditioning'),(37, 'brakes'),(37, 'transmission'),
    
	(38, 'ignition systems'),(38, 'diagnostics'),(38, 'electrical-systems'),(38, 'brakes'),
    
	(39, 'air-conditioning'), (39, 'diagnostics'), (39, 'engine-repair'), (39, 'transmission'), (39, 'brakes'),(39, 'steering and suspension'), 
    (39, 'vehicle refinishing'), (39, 'front-end'), (39, 'body-work'),(39, 'electrical systems'),(39, 'computer systems'), (39, 'ignition systems'),
    
	(40, 'ignition-systems'),(40, 'air-conditioning'),
    
	(41, 'brakes'),(41, 'transmission'),(41, 'vehicle refinishing'),(41, 'diagnostics'),
    
	(42, 'ignition systems'),(42, 'diagnostics'),(42, 'transmission'),(42, 'ignition-systems'),
    
	(43, 'transmission'),(43, 'ignition-systems'),(43, 'air-conditioning'),
    
	(44, 'air-conditioning'),(44, 'brakes'),
    
	(45, 'body-work'),(45, 'ignition-systems'),(45, 'air-conditioning'),(45, 'ignition-systems'),(45, 'electrical-systems'),

    (46, 'air-conditioning'),(46, 'transmission'),
    
	(47, 'vehicle refinishing'),(47, 'ignition-systems'),(47, 'diagnostics'),
    
	(48, 'diagnostics'),(48, 'vehicle refinishing'),(48, 'air-conditioning'),(48, 'brakes'),

	(49, 'vehicle refinishing'),(49, 'air-conditioning'),(49, 'electrical systems'),(49, 'body-work'),(49, 'ignition-systems'),(49,'air-conditioning'),

	(50, 'body-work'),
    
	(51, 'air-conditioning'),(51, 'brakes'),(51, 'diagnostics'),
    
	(52, 'engine-repair'),(52, 'body-work'),(52, 'ignition-systems'),(52, 'electrical systems'),(52, 'computer systems'), (52, 'ignition systems'),
    
	(53, 'ignition-systems'),(53, 'air-conditioning'),
    
	(54, 'air-conditioning'),(54, 'electrical-systems'),(54, 'brakes'),
    
	(55, 'vehicle refinishing'),(55, 'diagnostics'),
    
	(56, 'electrical-systems'),(56, 'air-conditioning'),(56, 'vehicle-refinishing'),
    
	(57, 'body-work'),(57, 'ignition-systems'),(57,'air-conditioning'),
    
	(58, 'air-conditioning'),(58, 'brakes'),(58, 'diagnostics'),
    
	(59, 'ignition-systems'),(59, 'electrical-systems'),
    
	(60, 'air-conditioning'),
    
	(61, 'body-work'),(61, 'brakes'),(61, 'ignition-systems'),(61,'air-conditioning'),

	(62, 'ignition-systems'),(62, 'air-conditioning'),
    
	(63, 'air-conditioning'),(63, 'brakes'),(63, 'engine-repair'),(63, 'body-work'),(63, 'ignition-systems'),
    
	(64, 'body-work'),(64, 'engine-repair'),(64, 'ignition-systems'),(64, 'electrical systems'),(64, 'computer systems'),
    
	(65, 'electrical-systems'),(65, 'vehicle refinishing'),
    
	(66, 'diagnostics'),(66, 'electrical-systems'),(66, 'brakes'),(66, 'vehicle refinishing'), (66, 'front-end');
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    