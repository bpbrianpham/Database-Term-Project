/*
Testing scenarios:
1.	List the customers.  For each customer, indicate which category he or she fall into, 
		and his or her contact information.  If you have more than one independent categorization 
        of customers, please indicate which category the customer falls into for all of the 
        categorizations.
*/


/*
2.	For each service visit, list the total cost to the customer for that visit.
*/
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


/*
4.	Find all of the mechanics who have three or more skills.
*/


/*
5.	Find all of the mechanics who have three or more skills in common.
		a.	Please give the name of each of the two mechanics sharing 3 or more skills.
		b.	Please make sure that any given pair of mechanics only shows up once.
*/


/*
6.	For each maintenance package, list the total cost of the maintenance package, 
		as well as a list of all of the maintenance items within that package.
*/

SELECT packageName, packagePrice, GROUP_CONCAT(itemName SEPARATOR ', ') AS MaintenanceItems FROM MaintenancePackages
NATURAL JOIN MaintenanceItems
GROUP BY packID;

SELECT packageName, packagePrice, itemName FROM MaintenanceItems NATURAL JOIN MaintenancePackages GROUP BY packageName;

/*
7.	Find all of those mechanics who have one or more maintenance items that they 
		lacked one or more of the necessary skills.
*/

/*
8.	List the customers, sorted by the number of loyalty points that they have, from 
		largest to smallest.
*/


/*
9.	List the premier customers and the difference between what they have paid in the past year, 
		versus the services that they actually used during that same time.  
        List from the customers with the largest difference to the smallest.
*/


/*
10.	Report on the steady customers based on the net profit that we have made from them over the 
		past year, and the dollar amount of that profit, in order from the greatest to the least.
*/
SELECT indivName, SUM(itemPrice) AS Profit FROM MaintenanceOrders NATURAL JOIN OrderItems NATURAL JOIN MaintenanceItems NATURAL JOIN CustomerVehicles NATURAL JOIN Customers NATURAL JOIN IndividualCustomers WHERE packID = 0 AND dateOfService >= DATE_SUB(NOW(),INTERVAL 1 YEAR) GROUP BY indivName
UNION
SELECT corpName, SUM(itemPrice) AS Profit FROM MaintenanceOrders NATURAL JOIN OrderItems NATURAL JOIN MaintenanceItems NATURAL JOIN CustomerVehicles NATURAL JOIN Customers NATURAL JOIN CorporationCustomers WHERE packID = 0 AND dateOfService >= DATE_SUB(NOW(),INTERVAL 1 YEAR) GROUP BY corpName
UNION
SELECT indivName, packagePrice AS Profit FROM MaintenanceOrders NATURAL JOIN OrderItems NATURAL JOIN MaintenanceItems NATURAL JOIN MaintenancePackages NATURAL JOIN CustomerVehicles NATURAL JOIN Customers NATURAL JOIN IndividualCustomers WHERE packID != 0 AND dateOfService >= DATE_SUB(NOW(),INTERVAL 1 YEAR) GROUP BY indivName
UNION
SELECT corpName, packagePrice AS Profit FROM MaintenanceOrders NATURAL JOIN OrderItems NATURAL JOIN MaintenanceItems NATURAL JOIN MaintenancePackages NATURAL JOIN CustomerVehicles NATURAL JOIN Customers NATURAL JOIN CorporationCustomers WHERE packID != 0 AND dateOfService >= DATE_SUB(NOW(),INTERVAL 1 YEAR) GROUP BY corpName
ORDER BY Profit DESC;
/*
11.	List the three premier customers who have paid Dave’s Automotive the greatest amount in the 
		past year, and the sum of their payments over that period.  Be sure to take into account 
        any discounts that they have earned by referring prospective customers.
*/


/*
12.	List the five model, make, and year that have caused the most visits on average to Dave’s 
		automotive per vehicle in the past three years, along with the average number of visits per 
        vehicle.
*/

SELECT model, make, AVG(COUNT(*)) AS visits FROM (MaintenanceOrders NATURAL JOIN CustomerVehicles NATURAL JOIN VehicleModelInfo)
     WHERE dateOfService BETWEEN '2014-01-01' AND '2017-12-15' GROUP BY visits LIMIT 5;

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


/*
14.	Find the three skills that have the fewest mechanics who have those skills.
*/
SELECT skill, COUNT(skill) AS SkillCount, GROUP_CONCAT(eName SEPARATOR ', ') AS Mechanics FROM Skills NATURAL JOIN Mechanics INNER JOIN Employees ON Mechanics.mechID = Employees.empID GROUP BY skill ORDER BY SkillCount ASC LIMIT 3;


/*
15.	List the employees who are both service technicians as well as mechanics.
*/


/*
16.	For all service intervals that we support, list the details of that service interval and 
		the recommended maintenance package.
*/

SELECT mVehicleID, make, model, maintanenceInterval, packageName AS RecommendedPackage FROM VehicleModelInfo NATURAL JOIN RecommendedPackages NATURAL JOIN MaintenancePackages;
/*
17.	List all maintenance items that are not part of a package.
*/


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

