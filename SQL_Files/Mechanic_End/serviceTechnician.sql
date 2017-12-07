CREATE TABLE ServiceTechnician (
  sTechID INT NOT NULL,
  office VARCHAR(45),
  CONSTRAINT sTech_pk PRIMARY KEY (sTechID),
  CONSTRAINT sTech_emp_fk FOREIGN KEY(sTechID) REFERENCES Employee(empID)
);

INSERT INTO ServiceTechnician(sTechID, office) VALUES
			(1, 'Headquarts Ave'), (2,'Bamboo Street'), 
            (3, 'Bamboo Street'), (4, 'Headquarts Ave'),
			(5, 'Glacier Hill'), (6, 'Glacier Hill'), 
            (7, 'Coconut Street'), (8, 'Coconut Street'), 
            (9, 'Coconut Street'),(10, 'Bamboo Street');
																	
																	

