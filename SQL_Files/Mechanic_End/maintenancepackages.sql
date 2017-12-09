CREATE TABLE MaintenancePackages (
  packageName VARCHAR(50),
  packagePrice FLOAT,
  packID INT NOT NULL,
  itemID INT NOT NULL,
  CONSTRAINT maintPackage_pk PRIMARY KEY (packID, itemID),
  CONSTRAINT maintPackage_maintItem_fk FOREIGN KEY (itemID) REFERENCES MaintenanceItem(itemID)
  );
  
  ALTER TABLE MaintenancePackages DROP PRIMARY KEY, ADD PRIMARY KEY(packID, itemID);
  INSERT INTO MaintenancePackages
	(packageName, packagePrice, packID, itemID) VALUES
    ("Fuel Saver", 58.00, 100, 50),
    ("Fuel Saver", 58.00, 100, 52),
    ("Fuel Saver", 58.00, 100, 63),
    ("Fuel Saver", 58.00, 100, 58),
    ("Fuel Saver", 58.00, 100, 67),
    
    ("Road Trip Ready", 138.00, 101, 50),
    ("Road Trip Ready", 138.00, 101, 52),
    ("Road Trip Ready", 138.00, 101, 56),
    ("Road Trip Ready", 138.00, 101, 59),
    ("Road Trip Ready", 138.00, 101, 63),
    ("Road Trip Ready", 138.00, 101, 64),
    
    ("Silver Package", 135.00, 102, 50),
    ("Silver Package", 135.00, 102, 53),
    ("Silver Package", 135.00, 102, 55),
    ("Silver Package", 135.00, 102, 56),
    ("Silver Package", 135.00, 102, 59),
    ("Silver Package", 135.00, 102, 63),
    ("Silver Package", 135.00, 102, 65),
    
    ("Gold Package", 220.00, 103, 50),
    ("Gold Package", 220.00, 103, 51),
    ("Gold Package", 220.00, 103, 52),
    ("Gold Package", 220.00, 103, 53),
    ("Gold Package", 220.00, 103, 54),
    ("Gold Package", 220.00, 103, 55),
    ("Gold Package", 220.00, 103, 58),
    ("Gold Package", 220.00, 103, 62),
    ("Gold Package", 220.00, 103, 63),
    ("Gold Package", 220.00, 103, 65);
    
    
    /*
    (50, 'Oil Change', 50),
    (51, 'Replace Oil Filter', 35),
    (52, 'Replace Air Filter', 20),
    (53, 'Replace Fuel Filter', 29),
    (54, 'Replace Cabin Filter', 60),
    (55, 'Replace Spark Plugs', 80),
    (56, 'Turn the Engine', 40),
    (57, 'Check Brake Fluid', 15),
    (58, 'Check Brake Pads/Liners', 15),
    (59, 'Check Power Steering Fluid', 15),
    (60, 'Check Transmission Fluid', 15),
    (61, 'Lube Components', 35),
    (62, 'Replace Timing Belt', 50),
    (63, 'Check Tires', 15),
    (64, 'Check Lights and Wipers', 15),
    (65, 'Check ECU', 15),
    (66, 'Clean the Vehicle', 35),
    (67, 'Use Scan Tool', 20);

    
    
    */