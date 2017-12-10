CREATE TABLE MaintenanceOrders (
  orderID INT NOT NULL,
  sTechID INT NOT NULL,
  packID INT,
  cVehicleID INT,
  dateOfService DATE,
  CONSTRAINT maintOrder_pk PRIMARY KEY (orderID),
  CONSTRAINT maintOrder_maintPack_fk FOREIGN KEY (packID) REFERENCES MaintenancePackages(packID),
  CONSTRAINT maintOrder_cVehicle_fk FOREIGN KEY (cVehicleID) REFERENCES CustomerVehicles(cVehicleID),
  CONSTRAINT maintOrder_sTech_fk FOREIGN KEY (sTechID) REFERENCES ServiceTechnician(sTechID)
  );
  
   INSERT INTO MaintenanceOrders(orderID, sTechID, packID, cVehicleID, dateOfService) VALUES
    (200, 1, NULL, 1, 2017-01-12),
    (201, 1, NULL, 2, 2017-05-24),
    (202, 1, NULL, 3, 2017-06-17),
    (203, 1, NULL, 4, 2017-03-15),
    (204, 1, 100, 5, 2017-04,20),
    
    (205, 2, NULL, 6, 2017-01-12),
    (206, 2, NULL, 7, 2017-05-14),
    (207, 2, 103, 8, 2017-03-12),
    (208, 2, NULL, 9, 2017-09-15),
    (209, 2, NULL, 10, 2017-01,20),
    
    (210, 3, NULL, 11, 2017-02-10),
    (211, 3, 102, 12, 2017-04-11),
    (212, 3, NULL, 13, 2017-06-19),
    (213, 3, NULL, 14, 2017-10-20),
    (214, 3, NULL, 15, 2017-11,05),
    
    (215, 4, NULL, 16, 2017-12-12),
    (216, 4, NULL, 17, 2017-02-17),
    (217, 4, 100, 18, 2017-08-27),
    (218, 4, NULL, 19, 2017-01-15),
    (219, 4, 101, 20, 2017-10,20),
    
    (220, 5, NULL, 21, 2017-04-23),
    (221, 5, NULL, 22, 2017-05-08),
    (222, 5, 103, 23, 2017-12-17),
    (223, 5, NULL, 24, 2017-05-15),
    (224, 5, 102, 25, 2017-07-20),
    
    (225, 6, NULL, 26, 2017-02-12),
    (226, 6, 102, 27, 2017-02-24),
    (227, 6, NULL, 28, 2017-02-17),
    (228, 6, 100, 29, 2017-05-15),
    (229, 6, 103, 30, 2017-11,20),
    
    (230, 7, NULL, 31, 2017-03-17),
    (231, 7, NULL, 32, 2017-09-21),
    (232, 7, NULL, 33, 2017-10-17),
    (233, 7, 100, 34, 2017-06-15),
    (234, 7, NULL, 35, 2017-07,20),
    
    (235, 8, NULL, 36, 2017-09-12),
    (236, 8, NULL, 37, 2017-12-17),
    (237, 8, 101, 38, 2017-11-17),
    (238, 8, NULL, 39, 2017-09-15),
    (239, 8, NULL, 40, 2017-04,13),
    
    (240, 9, NULL, 41, 2017-01-16),
    (241, 9, 100, 42, 2017-08-02),
    (242, 9, NULL, 43, 2017-06-13),
    (243, 9, NULL, 44, 2017-07-15),
    (244, 9, NULL, 45, 2017-09,25),
    
    (245, 10, NULL, 46, 2017-02-12),
    (246, 10, 100, 47, 2017-04-24),
    (247, 10, NULL, 48, 2017-04-17),
    (248, 10, NULL, 49, 2017-05-18),
    (249, 10, NULL, 50, 2017-06,20);
    
    