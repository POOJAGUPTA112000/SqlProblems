1CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
2BEGIN
3 set N=N-1;
4  RETURN (
5      # Write your MySQL query statement below.
6       ifnull(( select distinct(salary) from Employee order by salary desc limit 1
7       offset N),null)
8       );
9END