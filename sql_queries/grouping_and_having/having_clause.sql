-- Q: HAVING Clause
-- Write an SQL query to find all Origin Ports in the Orderlist table that have shipped more than 50 orders.
select Origin_Port, count(Order_ID) from Orderlist group by Origin_Port
having count(Order_ID)> 50 