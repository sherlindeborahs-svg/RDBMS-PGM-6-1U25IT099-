-- ==========================================================
-- TEST CASE 1
-- Karthik must exist
-- ==========================================================

SELECT
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM Student
            WHERE StudentName = 'Karthik'
        )
        THEN 'PASS: Karthik exists'
        ELSE 'FAIL: Karthik does not exist'
    END AS TestCase1;


-- ==========================================================
-- TEST CASE 2
-- Karthik's department must be 103
-- ==========================================================

SELECT
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM Student
            WHERE StudentName = 'Karthik'
              AND DepartmentID = 103
        )
        THEN 'PASS: Karthik department updated to 103'
        ELSE 'FAIL: Karthik department is not 103'
    END AS TestCase2;


-- ==========================================================
-- TEST CASE 3
-- StudentID 1002 must be deleted
-- ==========================================================

SELECT
    CASE
        WHEN NOT EXISTS (
            SELECT 1
            FROM Student
            WHERE StudentID = 1002
        )
        THEN 'PASS: StudentID 1002 deleted'
        ELSE 'FAIL: StudentID 1002 still exists'
    END AS TestCase3;


-- ==========================================================
-- TEST CASE 4
-- Arun must remain unchanged
-- ==========================================================

SELECT
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM Student
            WHERE StudentID = 1001
              AND StudentName = 'Arun'
              AND DepartmentID = 101
        )
        THEN 'PASS: Arun unchanged'
        ELSE 'FAIL: Arun was modified'
    END AS TestCase4;


-- ==========================================================
-- TEST CASE 5
-- Divya must remain unchanged
-- ==========================================================

SELECT
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM Student
            WHERE StudentID = 1004
              AND StudentName = 'Divya'
              AND DepartmentID = 103
        )
        THEN 'PASS: Divya unchanged'
        ELSE 'FAIL: Divya was modified'
    END AS TestCase5;


-- ==========================================================
-- TEST CASE 6
-- Hari must remain unchanged
-- ==========================================================

SELECT
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM Student
            WHERE StudentID = 1005
              AND StudentName = 'Hari'
              AND DepartmentID = 102
        )
        THEN 'PASS: Hari unchanged'
        ELSE 'FAIL: Hari was modified'
    END AS TestCase6;
