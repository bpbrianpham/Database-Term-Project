CREATE TABLE RecommendedPackages (
  packID INT NOT NULL,
  mVehicleID INTEGER NOT NULL,
  CONSTRAINT recPackage_pk PRIMARY KEY (packID, mVehicleID),
  CONSTRAINT recPackage_maintPack_fk FOREIGN KEY (packID) REFERENCES MaintenancePackages(packID),
  CONSTRAINT recPackage_vModel_fk FOREIGN KEY (mVehicleID) REFERENCES VehicleModelInfo(mVehicleID)
  );
  
INSERT INTO RecommendedPackages 
(mVehicleID, packID) VALUES
	(1, 100),
    (2, 100),
    (3, 100),
    (4, 100),
    (5, 100),
    
    (16, 101),
	(17, 101),
    
    (6, 102),
    (7, 102),
    (8, 102),
    (9, 102),
    (10, 102),
    (11, 102),
    (12, 102),
    (13, 102),
    (14, 102),
    (15, 102),
    
    (18, 103),
    (19, 103),
    (20, 103),
    (21, 103),
    (22, 103),
    (23, 103),
    (24, 103),
    (25, 103);