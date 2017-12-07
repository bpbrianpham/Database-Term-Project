CREATE TABLE ServiceTechnician (
  sTechID INT NOT NULL,
  office VARCHAR(45),
  CONSTRAINT sTech_pk PRIMARY KEY (sTechID),
  CONSTRAINT sTech_emp_fk FOREIGN KEY(sTechID) REFERENCES Employee(empID)
);
