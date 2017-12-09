CREATE TABLE MaintenanceItem (
  itemID INT NOT NULL,
  itemName VARCHAR(50),
  itemPrice FLOAT,
  CONSTRAINT maintItem_pk PRIMARY KEY (itemID)
  );
  
  INSERT INTO MaintenanceItem
	(itemID, itemName, itemPrice) VALUES
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
