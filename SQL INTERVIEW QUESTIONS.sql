

1. What is SQL?

Answer: SQL (Structured Query Language) is a standard language used to interact with relational databases. It enables users to retrieve, manipulate, and manage data. SQL is commonly used to query data, modify it, and control access to it.

Examples:

SELECT * FROM Employees; – This command retrieves all columns from the Employees table.

SELECT name, age FROM Users WHERE age > 25; – This retrieves the name and age columns from Users where the age is above 25.




---

2. What is a Primary Key?

Answer: A Primary Key is a unique identifier for records in a table. It ensures that each record can be uniquely identified and that no duplicate or NULL values are allowed in the Primary Key column.

Examples:

Defining a Primary Key in Table Creation: CREATE TABLE Students (ID INT PRIMARY KEY, Name VARCHAR(50)); – Here, ID acts as a Primary Key, meaning each ID value must be unique.

Adding a Primary Key to an Existing Table: ALTER TABLE Orders ADD PRIMARY KEY (OrderID); – This adds a Primary Key constraint on the OrderID column in the Orders table.




---

3. What is a Foreign Key?

Answer: A Foreign Key is a field in one table that refers to the Primary Key of another table, creating a relationship between the two tables and enforcing referential integrity.

Examples:

Defining a Foreign Key in Table Creation: CREATE TABLE Orders (OrderID INT, CustomerID INT, FOREIGN KEY (CustomerID) REFERENCES Customers(ID)); – CustomerID is a Foreign Key linking Orders to Customers.

Adding a Foreign Key to an Existing Table: ALTER TABLE Sales ADD FOREIGN KEY (ProductID) REFERENCES Products(ProductID); – This creates a link between Sales and Products through ProductID.




---

4. What is the difference between WHERE and HAVING?

Answer: WHERE is used to filter rows before any aggregation is done, while HAVING is used to filter groups after aggregation.

Examples:

Using WHERE Clause: SELECT * FROM Employees WHERE salary > 50000; – This filters employees based on salary before any aggregation.

Using HAVING Clause: SELECT department, AVG(salary) FROM Employees GROUP BY department HAVING AVG(salary) > 60000; – This filters departments where the average salary is above 60,000, after aggregation.




---

5. Explain JOIN and its types.

Answer: JOIN is used to combine rows from two or more tables based on a related column between them. Types of joins include INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN.

Examples:

INNER JOIN: SELECT e.name, d.department FROM Employees e INNER JOIN Departments d ON e.dept_id = d.dept_id; – Returns only matching rows between Employees and Departments.

LEFT JOIN: SELECT e.name, d.department FROM Employees e LEFT JOIN Departments d ON e.dept_id = d.dept_id; – Returns all rows from Employees and matched rows from Departments.




---

6. What is a VIEW in SQL?

Answer: A VIEW is a virtual table created by a query. It helps simplify complex queries and provides a way to encapsulate query logic.

Examples:

Creating a View: CREATE VIEW HighSalary AS SELECT name, salary FROM Employees WHERE salary > 70000; – Creates a view that only shows employees with salaries above 70,000.

Using a View: SELECT * FROM HighSalary; – Retrieves data from the HighSalary view as if it were a table.




---

7. Explain the difference between UNION and UNION ALL.

Answer: UNION combines result sets of two queries and removes duplicates, while UNION ALL combines all records, including duplicates.

Examples:

Using UNION: SELECT name FROM Customers UNION SELECT name FROM Clients; – Combines unique names from both tables.

Using UNION ALL: SELECT name FROM Customers UNION ALL SELECT name FROM Clients; – Combines all names, including duplicates.




---

8. What is an Index in SQL?

Answer: An Index speeds up data retrieval by allowing faster access to rows. However, it can slow down data modification operations like INSERT, UPDATE, and DELETE.

Examples:

Creating an Index: CREATE INDEX idx_name ON Employees(name); – Indexes the name column in Employees.

Dropping an Index: DROP INDEX idx_name; – Removes the idx_name index, potentially slowing queries on name.




---

9. Explain GROUP BY with an example.

Answer: GROUP BY groups rows with the same value in specified columns, often used with aggregate functions to provide summarized data.

Examples:

SELECT department, COUNT(*) FROM Employees GROUP BY department; – Counts employees in each department.

SELECT age, AVG(salary) FROM Employees GROUP BY age; – Calculates average salary by age group.




---

10. What are Aggregate Functions in SQL?

Answer: Aggregate functions perform calculations on multiple rows and return a single value. Common functions include SUM, AVG, MIN, MAX, and COUNT.

Examples:

SELECT AVG(salary) FROM Employees; – Returns the average salary of all employees.

SELECT department, SUM(salary) FROM Employees GROUP BY department; – Sums salaries for each department.




---

11. What is a Stored Procedure?

Answer: A Stored Procedure is a collection of SQL statements stored in the database, allowing complex operations to be executed in a single call.

Examples:

Creating a Procedure: CREATE PROCEDURE GetEmployeeDetails() BEGIN SELECT * FROM Employees; END;

Calling a Procedure: CALL GetEmployeeDetails(); – Executes the stored procedure.




---

12. Explain Trigger in SQL.

Answer: A Trigger is a SQL script that automatically runs in response to specific events on a table, such as INSERT, UPDATE, or DELETE.

Examples:

Trigger on Update: CREATE TRIGGER UpdateTime AFTER UPDATE ON Orders FOR EACH ROW SET NEW.updated_at = NOW();

Trigger on Delete: CREATE TRIGGER DeleteCheck BEFORE DELETE ON Products FOR EACH ROW IF OLD.quantity < 1 THEN RAISE ERROR 'Cannot delete';




---

13. What is Normalization?

Answer: Normalization is a process of organizing data in a database to reduce redundancy and improve data integrity. It involves dividing a database into two or more tables and defining relationships between them.

Examples:

First Normal Form (1NF): Ensures each column has atomic values. CREATE TABLE Contacts (ContactID INT, Name VARCHAR(100), Phone VARCHAR(10));

Second Normal Form (2NF): Removes partial dependencies. Split Student data from department data in a separate table to eliminate redundancy.


14. Explain Subquery and Correlated Subquery.

Answer: A subquery is a query within another query, often used to provide results to the main query. A correlated subquery is a subquery that references a column from the outer query.

Examples:

Subquery: SELECT name FROM Employees WHERE salary > (SELECT AVG(salary) FROM Employees);

Correlated Subquery: SELECT e1.name FROM Employees e1 WHERE e1.salary > (SELECT AVG(e2.salary) FROM Employees e2 WHERE e1.department = e2.department);




---

15. What is the difference between DELETE and TRUNCATE?

Answer: DELETE removes rows one by one and can have a WHERE clause, whereas TRUNCATE removes all rows from a table instantly and does not allow filtering.

Examples:

Using DELETE: DELETE FROM Employees WHERE age > 60; – Removes employees older than 60.

Using TRUNCATE: TRUNCATE TABLE Employees; – Quickly removes all rows from Employees.


Great! Here’s the continuation of the list, covering a range of SQL topics. I’ll keep the same format with explanations and examples for each question.


---

16. What is the DISTINCT keyword in SQL?

Answer: The DISTINCT keyword is used to remove duplicate values from the result set of a query.

Examples:

SELECT DISTINCT department FROM Employees; – Returns a list of unique departments from the Employees table.

SELECT DISTINCT city FROM Customers; – Retrieves unique city names from the Customers table.




---

17. What is the difference between CHAR and VARCHAR data types?

Answer: CHAR is a fixed-length string data type, while VARCHAR is a variable-length string. CHAR is often more memory-efficient for fields with consistent length, while VARCHAR is more flexible.

Examples:

Using CHAR: CREATE TABLE Users (ID INT, Gender CHAR(1)); – Here, Gender always stores exactly one character.

Using VARCHAR: CREATE TABLE Users (ID INT, Name VARCHAR(50)); – Name can store up to 50 characters, using only the needed space.




---

18. Explain CASE statement in SQL.

Answer: The CASE statement allows for conditional logic within SQL queries, similar to IF-ELSE statements in programming.

Examples:

SELECT name, salary, CASE WHEN salary > 50000 THEN 'High' ELSE 'Low' END AS SalaryRange FROM Employees; – Categorizes salary as 'High' or 'Low'.

SELECT name, department, CASE department WHEN 'HR' THEN 'Human Resources' WHEN 'IT' THEN 'Information Technology' END AS FullDepartment FROM Employees; – Translates department codes to full names.




---

19. How do you update data in SQL?

Answer: The UPDATE statement is used to modify existing data in a table. It can update one or multiple records based on a WHERE condition.

Examples:

UPDATE Employees SET salary = salary * 1.1 WHERE department = 'Sales'; – Increases salaries by 10% for the Sales department.

UPDATE Customers SET status = 'Inactive' WHERE last_purchase_date < '2023-01-01'; – Marks customers inactive based on last purchase date.




---

20. How do you delete records in SQL?

Answer: The DELETE statement removes specific rows from a table, controlled by a WHERE condition.

Examples:

DELETE FROM Employees WHERE age > 65; – Deletes employees older than 65.

DELETE FROM Orders WHERE order_date < '2023-01-01'; – Removes orders placed before a specific date.




---

21. What is a SELF JOIN?

Answer: A SELF JOIN joins a table with itself to create a relationship between rows within the same table. This is useful for comparisons within the same table.

Examples:

SELECT e1.name, e2.name AS Manager FROM Employees e1 JOIN Employees e2 ON e1.manager_id = e2.id; – Finds each employee’s manager.

SELECT a.id, a.price, b.id AS Competing_Product, b.price AS Competing_Price FROM Products a JOIN Products b ON a.category_id = b.category_id AND a.id != b.id; – Compares products in the same category.




---

22. What is COALESCE in SQL?

Answer: COALESCE returns the first non-null value from a list of arguments, often used to handle NULL values.

Examples:

SELECT name, COALESCE(phone, 'N/A') FROM Customers; – Replaces NULL phone numbers with 'N/A'.

SELECT order_id, COALESCE(delivery_date, 'Pending') FROM Orders; – Replaces NULL delivery dates with 'Pending'.




---

23. Explain the use of the RANK() function.

Answer: RANK() assigns a unique rank to each row within a partition based on a specified column, with gaps in ranking for ties.

Examples:

SELECT name, department, salary, RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS Rank FROM Employees; – Ranks employees by salary within each department.

SELECT student_id, score, RANK() OVER (ORDER BY score DESC) AS Rank FROM TestScores; – Ranks students by score, with gaps for ties.




---

24. How does DENSE_RANK() differ from RANK()?

Answer: DENSE_RANK() assigns ranks without gaps for tied values, unlike RANK(), which has gaps.

Examples:

SELECT name, department, salary, DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS DenseRank FROM Employees; – Dense ranks employees by salary within each department.

SELECT player_id, points, DENSE_RANK() OVER (ORDER BY points DESC) AS Rank FROM Players; – Ranks players by points, without gaps.




---

25. What is the purpose of the ROW_NUMBER() function?

Answer: ROW_NUMBER() assigns a unique sequential number to rows within a partition, based on the specified order.

Examples:

SELECT name, department, ROW_NUMBER() OVER (PARTITION BY department ORDER BY hire_date) AS RowNum FROM Employees; – Numbers employees by hire date within each department.

SELECT product_id, price, ROW_NUMBER() OVER (ORDER BY price DESC) AS RowNum FROM Products; – Numbers products by descending price.




---

26. How can you retrieve the current date in SQL?

Answer: Functions like CURRENT_DATE, GETDATE(), or SYSDATE are used to retrieve the current date, depending on the SQL dialect.

Examples:

SELECT CURRENT_DATE; – Returns the current date in some SQL systems like PostgreSQL.

SELECT GETDATE(); – Returns the current date and time in SQL Server.




---

27. How does the EXISTS clause work?

Answer: EXISTS checks for the existence of rows in a subquery. It returns TRUE if at least one row matches and is often used in conditional logic.

Examples:

SELECT name FROM Employees WHERE EXISTS (SELECT 1 FROM Managers WHERE Employees.id = Managers.employee_id); – Finds employees who are managers.

SELECT order_id FROM Orders WHERE EXISTS (SELECT * FROM Deliveries WHERE Orders.order_id = Deliveries.order_id); – Retrieves orders that have deliveries.




---

28. Explain ANY and ALL operators.

Answer: ANY returns TRUE if any comparison in the list is TRUE, while ALL requires all comparisons to be TRUE.

Examples:

SELECT * FROM Products WHERE price > ANY (SELECT price FROM Competitors); – Finds products priced higher than any competitor’s.

SELECT * FROM Products WHERE price > ALL (SELECT price FROM Competitors); – Finds products priced higher than all competitors.




---

29. What are CTEs (Common Table Expressions)?

Answer: A CTE, defined with WITH, is a temporary result set that can be referenced within a query. CTEs are often used for recursive queries.

Examples:

WITH Sales_CTE AS (SELECT * FROM Sales WHERE amount > 1000) SELECT * FROM Sales_CTE; – Filters sales above 1000.

WITH EmployeeHierarchy AS (SELECT id, name FROM Employees WHERE manager_id IS NULL UNION ALL SELECT e.id, e.name FROM Employees e JOIN EmployeeHierarchy eh ON e.manager_id = eh.id) SELECT * FROM EmployeeHierarchy; – Creates a recursive employee hierarchy.




---

30. What is a Transaction in SQL?

Answer: A Transaction is a sequence of operations executed as a single unit, which can be committed (saved) or rolled back (undone).

Examples:

Transaction Example:

BEGIN TRANSACTION;
UPDATE Accounts SET balance = balance - 100 WHERE account_id = 1;
UPDATE Accounts SET balance = balance + 100 WHERE account_id = 2;
COMMIT;

– Transfers funds between accounts.

Rollback Example:

BEGIN TRANSACTION;
DELETE FROM Employees WHERE department = 'Sales';
ROLLBACK;

– Reverts changes after the DELETE operation if needed.


