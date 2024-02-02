-- Q: Aggregate Functions
-- How would you write an SQL query to find the maximum Weight of any order in the Orderlist table?
select max("Weight") from Orderlist -- Does not sort the entire dataset -> better performance
select top 1 "Weight" from Orderlist order by "Weight" desc -- sorts entire table