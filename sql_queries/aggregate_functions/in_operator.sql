-- Q: IN Operator
-- Write an SQL query to select all orders from the Orderlist table where the Origin Port is either 'New York', 'Los Angeles', 'Houston', or 'PORT09'.
select * from Orderlist where Origin_Port in ('New York', 'Los Angeles','Houston','PORT09')