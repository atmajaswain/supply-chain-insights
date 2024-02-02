-- Q: Updating Records
/* Write an SQL query to update the Service Level for all orders in the Orderlist table to 'Premium'
where the Weight is greater than 2000.*/

update orderlist set service_level = 'Premium' where weight> 2000