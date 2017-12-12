/*
Testing scenarios:
1.	List the customers.  For each customer, indicate which category he or she fall into, 
		and his or her contact information.  If you have more than one independent categorization 
        of customers, please indicate which category the customer falls into for all of the 
        categorizations.
*/

SELECT indivName AS 'Customer Name', phoneNumber AS 'Phone Number', (SELECT COUNT(cID) FROM PremierCustomers WHERE IndividualCustomers.cID = PremierCustomers.cID) AS 'Premier Customers', (SELECT COUNT(cID) FROM EmployeeCustomers WHERE IndividualCustomers.cID = EmployeeCustomers.cID) AS 'Employee Customers', (SELECT COUNT(cID) FROM SteadyCustomers WHERE IndividualCustomers.cID = SteadyCustomers.cID) AS 'Steady Customers' FROM IndividualCustomers NATURAL JOIN Customers
UNION
SELECT corpName AS 'Customer Name', phoneNumber AS 'Phone Number', (SELECT COUNT(cID) FROM PremierCustomers WHERE CorporationCustomers.cID = PremierCustomers.cID) AS 'Premier Customers', (SELECT COUNT(cID) FROM EmployeeCustomers WHERE CorporationCustomers.cID = EmployeeCustomers.cID) AS 'Employee Customers', (SELECT COUNT(cID) FROM SteadyCustomers WHERE CorporationCustomers.cID = SteadyCustomers.cID) AS 'Steady Customers' FROM CorporationCustomers NATURAL JOIN Customers;



/*
2.	For each service visit, list the total cost to the customer for that visit.
*/
<<<<<<< HEAD

=======
>>>>>>> 8ccabe9d1e22106c33459f25726281dc6d8bed3c
SELECT indivName, SUM(itemPrice) FROM MaintenanceOrders NATURAL JOIN OrderItems NATURAL JOIN MaintenanceItems NATURAL JOIN CustomerVehicles NATURAL JOIN Customers NATURAL JOIN IndividualCustomers WHERE packID = 0 GROUP BY indivName
UNION
SELECT corpName, SUM(itemPrice) FROM MaintenanceOrders NATURAL JOIN OrderItems NATURAL JOIN MaintenanceItems NATURAL JOIN CustomerVehicles NATURAL JOIN Customers NATURAL JOIN CorporationCustomers WHERE packID = 0 GROUP BY corpName
UNION
SELECT indivName, packagePrice FROM MaintenanceOrders NATURAL JOIN OrderItems NATURAL JOIN MaintenanceItems NATURAL JOIN MaintenancePackages NATURAL JOIN CustomerVehicles NATURAL JOIN Customers NATURAL JOIN IndividualCustomers WHERE packID != 0 GROUP BY indivName
UNION
SELECT corpName, packagePrice FROM MaintenanceOrders NATURAL JOIN OrderItems NATURAL JOIN MaintenanceItems NATURAL JOIN MaintenancePackages NATURAL JOIN CustomerVehicles NATURAL JOIN Customers NATURAL JOIN CorporationCustomers WHERE packID != 0 GROUP BY corpName;



/*
3.	List the top three customers in terms of their net spending for the past two years, 
		and the total that they have spent in that period.
*/

SELECT * FROM ((SELECT (SELECT indivName FROM IndividualCustomers WHERE IndividualCustomers.cID = Customers.cID) AS Customers, (SELECT packagePrice FROM MaintenancePackages WHERE
MaintenancePackages.packID = (SELECT packID FROM CustomerVehicles WHERE Customers.cID = CustomerVehicles.cID)) AS Price FROM Customers
WHERE (SELECT dateOfService FROM MaintenanceOrders WHERE MaintenanceOrders.cVehicleID = (SELECT cVehicleID FROM CustomerVehicles WHERE CustomerVehicles.cID = Customers.cID))>= DATE_SUB(NOW(),INTERVAL 2 YEAR))) AS Person
UNION
SELECT * FROM ((SELECT (SELECT corpName FROM CorporationCustomers WHERE CorporationCustomers.cID = Customers.cID) AS Customers, (SELECT packagePrice FROM MaintenancePackages WHERE
MaintenancePackages.packID = (SELECT packID FROM CustomerVehicles WHERE Customers.cID = CustomerVehicles.cID)) AS Price FROM Customers
WHERE (SELECT dateOfService FROM MaintenanceOrders WHERE MaintenanceOrders.cVehicleID = (SELECT cVehicleID FROM CustomerVehicles WHERE CustomerVehicles.cID = Customers.cID))>= DATE_SUB(NOW(),INTERVAL 2 YEAR))) AS Person ORDER BY Price DESC LIMIT 3;

/*or*/

SELECT (SELECT indivName FROM IndividualCustomers WHERE IndividualCustomers.cID = Customers.cID) AS Customers, (SELECT packagePrice FROM MaintenancePackages WHERE MaintenancePackages.packID = (SELECT packID FROM CustomerVehicles WHERE Customers.cID = CustomerVehicles.cID)) AS Price FROM Customers WHERE (SELECT dateOfService FROM MaintenanceOrders WHERE MaintenanceOrders.cVehicleID = (SELECT cVehicleID FROM CustomerVehicles WHERE CustomerVehicles.cID = Customers.cID))>= DATE_SUB(NOW(),INTERVAL 2 YEAR) ORDER BY Price DESC;

/*
4.	Find all of the mechanics who have three or more skills.
*/
SELECT eName, count(mechID) AS skills FROM Skills NATURAL JOIN (Mechanics INNER JOIN Employees ON Mechanics.mechID = Employees.empID)
GROUP BY MechID HAVING COUNT(mechID) >= 3 ORDER BY skills;


/*
5.	Find all of the mechanics who have three or more skills in common.
		a.	Please give the name of each of the two mechanics sharing 3 or more skills.
		b.	Please make sure that any given pair of mechanics only shows up once.
*/

SELECT
	(SELECT E.eName FROM cecs323sec3og12.Employees E
		WHERE E.empID = S.mechID) AS 'Mechanic 1',
	(SELECT Y.eName FROM cecs323sec3og12.Employees Y
		WHERE Y.empID = Z.mechID) AS 'Mechanic 2',
	COUNT(*) AS '# of Common Skills'
	FROM cecs323sec3og12.Skills S
	INNER JOIN cecs323sec3og12.Skills Z
		ON S.skill = Z.skill
		WHERE S.mechID > Z.mechID  
        GROUP BY (SELECT E.eName FROM cecs323sec3og12.Employees E
		WHERE E.empID = S.mechID), (SELECT Y.eName FROM 
cecs323sec3og12.Employees Y
		WHERE Y.empID = Z.mechID)  
        HAVING COUNT(*) >= 3;


/*
6.	For each maintenance package, list the total cost of the maintenance package, 
		as well as a list of all of the maintenance items within that package.
*/

SELECT packageName, packagePrice, GROUP_CONCAT(itemName SEPARATOR ', ') AS MaintenanceItems FROM MaintenancePackages
NATURAL JOIN MaintenanceItems
GROUP BY packID;
<<<<<<< HEAD
=======

SELECT packageName, packagePrice, itemName FROM MaintenanceItems NATURAL JOIN MaintenancePackages GROUP BY packageName;
>>>>>>> 8ccabe9d1e22106c33459f25726281dc6d8bed3c

/*
7.	Find all of those mechanics who have one or more maintenance items that they 
		lacked one or more of the necessary skills.
*/
SELECT DISTINCT 
	(SELECT E.eName FROM cecs323sec3og12.Employees E
	WHERE E.empID = M.mechID) AS 'Mechanic', 
	M.mechID AS 'Mechanic ID',
	COUNT(*) AS '# of Missing Skills' 
	FROM cecs323sec3og12.Skills S
	NATURAL JOIN cecs323sec3og12.Mechanics M
	WHERE S.skill NOT IN
(SELECT DISTINCT I.skillRequired 
	FROM cecs323sec3og12.MaintenanceItems I
	NATURAL JOIN cecs323sec3og12.OrderItems O
	NATURAL JOIN cecs323sec3og12.Mechanics M)
	GROUP BY M.mechID
	HAVING COUNT(*) >= 1;


/*
8.	List the customers, sorted by the number of loyalty points that they have, from 
largest to smallest.
SELECT indivName, loyalTyPoints FROM IndividualCustomers NATURAL JOIN (Customers NATURAL JOIN SteadyCustomers)
UNION  
SELECT corpName, loyaltyPoints FROM CorporationCustomers NATURAL JOIN (Customers NATURAL JOIN SteadyCustomers)
ORDER BY loyaltyPoints DESC;
*/


/*
9.	List the premier customers and the difference between what they have paid in the past year, 
		versus the services that they actually used during that same time.  
        List from the customers with the largest difference to the smallest.
*/
SELECT * FROM
(SELECT corpName, FORMAT(ABS(PremierCustomers.annualFee - PremierCustomers.annualSpent), 2) AS Difference FROM PremierCustomers NATURAL JOIN (Customers NATURAL JOIN CorporationCustomers)
UNION
SELECT indivName, FORMAT(ABS(PremierCustomers.annualFee - PremierCustomers.annualSpent), 2) AS Difference FROM PremierCustomers NATURAL JOIN (Customers NATURAL JOIN IndividualCustomers))Customers
 ORDER BY Difference+0 DESC;

/*
10.	Report on the steady customers based on the net profit that we have made from them over the 
		past year, and the dollar amount of that profit, in order from the greatest to the least.
*/
<<<<<<< HEAD

=======
>>>>>>> 8ccabe9d1e22106c33459f25726281dc6d8bed3c
SELECT indivName, SUM(itemPrice) AS Profit FROM MaintenanceOrders NATURAL JOIN OrderItems NATURAL JOIN MaintenanceItems NATURAL JOIN CustomerVehicles NATURAL JOIN Customers NATURAL JOIN IndividualCustomers WHERE packID = 0 AND dateOfService >= DATE_SUB(NOW(),INTERVAL 1 YEAR) GROUP BY indivName
UNION
SELECT corpName, SUM(itemPrice) AS Profit FROM MaintenanceOrders NATURAL JOIN OrderItems NATURAL JOIN MaintenanceItems NATURAL JOIN CustomerVehicles NATURAL JOIN Customers NATURAL JOIN CorporationCustomers WHERE packID = 0 AND dateOfService >= DATE_SUB(NOW(),INTERVAL 1 YEAR) GROUP BY corpName
UNION
SELECT indivName, packagePrice AS Profit FROM MaintenanceOrders NATURAL JOIN OrderItems NATURAL JOIN MaintenanceItems NATURAL JOIN MaintenancePackages NATURAL JOIN CustomerVehicles NATURAL JOIN Customers NATURAL JOIN IndividualCustomers WHERE packID != 0 AND dateOfService >= DATE_SUB(NOW(),INTERVAL 1 YEAR) GROUP BY indivName
UNION
<<<<<<< HEAD
SELECT corpName, packagePrice AS Profit FROM MaintenanceOrders NATURAL JOIN OrderItems NATURAL JOIN MaintenanceItems NATURAL JOIN MaintenancePack ages NATURAL JOIN CustomerVehicles NATURAL JOIN Customers NATURAL JOIN CorporationCustomers WHERE packID != 0 AND dateOfService >= DATE_SUB(NOW(),INTERVAL 1 YEAR) GROUP BY corpName
ORDER BY Profit DESC;


=======
SELECT corpName, packagePrice AS Profit FROM MaintenanceOrders NATURAL JOIN OrderItems NATURAL JOIN MaintenanceItems NATURAL JOIN MaintenancePackages NATURAL JOIN CustomerVehicles NATURAL JOIN Customers NATURAL JOIN CorporationCustomers WHERE packID != 0 AND dateOfService >= DATE_SUB(NOW(),INTERVAL 1 YEAR) GROUP BY corpName
ORDER BY Profit DESC;
>>>>>>> 8ccabe9d1e22106c33459f25726281dc6d8bed3c
/*
11.	List the three premier customers who have paid Dave’s Automotive the greatest amount in the 
		past year, and the sum of their payments over that period.  Be sure to take into account 
        any discounts that they have earned by referring prospective customers.
*/


SELECT indivName AS 'Name' , annualFee FROM ((PremierCustomers NATURAL JOIN Customers) NATURAL JOIN IndividualCustomers)
UNION
SELECT corpName AS 'Name' , annualFee FROM ((PremierCustomers NATURAL JOIN Customers) NATURAL JOIN CorporationCustomers) ORDER BY annualFee DESC LIMIT 3;


/*
12.	List the five model, make, and year that have caused the most visits on average to Dave’s 
	automotive per vehicle in the past three years, along with the average number of visits per vehicle.
*/

<<<<<<< HEAD
SELECT model, make, yearMade, GROUP_CONCAT(dateOfService SEPARATOR ', ') AS DatesVisited, COUNT(cVehicleID) AS Visits FROM VehicleModelInfo NATURAL JOIN CustomerVehicles NATURAL JOIN MaintenanceOrders
WHERE dateOfService >= DATE_SUB(NOW(), INTERVAL 3 YEAR) GROUP BY make ORDER BY Visits DESC LIMIT 5;
=======
SELECT model, make, AVG(COUNT(*)) AS visits FROM (MaintenanceOrders NATURAL JOIN CustomerVehicles NATURAL JOIN VehicleModelInfo)
     WHERE dateOfService BETWEEN '2014-01-01' AND '2017-12-15' GROUP BY visits LIMIT 5;
>>>>>>> 8ccabe9d1e22106c33459f25726281dc6d8bed3c

SELECT model, make, COUNT(*) FROM VehicleModelInfo NATURAL JOIN CustomerVehicles GROUP BY make;
/*
13.	Find the mechanic who is mentoring the most other mechanics.  
		List the skills that the mechanic is passing along to the other mechanics.
*/
SELECT * FROM
((SELECT corpName, FORMAT(ABS(PremierCustomers.annualFee - PremierCustomers.annualSpent), 2) AS Difference FROM PremierCustomers NATURAL JOIN (Customers NATURAL JOIN CorporationCustomers) 
UNION
SELECT indivName, FORMAT(ABS(PremierCustomers.annualFee - PremierCustomers.annualSpent), 2) AS Difference FROM PremierCustomers NATURAL JOIN (Customers NATURAL JOIN IndividualCustomers))Customers)
 ORDER BY Difference ASC;

SELECT (SELECT eName FROM Employees WHERE Mentorships.mentorID = Employees.empID) AS Mentor, Mentorships.skillTaught AS Skill, COUNT(Mentorships.mentorID) AS Mentees FROM Mentorships GROUP BY Mentorships.mentorID ORDER BY Mentees DESC LIMIT 2;

/*
14.	Find the three skills that have the fewest mechanics who have those skills.
*/
SELECT skill, COUNT(skill) AS SkillCount, GROUP_CONCAT(eName SEPARATOR ', ') AS Mechanics FROM Skills NATURAL JOIN Mechanics INNER JOIN Employees ON Mechanics.mechID = Employees.empID GROUP BY skill ORDER BY SkillCount ASC LIMIT 3;


/*
15.	List the employees who are both service technicians as well as mechanics.
*/

SELECT * FROM ((Employees INNER JOIN ServiceTechnicians ON Employees.empID = ServiceTechnicians.sTechID) INNER JOIN Mechanics ON Employees.empID = Mechanics.mechID);



/*
16.	For all service intervals that we support, list the details of that service interval and 
		the recommended maintenance package.
*/

SELECT mVehicleID, make, model, maintanenceInterval, packageName AS RecommendedPackage FROM VehicleModelInfo NATURAL JOIN RecommendedPackages NATURAL JOIN MaintenancePackages;
<<<<<<< HEAD


=======
>>>>>>> 8ccabe9d1e22106c33459f25726281dc6d8bed3c
/*
17.	List all maintenance items that are not part of a package.
*/

SELECT *, COUNT(itemID) FROM MaintenanceItems GROUP BY itemID HAVING COUNT(itemID) = 1;

/*
18.	Three additional queries that demonstrate the five additional business rules.  
		Feel free to create additional views to support these queries if you so desire.
*/
SELECT mechID, COUNT(orderID) AS test FROM (Mechanics INNER JOIN Employees ON (Mechanics.mechID = Employees.empID)) NATURAL JOIN OrderItems GROUP BY mechID HAVING test <= 3;
SELECT mechID, certificate, skill FROM Mechanics INNER JOIN Employees ON Mechanics.mechID = Employees.empID NATURAL JOIN Skills NATURAL JOIN Certificates WHERE certificate = 'engine-repair';

SELECT eName, GROUP_CONCAT(certificate SEPARATOR ', ') AS Certifications, GROUP_CONCAT(skill SEPARATOR ', ') AS Skills FROM Mechanics INNER JOIN  Mentorships ON Mechanics.mechID = Mentorships.mentorID NATURAL JOIN Skills NATURAL JOIN Certificates INNER JOIN Employees ON Employees.empID = Mentorships.mentorID WHERE certificate = skill GROUP BY mentorID;

SELECT eName, Mentorships.mentorID, COUNT(Mentorships.menteeID) AS Mentee
FROM (Mentorships INNER JOIN (Mechanics INNER JOIN Employees ON (Mechanics.mechID = Employees.empID)) ON (Mentorships.mentorID = Mechanics.mechID)) GROUP BY mentorID ORDER BY COUNT(Mentorships.mentorID) DESC LIMIT 2;

SELECT (SELECT eName FROM Employees WHERE Mentorships.mentorID = Employees.empID) AS Mentor, (SELECT COUNT(menteeID) FROM Mentorships WHERE Mentorships.menteeID = Employees.empID) AS Mentee FROM Mentorships ORDER BY Mentor;
SELECT (SELECT eName FROM Employees WHERE Mentorships.mentorID = Employees.empID) AS Mentor, COUNT(mentorID) FROM Mentorships GROUP BY mentorID;


(SELECT I.indivName AS 'Customer Name', 
        P.packagePrice *
        (SELECT COUNT(A.cVehicleID) FROM cecs323sec3og12.MaintenanceOrders A
            WHERE A.cVehicleID = V.cVehicleID) AS 'Net Cost' 
    FROM cecs323sec3og12.Customers AS C
    NATURAL JOIN cecs323sec3og12.IndividualCustomers AS I
    NATURAL JOIN cecs323sec3og12.CustomerVehicles AS V
    NATURAL JOIN cecs323sec3og12.MaintenanceOrders AS O
    NATURAL JOIN cecs323sec3og12.MaintenancePackages AS P
    WHERE O.dateOfService BETWEEN '2015-01-01' AND '2017-12-31'
    AND packagePrice <> 0)
UNION
(SELECT R.corpName AS 'Customer Name',
        P.packagePrice *
        (SELECT COUNT(A.cVehicleID) FROM cecs323sec3og12.MaintenanceOrders A
            WHERE A.cVehicleID = V.cVehicleID) AS 'Net Cost'  
    FROM cecs323sec3og12.Customers AS C
    NATURAL JOIN cecs323sec3og12.CorporationCustomers AS R
    NATURAL JOIN cecs323sec3og12.CustomerVehicles AS V
    NATURAL JOIN cecs323sec3og12.MaintenanceOrders AS O
    NATURAL JOIN cecs323sec3og12.MaintenancePackages AS P
    WHERE O.dateOfService BETWEEN '2015-01-01' AND '2017-12-31'
    AND packagePrice <> 0) ORDER BY 'Customer Name' DESC LIMIT 3;


SELECT * FROM
(SELECT corpName, FORMAT(ABS(PremierCustomers.annualFee - PremierCustomers.annualSpent), 2) AS Difference FROM PremierCustomers NATURAL JOIN (Customers NATURAL JOIN CorporationCustomers) 
UNION
SELECT indivName, FORMAT(ABS(PremierCustomers.annualFee - PremierCustomers.annualSpent), 2) AS Difference FROM PremierCustomers NATURAL JOIN (Customers NATURAL JOIN IndividualCustomers)) AS Customers
 ORDER BY Difference DESC;


CREATE VIEW Prospective_resurrection_v AS 
SELECT rFirstName, rLastName, MAX(contactDateTime) AS MostRecentDateContacted FROM Referrals NATURAL JOIN ProspectiveCustomers NATURAL JOIN ProspectContacts 
WHERE timesContact >= 3 GROUP BY rID HAVING MostRecentDateContacted < DATE_SUB(NOW(),INTERVAL 1 YEAR) ORDER BY MostRecentDateContacted;

SELECT * FROM
(SELECT corpName, FORMAT(ABS(PremierCustomers.annualFee - PremierCustomers.annualSpent), 2) AS Difference FROM PremierCustomers NATURAL JOIN (Customers NATURAL JOIN CorporationCustomers) 
UNION
SELECT indivName, FORMAT(ABS(PremierCustomers.annualFee - PremierCustomers.annualSpent), 2) AS Difference FROM PremierCustomers NATURAL JOIN (Customers NATURAL JOIN IndividualCustomers))Customers
 ORDER BY Difference+0 DESC;
 
 CREATE VIEW Premier_profits_v AS
SELECT (SELECT indivName FROM IndividualCustomers WHERE IndividualCustomers.cID = PremierCustomers.cID) AS Customers, annualFee AS 'Premier Cost', FORMAT((annualFee * 1.20), 2) AS 'Cost If You Are Steady' FROM PremierCustomers;

(SELECT I.indivName AS 'Customer Name',
        P.packagePrice *
        (SELECT COUNT(A.cVehicleID) FROM cecs323sec3og12.MaintenanceOrders A
            WHERE A.cVehicleID = V.cVehicleID) AS 'Net Cost'
    FROM cecs323sec3og12.Customers AS C
    NATURAL JOIN cecs323sec3og12.IndividualCustomers AS I
    NATURAL JOIN cecs323sec3og12.CustomerVehicles AS V
    NATURAL JOIN cecs323sec3og12.MaintenanceOrders AS O
    NATURAL JOIN cecs323sec3og12.MaintenancePackages AS P
    WHERE O.dateOfService >= DATE_SUB(NOW(),INTERVAL 2 YEAR)
    AND packagePrice <> 0)
UNION
(SELECT R.corpName AS 'Customer Name',
        P.packagePrice *
        (SELECT COUNT(A.cVehicleID) FROM cecs323sec3og12.MaintenanceOrders A
            WHERE A.cVehicleID = V.cVehicleID) AS 'Net Cost'  
    FROM cecs323sec3og12.Customers AS C
    NATURAL JOIN cecs323sec3og12.CorporationCustomers AS R
    NATURAL JOIN cecs323sec3og12.CustomerVehicles AS V
    NATURAL JOIN cecs323sec3og12.MaintenanceOrders AS O
    NATURAL JOIN cecs323sec3og12.MaintenancePackages AS P
    WHERE O.dateOfService >= DATE_SUB(NOW(),INTERVAL 2 YEAR)
    AND packagePrice <> 0) ORDER BY 'Customer Name' DESC LIMIT 3;


/*1*/
SELECT indivName AS 'Customer Name', phoneNumber AS 'Phone Number', (SELECT COUNT(cID) FROM PremierCustomers WHERE IndividualCustomers.cID = PremierCustomers.cID) AS 'Premier Customers', (SELECT COUNT(cID) FROM EmployeeCustomers WHERE IndividualCustomers.cID = EmployeeCustomers.cID) AS 'Employee Customers', (SELECT COUNT(cID) FROM SteadyCustomers WHERE IndividualCustomers.cID = SteadyCustomers.cID) AS 'Steady Customers' FROM IndividualCustomers NATURAL JOIN Customers
UNION
SELECT corpName AS 'Customer Name', phoneNumber AS 'Phone Number', (SELECT COUNT(cID) FROM PremierCustomers WHERE CorporationCustomers.cID = PremierCustomers.cID) AS 'Premier Customers', (SELECT COUNT(cID) FROM EmployeeCustomers WHERE CorporationCustomers.cID = EmployeeCustomers.cID) AS 'Employee Customers', (SELECT COUNT(cID) FROM SteadyCustomers WHERE CorporationCustomers.cID = SteadyCustomers.cID) AS 'Steady Customers' FROM CorporationCustomers NATURAL JOIN Customers;

//Mechanics who have 3 or more maintenance items (should return none since all are less than or equal to 3)

SELECT mechID, COUNT(orderID) AS test FROM (Mechanics INNER JOIN Employees ON (Mechanics.mechID = Employees.empID)) NATURAL JOIN OrderItems GROUP BY mechID HAVING test > 3;

//Mechanics must have certification to mentor
SELECT eName, GROUP_CONCAT(certificate SEPARATOR ', ') AS Certifications, GROUP_CONCAT(skill SEPARATOR ', ') AS Skills FROM Mechanics INNER JOIN  Mentorships ON Mechanics.mechID = Mentorships.mentorID NATURAL JOIN Skills NATURAL JOIN Certificates INNER JOIN Employees ON Employees.empID = Mentorships.mentorID WHERE certificate = skill GROUP BY mentorID;

//A mentor can only have at most two mentees at the same time
SELECT eName, Mentorships.skillTaught, COUNT(Mentorships.mentorID) AS Mentees
FROM (Mentorships INNER JOIN (Mechanics INNER JOIN Employees ON (Mechanics.mechID = Employees.empID)) ON (Mentorships.mentorID = Mechanics.mechID)) GROUP BY mentorID ORDER BY COUNT(Mentorships.mentorID) DESC LIMIT 2;


//Mentors only have at most 2 mentees
SELECT (SELECT eName FROM Employees WHERE Mentorships.mentorID = Employees.empID) AS Mentor, COUNT(mentorID) FROM Mentorships GROUP BY mentorID;








































/*
1.     Customer_v – for each customer, indicate his or her name as well as the customer type (prospect, steady or premier) as well as the number of years that customer has been with us.
*/

CREATE VIEW Customer_v AS
SELECT indivName AS 'Customer Name', cYearMembership AS 'Years As Customers', (SELECT COUNT(cID) FROM PremierCustomers WHERE IndividualCustomers.cID = PremierCustomers.cID) AS 'Premier Customers', (SELECT COUNT(cID) FROM EmployeeCustomers WHERE IndividualCustomers.cID = EmployeeCustomers.cID) AS 'Employee Customers', (SELECT COUNT(cID) FROM SteadyCustomers WHERE IndividualCustomers.cID = SteadyCustomers.cID) AS 'Steady Customers' FROM IndividualCustomers NATURAL JOIN Customers
UNION
SELECT corpName AS 'Customer Name', cYearMembership AS 'Years As Customers', (SELECT COUNT(cID) FROM PremierCustomers WHERE CorporationCustomers.cID = PremierCustomers.cID) AS 'Premier Customers', (SELECT COUNT(cID) FROM EmployeeCustomers WHERE CorporationCustomers.cID = EmployeeCustomers.cID) AS 'Employee Customers', (SELECT COUNT(cID) FROM SteadyCustomers WHERE CorporationCustomers.cID = SteadyCustomers.cID) AS 'Steady Customers' FROM CorporationCustomers NATURAL JOIN Customers;


/*
2.     Customer_addresses_v – for each customer, indicate whether they are an individual or a corporate account, and display all of the addresses that we are managing for that customer.
*/

CREATE VIEW Customer_Addresses_v AS
SELECT indivName AS 'Customer Name', address FROM Customers NATURAL JOIN IndividualCustomers
UNION
SELECT corpName AS 'Customer Name', address FROM Customers NATURAL JOIN CorporationCustomers
UNION
SELECT corpName AS 'Customer Name', address FROM CorporationCustomers NATURAL JOIN CorporationAddresses;









/*
3.     Mechanic_mentor_v – reports all of the mentor/mentee relationships at Dave’s, sorted by the name of the mentor, then the name of the mentee.
*/

CREATE VIEW Mechanic_mentor_v AS
SELECT (SELECT eName FROM Employees WHERE Mentorships.mentorID = Employees.empID) AS Mentor, (SELECT eName FROM Employees WHERE Mentorships.menteeID = Employees.empID) AS Mentee FROM Mentorships ORDER BY Mentor;


/*
4.     Premier_profits_v – On a year by year basis, show the premier customer’s outlay versus what they would have been charged for the services which they received had they merely been steady customers.
*/

CREATE VIEW Premier_profits_v AS
SELECT (SELECT indivName FROM IndividualCustomers WHERE IndividualCustomers.cID = PremierCustomers.cID) AS Customers, FORMAT(annualFee, 2) AS 'Premier Cost', FORMAT((annualFee * 1.20), 2) AS 'Cost If You Are Steady' FROM PremierCustomers;

/*
5.     Prospective_resurrection_v – List all of the prospective customers who have had three or more contacts, and for whom the most recent contact was more than a year ago.  They might be ripe for another attempt.
*/

CREATE VIEW Prospective_resurrection_v AS
SELECT rFirstName, rLastName, MAX(contactDateTime) AS MostRecentDateContacted FROM Referrals NATURAL JOIN ProspectiveCustomers NATURAL JOIN ProspectContacts
WHERE timesContact >= 3 GROUP BY rID HAVING MostRecentDateContacted < DATE_SUB(NOW(),INTERVAL 1 YEAR) ORDER BY MostRecentDateContacted;









