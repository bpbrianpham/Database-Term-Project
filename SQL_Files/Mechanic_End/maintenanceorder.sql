CREATE TABLE MaintenanceOrder (
  orderID INT NOT NULL,
  empID INT NOT NULL,
  cVehicleID INT NOT NULL,
  dateOfService DATE,
  itemID INT NOT NULL,
  CONSTRAINT maintenanceOrder_pk PRIMARY KEY (orderID),
  CONSTRAINT maintenanceOrder_fk_1 FOREIGN KEY (cVehicleID) REFERENCES CustomerVehicle(cVehicleID),
  CONSTRAINT maintenanceOrder_fk_2 FOREIGN KEY (empID) REFERENCES ServiceTechnician(empID)
  );

