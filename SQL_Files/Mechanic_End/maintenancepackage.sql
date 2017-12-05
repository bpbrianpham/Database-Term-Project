CREATE TABLE MaintenancePackage (
  packageName VARCHAR(50) NOT NULL,
  packagePrice FLOAT,
  orderID INT,
  itemID INT,
  CONSTRAINT maintPackage_pk PRIMARY KEY (packageName),
  CONSTRAINT maintPackage_maintOrder_fk FOREIGN KEY (orderID) REFERENCES MaintenanceOrder(orderID),
  CONSTRAINT maintPackage_maintItem_fk FOREIGN KEY (itemID) REFERENCES MaintenanceItem(itemID)
  );