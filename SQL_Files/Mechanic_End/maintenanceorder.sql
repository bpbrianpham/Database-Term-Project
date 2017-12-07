CREATE TABLE MaintenanceOrder (
  orderID INT NOT NULL,
  sTechID INT NOT NULL,
  cVehicleID INT,
  dateOfService DATE,
  CONSTRAINT maintOrder_pk PRIMARY KEY (orderID),
  CONSTRAINT maintOrder_cVehicle_fk FOREIGN KEY (cVehicleID) REFERENCES CustomerVehicle(cVehicleID),
  CONSTRAINT maintOrder_sTech_fk FOREIGN KEY (sTechID) REFERENCES ServiceTechnician(sTechID)
  );
  
