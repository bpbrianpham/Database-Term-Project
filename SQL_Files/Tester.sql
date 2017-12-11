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
SELECT dateOfService, cVehicleID, SUM(itemPrice) AS TotalCost FROM MaintenanceOrders NATURAL JOIN (OrderItem NATURAL JOIN MaintenanceItem NATURAL JOIN MaintenancePackages) WHERE packID = 0 GROUP BY dateOfService, cVehicleID
UNION
SELECT dateOfService, cVehicleID, SUM(packagePrice) AS TotalCost FROM MaintenanceOrders NATURAL JOIN (OrderItem NATURAL JOIN MaintenanceItem NATURAL JOIN MaintenancePackages) WHERE packID != 0 GROUP BY dateOfService, cVehicleID;

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


/*
13.	Find the mechanic who is mentoring the most other mechanics.  
		List the skills that the mechanic is passing along to the other mechanics.
*/


/*
14.	Find the three skills that have the fewest mechanics who have those skills.
*/


/*
15.	List the employees who are both service technicians as well as mechanics.
*/


/*
16.	For all service intervals that we support, list the details of that service interval and 
		the recommended maintenance package.
*/


/*
17.	List all maintenance items that are not part of a package.
*/


/*
18.	Three additional queries that demonstrate the five additional business rules.  
		Feel free to create additional views to support these queries if you so desire.
*/

