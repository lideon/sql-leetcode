-- 177. Nth Highest Salary
-- Medium
-- Average Runtime: 492.67 MS (N = 3)
-- Average Memory Usage: 0B

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    DECLARE local_offset INT;
    SET local_offset = N - 1;
  RETURN (
      # Write your MySQL query statement below.

    SELECT
    (SELECT DISTINCT
            Salary
        FROM
            Employee
        ORDER BY Salary DESC
        LIMIT 1 OFFSET local_offset) AS SecondHighestSalary 
  );
END
