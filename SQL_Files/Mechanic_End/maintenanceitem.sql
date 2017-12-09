CREATE TABLE MaintenanceItem (
  itemID INT NOT NULL,
  itemName VARCHAR(50),
  itemPrice FLOAT,
  packID INT NOT NULL,
  CONSTRAINT maintItem_pk PRIMARY KEY (itemID, packID),
  CONSTRAINT maintItem_pack_fk FOREIGN KEY (packID) REFERENCES MaintenancePackages(packID)
  );
  
 ALTER TABLE MaintenanceItem DROP PRIMARY KEY, ADD PRIMARY KEY(itemID,packID);

  ALTER TABLE MaintenanceItem ADD COLUMN packID INT AFTER itemPrice;
  ALTER TABLE MaintenanceItem ADD CONSTRAINT maintItem_pack_fk FOREIGN KEY (packID) REFERENCES MaintenancePackages(packID);
  Truncate MaintenanceItem;
  
  INSERT INTO MaintenanceItem
	(itemID, itemName, itemPrice,packID) VALUES
    (50, 'Oil Change', 50,0),
    (51, 'Replace Oil Filter', 35,0),
    (52, 'Replace Air Filter', 20,0),
    (53, 'Replace Fuel Filter', 29,0),
    (54, 'Replace Cabin Filter', 60,0),
    (55, 'Replace Spark Plugs', 80,0),
    (56, 'Turn the Engine', 40,0),
    (57, 'Check Brake Fluid', 15,0),
    (58, 'Check Brake Pads/Liners', 15, 0),
    (59, 'Check Power Steering Fluid', 15, 0),
    (60, 'Check Transmission Fluid', 15, 0),
    (61, 'Lube Components', 35, 0),
    (62, 'Replace Timing Belt', 50, 0),
    (63, 'Check Tires', 15, 0),
    (64, 'Check Lights and Wipers', 15, 0),
    (65, 'Check ECU', 15, 0),
    (66, 'Clean the Vehicle', 35, 0),
    (67, 'Use Scan Tool', 20, 0),
    
    /*Fuel Saver*/
    (50, 'Oil Change', 50,100),
    (51, 'Replace Oil Filter', 35,100),
    (52, 'Replace Air Filter', 20,100),
    (53, 'Replace Fuel Filter', 29,100),
    (57, 'Check Brake Fluid', 15,100),
    
    /*Roadtrip Ready*/
    (50, 'Oil Change', 50,101),
    (51, 'Replace Oil Filter', 35,101),
    (52, 'Replace Air Filter', 20,101),
    (53, 'Replace Fuel Filter', 29,101),
    (54, 'Replace Cabin Filter', 60,101),
    (55, 'Replace Spark Plugs', 80,101),
    (57, 'Check Brake Fluid', 15,101),
    (61, 'Lube Components', 35, 101),
    (63, 'Check Tires', 15, 101),
    (64, 'Check Lights and Wipers', 15, 101),
    
    /*Silver Package*/
    (50, 'Oil Change', 50,102),
    (51, 'Replace Oil Filter', 35,102),
    (52, 'Replace Air Filter', 20,102),
    (53, 'Replace Fuel Filter', 29,102),
    (57, 'Check Brake Fluid', 15,102),
    (60, 'Check Transmission Fluid', 15, 102),
    (61, 'Lube Components', 35, 102),
    (62, 'Replace Timing Belt', 50, 102),
    (63, 'Check Tires', 15, 102),
    (64, 'Check Lights and Wipers', 15, 102),
    
    /*Gold Package*/
    (50, 'Oil Change', 50,103),
    (51, 'Replace Oil Filter', 35,103),
    (52, 'Replace Air Filter', 20,103),
    (53, 'Replace Fuel Filter', 29,103),
    (57, 'Check Brake Fluid', 15,103),
    (60, 'Check Transmission Fluid', 15, 103),
    (61, 'Lube Components', 35, 103),
    (62, 'Replace Timing Belt', 50, 103),
    (63, 'Check Tires', 15, 103),
    (64, 'Check Lights and Wipers', 15, 103),
    (65, 'Check ECU', 15, 103),
    (66, 'Clean the Vehicle', 35, 103);
