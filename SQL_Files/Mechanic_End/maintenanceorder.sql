CREATE TABLE MaintenanceOrder (
  orderID INT NOT NULL,
  empID INT NOT NULL,
  cVehicleID INT NOT NULL,
  dateOfService DATE,
  CONSTRAINT maintOrder_pk PRIMARY KEY (orderID),
  CONSTRAINT maintOrder_cVehicle_fk FOREIGN KEY (cVehicleID) REFERENCES CustomerVehicle(cVehicleID),
  CONSTRAINT maintOrder_sTech_fk FOREIGN KEY (empID) REFERENCES ServiceTechnician(empID)
  );

