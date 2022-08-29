-- 175. Combine Two Tables
-- Easy
-- Average Runtime: 390.67 MS (N = 3)
-- Average Memory Usage: 0B

SELECT
    firstName,
    lastName,
    city,
    state
FROM Person LEFT JOIN Address ON Address.personId = Person.personID;
