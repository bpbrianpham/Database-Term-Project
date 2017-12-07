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
  
