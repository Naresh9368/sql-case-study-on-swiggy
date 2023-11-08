/* Q-1 Find customers who have never ordered */
SELECT name, email from users where user_id NOT IN (SELECT user_id from orders);

/* Q-2 Average Price/dish */
SELECT f.f_name as "Food Name",AVG(price) as "Avg Price" 
FROM menu as m 
JOIN food as f 
ON m.f_id = f.f_id 
GROUP BY m.f_id 

/* Q-3 Find top restautant in terms of number of orders for a given month */
SELECT r.r_name as "Top Restautant Name", COUNT(*) as "Total Order In June" 
FROM `orders` as o 
JOIN restaurants as r 
ON o.r_id = r.r_id 
WHERE MONTHNAME(date) LIKE "June" 
GROUP BY o.r_id 
ORDER BY COUNT(*) DESC LIMIT 1

/* Q-4 restaurants with monthly sales > x for a particular month. */
SELECT r.r_name as "Restaurant Name", SUM(amount) as "Revenue" 
FROM orders as o 
join restaurants as r 
on o.r_id = r.r_id 
WHERE MONTHNAME(date) LIKE "June" 
GROUP BY o.r_id 
having Revenue > 500

/* Q-5 Show all orders with order details for a particular customer in a particular date range. */
SELECT f.f_name as "Food Name", r.r_name as "Restaurant Name" 
FROM orders as o 
join restaurants as r 
on r.r_id=o.r_id 
JOIN order_details as od 
on od.order_id=o.order_id 
JOIN food as f 
on f.f_id=od.f_id 
WHERE o.user_id = (SELECT user_id from users WHERE name LIKE "Ankit") 
AND (date > "2022-6-10" AND date < "2022-7-10")

/* Q-6 Customer -> favorite food. */
WITH temp AS (
    SELECT o.user_id,od.f_id,COUNT(*) as "Frequency" 
	FROM orders o 
	JOIN order_details od 
    on o.order_id = od.order_id 
    GROUP by o.user_id,od.f_id
)
SELECT u.name,f.f_name,Frequency 
from temp t1 
JOIN users u 
on u.user_id = t1.user_id 
JOIN food f 
on f.f_id=t1.f_id
where t1.Frequency = (
    SELECT MAX(Frequency) 
    FROM temp t2 
    where t2.user_id = t1.user_id
)

/* Q-7 Find the restaurant with max repeat customers. */
SELECT r.r_name as "Restaurant Name",COUNT(*) as "Loyal Customer" 
FROM (
    SELECT r_id,user_id,COUNT(*) as "Visit" 
    from orders 
    GROUP BY r_id,user_id 
    HAVING COUNT(*) > 1
) t 
JOIN restaurants as r 
on r.r_id = t.r_id
GROUP BY t.r_id 
ORDER BY COUNT(*) DESC LIMIT 1

/* Q-8 Find most loyal customers for all restaurant. */
SELECT r.r_name as "Restaurant Name",u.name as "Loyal Customer",COUNT(*) as "Visit" 
from orders o 
JOIN restaurants r 
on o.r_id = r.r_id 
join users u 
on u.user_id = o.user_id
GROUP BY o.r_id,o.user_id
HAVING COUNT(*) > 1

/* Q-9 Month over month revenue growth of a restaurant/swiggy. */
SELECT Month,((Revenue-prev)/prev)*100 as "Month-Month Revenue(%)" FROM (
    WITH sales AS 
	(
    	SELECT MONTHNAME(date) as "Month", SUM(amount) as "Revenue" 
    	FROM orders 
		GROUP BY Month 
		ORDER BY MONTH(date) 
	)
	SELECT Month,Revenue,LAG(revenue,1) over(Order by Revenue) as prev FROM sales
) t


/* Q-10 Most Paired Products */