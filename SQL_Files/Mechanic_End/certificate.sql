CREATE TABLE Certificate (
  mechID INT NOT NULL,
  certificate VARCHAR(45) NOT NULL,
  CONSTRAINT certif_pk PRIMARY KEY (certificate),
  CONSTRAINT certif_mech_fk FOREIGN KEY(mechID) REFERENCES Mechanic(mechID)
);
