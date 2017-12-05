CREATE TABLE ServiceTechnician (
  empID INT NOT NULL,
  office VARCHAR(45),
  CONSTRAINT sTech_pk PRIMARY KEY (empID),
  CONSTRAINT sTech_emp_fk FOREIGN KEY(empID) REFERENCES Employee(empID)
);
