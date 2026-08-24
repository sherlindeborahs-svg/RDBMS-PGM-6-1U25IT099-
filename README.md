# SQL Assignment – Student Database Update and Delete

## Objective

Write SQL statements to modify the `Student` table according to the requirements below.

### Task

You are given a `Student` table containing student records.

You must perform the following operations:

1. Update the department of the student named **Karthik** from department `101` to department `103`.
2. Delete the student record whose `StudentID` is `1002`.

## Database Table

The database contains the following table:

```sql
Student(
    StudentID INTEGER PRIMARY KEY,
    StudentName TEXT,
    DepartmentID INTEGER
)
