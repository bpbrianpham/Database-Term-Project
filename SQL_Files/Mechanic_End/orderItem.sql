CREATE TABLE OrderItem (
  mechID INT NOT NULL,
  orderID INT NOT NULL,
  itemID INT NOT NULL,
  CONSTRAINT orderItem_pk PRIMARY KEY (orderID, itemID),
  CONSTRAINT orderItem_mech_fk FOREIGN KEY (mechID) REFERENCES Mechanic(mechID),
  CONSTRAINT orderItem_maintOrder_fk FOREIGN KEY (orderID) REFERENCES MaintenanceOrder(orderID),
  CONSTRAINT orderItem_maintItem_fk FOREIGN KEY (itemID) REFERENCES MaintenanceItem(itemID)
  );


INSERT INTO OrderItem
	(mechID, orderID, itemID) VALUES
    (11, 200, 50), (11, 200, 59), (11, 201, 67),
    (12, 200, 54), (12, 204, 55), 
    