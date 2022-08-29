-- 176. Second Highest Salary
-- Medium
-- Average Runtime: 260.33 MS (N = 3)
-- Average Memory Usage: 0B

SELECT 
  MAX(Salary) SecondHighestSalary 
FROM Employee
WHERE Salary < (
  SELECT MAX(Salary) FROM Employee
);

-- Option Two
-- Using Offsets
SELECT
    (SELECT DISTINCT
            Salary
        FROM
            Employee
        ORDER BY Salary DESC
        LIMIT 1 OFFSET 1) AS SecondHighestSalary
;
