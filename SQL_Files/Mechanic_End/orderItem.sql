CREATE TABLE OrderItem (
  mechID INT NOT NULL,
  orderID INT NOT NULL,
  itemID INT NOT NULL,
  CONSTRAINT orderItem_pk PRIMARY KEY (orderID, itemID),
  CONSTRAINT orderItem_mech_fk FOREIGN KEY (mechID) REFERENCES Mechanic(mechID),
  CONSTRAINT orderItem_maintOrder_fk FOREIGN KEY (orderID) REFERENCES MaintenanceOrder(orderID),
  CONSTRAINT orderItem_maintItem_fk FOREIGN KEY (itemID) REFERENCES MaintenanceItem(itemID)
  );
