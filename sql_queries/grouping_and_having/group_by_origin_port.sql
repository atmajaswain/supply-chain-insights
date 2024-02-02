-- Q: GROUP BY Statement
-- How would you write an SQL query to count the number of orders from each Origin Port in the Orderlist table?
SELECT Origin_Port,count(Order_ID) as count from Orderlist group by Origin_Port