CREATE TABLE MaintenanceItem (
  itemID INT NOT NULL,
  itemName VARCHAR(50),
  itemPrice FLOAT,
  CONSTRAINT maintItem_pk PRIMARY KEY (itemID)
  );