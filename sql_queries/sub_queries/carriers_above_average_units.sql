-- Q: Subqueries
/* How would you write an SQL query to select all Carriers from the Orderlist table that have handled more 
than the average number of units shipped per order?*/

select distinct Carrier from Orderlist where Unit_quantity> (select avg(unit_quantity) from Orderlist)