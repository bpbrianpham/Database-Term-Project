CREATE TABLE MaintenanceItem (
  itemID INT NOT NULL,
  itemName VARCHAR(50),
  itemPrice FLOAT,
  packID INT NOT NULL,
  skillRequired VARCHAR(45) NOT NULL,
  CONSTRAINT maintItem_pk PRIMARY KEY (itemID, packID),
  CONSTRAINT maintItem_pack_fk FOREIGN KEY (packID) REFERENCES MaintenancePackages(packID)
  );

  INSERT INTO MaintenanceItem
	(itemID, itemName, itemPrice,packID, skillRequired) VALUES
    (50, 'Oil Change', 50,0, 'body-work'),
    (51, 'Replace Oil Filter', 35,0, 'ignition-systems'),
    (52, 'Replace Air Filter', 20,0, 'air-conditioning'),
    (53, 'Replace Fuel Filter', 29,0, 'air-conditioning'),
    (54, 'Replace Cabin Filter', 60,0, 'air-conditioning'),
    (55, 'Replace Spark Plugs', 80,0, 'electrical systems'),
    (56, 'Turn the Engine', 40,0, 'engine-repair'),
    (57, 'Check Brake Fluid', 15,0, 'brakes'),
    (58, 'Check Brake Pads/Liners', 15, 0, 'diagnostics'),
    (59, 'Check Power Steering Fluid', 15, 0, 'diagnostics'),
    (60, 'Check Transmission Fluid', 15, 0, 'transmission'),
    (61, 'Lube Components', 35, 0, 'vehicle refinishing'),
    (62, 'Replace Timing Belt', 50, 0, 'ignition systems'),
    (63, 'Check Tires', 15, 0, 'diagnostics'),
    (64, 'Check Lights and Wipers', 15, 0, 'diagnostics'),
    (65, 'Check ECU', 15, 0, 'electrical systems'),
    (66, 'Clean the Vehicle', 35, 0, 'vehicle refinishing'),
    (67, 'Use Scan Tool', 20, 0, 'electrical systems'),
    
    /*Fuel Saver*/
    (50, 'Oil Change', 50,100, 'body-work'),
    (51, 'Replace Oil Filter', 35,100, 'ignition-systems'),
    (52, 'Replace Air Filter', 20,100, 'air-conditioning'),
    (53, 'Replace Fuel Filter', 29,100, 'air-conditioning'),
    (57, 'Check Brake Fluid', 15,100, 'air-conditioning'),
    
    /*Roadtrip Ready*/
    (50, 'Oil Change', 50,101, 'body-work'),
    (51, 'Replace Oil Filter', 35,101, 'ignition-systems'),
    (52, 'Replace Air Filter', 20,101, 'air-conditioning'),
    (53, 'Replace Fuel Filter', 29,101, 'air-conditioning'),
    (54, 'Replace Cabin Filter', 60,101, 'air-conditioning'),
    (55, 'Replace Spark Plugs', 80,101, 'electrical systems'),
    (57, 'Check Brake Fluid', 15,101, 'brakes'),
    (61, 'Lube Components', 35, 101, 'vehicle refinishing'),
    (63, 'Check Tires', 15, 101, 'diagnostics'),
    (64, 'Check Lights and Wipers', 15, 101, 'diagnostics'),
    
    /*Silver Package*/
    (50, 'Oil Change', 50,102, 'body-work'),
    (51, 'Replace Oil Filter', 35,102, 'ignition-systems'),
    (52, 'Replace Air Filter', 20,102, 'air-conditioning'),
    (53, 'Replace Fuel Filter', 29,102, 'air-conditioning'),
    (57, 'Check Brake Fluid', 15,102, 'diagnostics'),
    (60, 'Check Transmission Fluid', 15, 102, 'diagnostics'),
    (61, 'Lube Components', 35, 102, 'vehicle refinishing'),
    (62, 'Replace Timing Belt', 50, 102, 'ignition systems'),
    (63, 'Check Tires', 15, 102, 'diagnostics'),
    (64, 'Check Lights and Wipers', 15, 102, 'diagnostics'),
    
    /*Gold Package*/
    (50, 'Oil Change', 50,103, 'body-work'),
    (51, 'Replace Oil Filter', 35,103, 'ignition-systems'),
    (52, 'Replace Air Filter', 20,103, 'air-conditioning'),
    (53, 'Replace Fuel Filter', 29,103, 'air-conditioning'),
    (57, 'Check Brake Fluid', 15,103, 'diagnostics'),
    (60, 'Check Transmission Fluid', 15, 103, 'diagnostics'),
    (61, 'Lube Components', 35, 103, 'vehicle refinishing'),
    (62, 'Replace Timing Belt', 50, 103, 'ignition systems'),
    (63, 'Check Tires', 15, 103, 'diagnostics'),
    (64, 'Check Lights and Wipers', 15, 103, 'diagnostics'),
    (65, 'Check ECU', 15, 103, 'electrical systems'),
    (66, 'Clean the Vehicle', 35, 103, 'vehicle refinishing');
