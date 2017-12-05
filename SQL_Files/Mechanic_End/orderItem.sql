CREATE TABLE OrderItem (
  orderID INT NOT NULL,
  itemID INT NOT NULL,
  CONSTRAINT orderItem_pk PRIMARY KEY (orderID, itemID),
  CONSTRAINT orderItem_fk_order FOREIGN KEY (orderID) REFERENCES MaintenanceOrder(orderID),
  CONSTRAINT orderItem_fk_item FOREIGN KEY (itemID) REFERENCES MaintenanceItem(itemID)
  );
