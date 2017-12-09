CREATE TABLE OrderItem (
  mechID INT NOT NULL,
  orderID INT NOT NULL,
  itemID INT NOT NULL,
  CONSTRAINT orderItem_pk PRIMARY KEY (orderID, itemID),
  CONSTRAINT orderItem_mech_fk FOREIGN KEY (mechID) REFERENCES Mechanic(mechID),
  CONSTRAINT orderItem_maintOrder_fk FOREIGN KEY (orderID) REFERENCES MaintenanceOrder(orderID),
  CONSTRAINT orderItem_maintItem_fk FOREIGN KEY (itemID) REFERENCES MaintenanceItem(itemID)
  );

ALTER TABLE orderItem DROP FOREIGN KEY orderItem_maintItem_fk;
INSERT INTO OrderItem
	(mechID, orderID, itemID) VALUES
    (11, 200, 50), (11, 200, 59), (11, 201, 67),
    (12, 200, 54), (12, 204, 50), (12, 244, 62),
    
    (13, 204, 53), (13, 204, 51), (13, 235, 62),
    (14, 204, 57), (14, 204, 52), (14, 207, 50)
		
    (12, 200, 54), (12, 204, 55), (12, 244, 62),
    
    (12, 200, 54), (12, 204, 55), (12, 244, 62),
    
    (12, 200, 54), (12, 204, 55), (12, 244, 62),
    
    (12, 200, 54), (12, 204, 55), (12, 244, 62),
    (12, 200, 54), (12, 204, 55), (12, 244, 62),
    (12, 200, 54), (12, 204, 55), (12, 244, 62),
    (12, 200, 54), (12, 204, 55), (12, 244, 62),
    (12, 200, 54), (12, 204, 55), (12, 244, 62),
    (12, 200, 54), (12, 204, 55), (12, 244, 62),
    (12, 200, 54), (12, 204, 55), (12, 244, 62),
    (12, 200, 54), (12, 204, 55), (12, 244, 62),
    (12, 200, 54), (12, 204, 55), (12, 244, 62),
    (12, 200, 54), (12, 204, 55), (12, 244, 62),
    (12, 200, 54), (12, 204, 55);
    