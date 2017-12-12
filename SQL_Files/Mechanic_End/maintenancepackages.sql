CREATE TABLE MaintenancePackages (
  packageName VARCHAR(50),
  packagePrice FLOAT,
  packID INT NOT NULL,
  CONSTRAINT maintPackage_pk PRIMARY KEY (packID)
  );
  
  INSERT INTO MaintenancePackages
	(packageName, packagePrice, packID) VALUES
    ("Fuel Saver", 58.00, 100),
    ("Road Trip Ready", 138.00, 101),
    ("Silver Package", 135.00, 102),
    ("Gold Package", 220.00, 103);
    
