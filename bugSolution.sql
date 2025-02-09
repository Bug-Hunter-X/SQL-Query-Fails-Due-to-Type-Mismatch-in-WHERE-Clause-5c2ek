```sql
-- Ensure that department_id is passed as an integer
SELECT * FROM employees WHERE department_id = 123 AND salary > 100000;

-- Alternatively, ensure the department_id column is defined as a string type if needed,
-- but this is generally less efficient for numeric IDs.
-- If you must use strings, explicitly cast the column:
SELECT * FROM employees WHERE CAST(department_id AS VARCHAR(255)) = '123' AND salary > 100000;
```