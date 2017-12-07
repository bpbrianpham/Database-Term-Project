CREATE TABLE MaintenancePackages (
  packageName VARCHAR(50),
  packagePrice FLOAT,
  packID INT NOT NULL,
  itemID INT NOT NULL,
  CONSTRAINT maintPackage_pk PRIMARY KEY (packID),
  CONSTRAINT maintPackage_maintItem_fk FOREIGN KEY (itemID) REFERENCES MaintenanceItem(itemID)
  );