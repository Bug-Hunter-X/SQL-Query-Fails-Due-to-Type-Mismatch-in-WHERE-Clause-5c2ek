```sql
SELECT * FROM employees WHERE department_id = '123' AND salary > 100000;
```

This query might seem straightforward, but it can lead to unexpected behavior if the `department_id` column is not defined as a string type but instead as an integer type.  If the application submitting this query inadvertently sends the `department_id` as a string, the WHERE clause will always evaluate to false because a string comparison with an integer field will not find a match, even if there are rows with `department_id = 123` (integer).