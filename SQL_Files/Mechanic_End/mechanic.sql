CREATE TABLE Mechanic (
  mechID INT NOT NULL,
  CONSTRAINT mech_pk PRIMARY KEY (mechID),
  CONSTRAINT mech_emp_fk FOREIGN KEY(mechID) REFERENCES Employee(empID)
);
/*
MENTOR / MENTEE
- Each mechanic with a given skill is encouraged to mentor another mechanic in that skill
- A mechanic can only become a mentor of a particular skill if they have an official certification in that skill
- A given mentor/mentee relationship between two mechanics could start and stop multiple times

MAINTENANCE ITEMS / PACAKAGES
- Each maintenance item will have a mechanic assigned to it
- A mechanic can have no more than three maintenance items going at the same time. 
- We do not assign a single mechanic to the whole package, 
	Rather, assignment is done at the individual maintenance item level
*/
INSERT INTO Mechanic(mechID) VALUES
	(11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
    
    (21), (22), (23), (24), (25), (26), (27), (28), (29), (30);







