
Key Learnings from Problem 175:

1.  **LEFT JOIN**: This problem is a classic example of when to use a `LEFT JOIN`. We need to retrieve all records from the `Person` table (the 'left' table) and match them with records from the `Address` table (the 'right' table) based on `personId`.
2.  **Handling NULLs**: A `LEFT JOIN` naturally handles cases where there is no matching record in the `Address` table for a person. For such persons, the columns from the `Address` table (`city`, `state`) will automatically be `NULL` in the result, which is exactly what the problem requires.
3.  **Alias Usage**: Using table aliases (e.g., `p` for `Person`, `a` for `Address`) makes the query more concise and readable, especially when dealing with multiple tables.
