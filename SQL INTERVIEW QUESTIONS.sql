

1. What is SQL?

Answer: SQL (Structured Query Language) is a standard language used to interact with relational databases. It enables users to retrieve, manipulate, and manage data. SQL is commonly used to query data, modify it, and control access to it.

Examples:

SELECT * FROM Employees; – This command retrieves all columns from the Employees table.

SELECT name, age FROM Users WHERE age > 25; – This retrieves the name and age columns from Users where the age is above 25.


2. What is a Primary Key?

Answer: A Primary Key is a unique identifier for records in a table. It ensures that each record can be uniquely identified and that no duplicate or NULL values are allowed in the Primary Key column.

Examples:

Defining a Primary Key in Table Creation: CREATE TABLE Students (ID INT PRIMARY KEY, Name VARCHAR(50)); – Here, ID acts as a Primary Key, meaning each ID value must be unique.

Adding a Primary Key to an Existing Table: ALTER TABLE Orders ADD PRIMARY KEY (OrderID); – This adds a Primary Key constraint on the OrderID column in the Orders table.


3. What is a Foreign Key?

Answer: A Foreign Key is a field in one table that refers to the Primary Key of another table, creating a relationship between the two tables and enforcing referential integrity.

Examples:

Defining a Foreign Key in Table Creation: CREATE TABLE Orders (OrderID INT, CustomerID INT, FOREIGN KEY (CustomerID) REFERENCES Customers(ID)); – CustomerID is a Foreign Key linking Orders to Customers.

Adding a Foreign Key to an Existing Table: ALTER TABLE Sales ADD FOREIGN KEY (ProductID) REFERENCES Products(ProductID); – This creates a link between Sales and Products through ProductID.


4. What is the difference between WHERE and HAVING?

Answer: WHERE is used to filter rows before any aggregation is done, while HAVING is used to filter groups after aggregation.

Examples:

Using WHERE Clause: SELECT * FROM Employees WHERE salary > 50000; – This filters employees based on salary before any aggregation.

Using HAVING Clause: SELECT department, AVG(salary) FROM Employees GROUP BY department HAVING AVG(salary) > 60000; – This filters departments where the average salary is above 60,000, after aggregation.


5. Explain JOIN and its types.

Answer: JOIN is used to combine rows from two or more tables based on a related column between them. Types of joins include INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN.

Examples:

INNER JOIN: SELECT e.name, d.department FROM Employees e INNER JOIN Departments d ON e.dept_id = d.dept_id; – Returns only matching rows between Employees and Departments.

LEFT JOIN: SELECT e.name, d.department FROM Employees e LEFT JOIN Departments d ON e.dept_id = d.dept_id; – Returns all rows from Employees and matched rows from Departments.


6. What is a VIEW in SQL?

Answer: A VIEW is a virtual table created by a query. It helps simplify complex queries and provides a way to encapsulate query logic.

Examples:

Creating a View: CREATE VIEW HighSalary AS SELECT name, salary FROM Employees WHERE salary > 70000; – Creates a view that only shows employees with salaries above 70,000.

Using a View: SELECT * FROM HighSalary; – Retrieves data from the HighSalary view as if it were a table.


7. Explain the difference between UNION and UNION ALL.

Answer: UNION combines result sets of two queries and removes duplicates, while UNION ALL combines all records, including duplicates.

Examples:

Using UNION: SELECT name FROM Customers UNION SELECT name FROM Clients; – Combines unique names from both tables.

Using UNION ALL: SELECT name FROM Customers UNION ALL SELECT name FROM Clients; – Combines all names, including duplicates.


8. What is an Index in SQL?

Answer: An Index speeds up data retrieval by allowing faster access to rows. However, it can slow down data modification operations like INSERT, UPDATE, and DELETE.

Examples:

Creating an Index: CREATE INDEX idx_name ON Employees(name); – Indexes the name column in Employees.

Dropping an Index: DROP INDEX idx_name; – Removes the idx_name index, potentially slowing queries on name.


9. Explain GROUP BY with an example.

Answer: GROUP BY groups rows with the same value in specified columns, often used with aggregate functions to provide summarized data.

Examples:

SELECT department, COUNT(*) FROM Employees GROUP BY department; – Counts employees in each department.

SELECT age, AVG(salary) FROM Employees GROUP BY age; – Calculates average salary by age group.


10. What are Aggregate Functions in SQL?

Answer: Aggregate functions perform calculations on multiple rows and return a single value. Common functions include SUM, AVG, MIN, MAX, and COUNT.

Examples:

SELECT AVG(salary) FROM Employees; – Returns the average salary of all employees.

SELECT department, SUM(salary) FROM Employees GROUP BY department; – Sums salaries for each department.


11. What is a Stored Procedure?

Answer: A Stored Procedure is a collection of SQL statements stored in the database, allowing complex operations to be executed in a single call.

Examples:

Creating a Procedure: CREATE PROCEDURE GetEmployeeDetails() BEGIN SELECT * FROM Employees; END;

Calling a Procedure: CALL GetEmployeeDetails(); – Executes the stored procedure.


12. Explain Trigger in SQL.

Answer: A Trigger is a SQL script that automatically runs in response to specific events on a table, such as INSERT, UPDATE, or DELETE.

Examples:

Trigger on Update: CREATE TRIGGER UpdateTime AFTER UPDATE ON Orders FOR EACH ROW SET NEW.updated_at = NOW();

Trigger on Delete: CREATE TRIGGER DeleteCheck BEFORE DELETE ON Products FOR EACH ROW IF OLD.quantity < 1 THEN RAISE ERROR 'Cannot delete';


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


15. What is the difference between DELETE and TRUNCATE?

Answer: DELETE removes rows one by one and can have a WHERE clause, whereas TRUNCATE removes all rows from a table instantly and does not allow filtering.

Examples:

Using DELETE: DELETE FROM Employees WHERE age > 60; – Removes employees older than 60.

Using TRUNCATE: TRUNCATE TABLE Employees; – Quickly removes all rows from Employees.


16. What is the DISTINCT keyword in SQL?

Answer: The DISTINCT keyword is used to remove duplicate values from the result set of a query.

Examples:

SELECT DISTINCT department FROM Employees; – Returns a list of unique departments from the Employees table.

SELECT DISTINCT city FROM Customers; – Retrieves unique city names from the Customers table.


17. What is the difference between CHAR and VARCHAR data types?

Answer: CHAR is a fixed-length string data type, while VARCHAR is a variable-length string. CHAR is often more memory-efficient for fields with consistent length, while VARCHAR is more flexible.

Examples:

Using CHAR: CREATE TABLE Users (ID INT, Gender CHAR(1)); – Here, Gender always stores exactly one character.

Using VARCHAR: CREATE TABLE Users (ID INT, Name VARCHAR(50)); – Name can store up to 50 characters, using only the needed space.


18. Explain CASE statement in SQL.

Answer: The CASE statement allows for conditional logic within SQL queries, similar to IF-ELSE statements in programming.

Examples:

SELECT name, salary, CASE WHEN salary > 50000 THEN 'High' ELSE 'Low' END AS SalaryRange FROM Employees; – Categorizes salary as 'High' or 'Low'.

SELECT name, department, CASE department WHEN 'HR' THEN 'Human Resources' WHEN 'IT' THEN 'Information Technology' END AS FullDepartment FROM Employees; – Translates department codes to full names.


19. How do you update data in SQL?

Answer: The UPDATE statement is used to modify existing data in a table. It can update one or multiple records based on a WHERE condition.

Examples:

UPDATE Employees SET salary = salary * 1.1 WHERE department = 'Sales'; – Increases salaries by 10% for the Sales department.

UPDATE Customers SET status = 'Inactive' WHERE last_purchase_date < '2023-01-01'; – Marks customers inactive based on last purchase date.


20. How do you delete records in SQL?

Answer: The DELETE statement removes specific rows from a table, controlled by a WHERE condition.

Examples:

DELETE FROM Employees WHERE age > 65; – Deletes employees older than 65.

DELETE FROM Orders WHERE order_date < '2023-01-01'; – Removes orders placed before a specific date.


21. What is a SELF JOIN?

Answer: A SELF JOIN joins a table with itself to create a relationship between rows within the same table. This is useful for comparisons within the same table.

Examples:

SELECT e1.name, e2.name AS Manager FROM Employees e1 JOIN Employees e2 ON e1.manager_id = e2.id; – Finds each employee’s manager.

SELECT a.id, a.price, b.id AS Competing_Product, b.price AS Competing_Price FROM Products a JOIN Products b ON a.category_id = b.category_id AND a.id != b.id; – Compares products in the same category.


22. What is COALESCE in SQL?

Answer: COALESCE returns the first non-null value from a list of arguments, often used to handle NULL values.

Examples:

SELECT name, COALESCE(phone, 'N/A') FROM Customers; – Replaces NULL phone numbers with 'N/A'.

SELECT order_id, COALESCE(delivery_date, 'Pending') FROM Orders; – Replaces NULL delivery dates with 'Pending'.


23. Explain the use of the RANK() function.

Answer: RANK() assigns a unique rank to each row within a partition based on a specified column, with gaps in ranking for ties.

Examples:

SELECT name, department, salary, RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS Rank FROM Employees; – Ranks employees by salary within each department.

SELECT student_id, score, RANK() OVER (ORDER BY score DESC) AS Rank FROM TestScores; – Ranks students by score, with gaps for ties.


24. How does DENSE_RANK() differ from RANK()?

Answer: DENSE_RANK() assigns ranks without gaps for tied values, unlike RANK(), which has gaps.

Examples:

SELECT name, department, salary, DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS DenseRank FROM Employees; – Dense ranks employees by salary within each department.

SELECT player_id, points, DENSE_RANK() OVER (ORDER BY points DESC) AS Rank FROM Players; – Ranks players by points, without gaps.


25. What is the purpose of the ROW_NUMBER() function?

Answer: ROW_NUMBER() assigns a unique sequential number to rows within a partition, based on the specified order.

Examples:

SELECT name, department, ROW_NUMBER() OVER (PARTITION BY department ORDER BY hire_date) AS RowNum FROM Employees; – Numbers employees by hire date within each department.

SELECT product_id, price, ROW_NUMBER() OVER (ORDER BY price DESC) AS RowNum FROM Products; – Numbers products by descending price.


26. How can you retrieve the current date in SQL?

Answer: Functions like CURRENT_DATE, GETDATE(), or SYSDATE are used to retrieve the current date, depending on the SQL dialect.

Examples:

SELECT CURRENT_DATE; – Returns the current date in some SQL systems like PostgreSQL.

SELECT GETDATE(); – Returns the current date and time in SQL Server.


27. How does the EXISTS clause work?

Answer: EXISTS checks for the existence of rows in a subquery. It returns TRUE if at least one row matches and is often used in conditional logic.

Examples:

SELECT name FROM Employees WHERE EXISTS (SELECT 1 FROM Managers WHERE Employees.id = Managers.employee_id); – Finds employees who are managers.

SELECT order_id FROM Orders WHERE EXISTS (SELECT * FROM Deliveries WHERE Orders.order_id = Deliveries.order_id); – Retrieves orders that have deliveries.


28. Explain ANY and ALL operators.

Answer: ANY returns TRUE if any comparison in the list is TRUE, while ALL requires all comparisons to be TRUE.

Examples:

SELECT * FROM Products WHERE price > ANY (SELECT price FROM Competitors); – Finds products priced higher than any competitor’s.

SELECT * FROM Products WHERE price > ALL (SELECT price FROM Competitors); – Finds products priced higher than all competitors.


29. What are CTEs (Common Table Expressions)?

Answer: A CTE, defined with WITH, is a temporary result set that can be referenced within a query. CTEs are often used for recursive queries.

Examples:

WITH Sales_CTE AS (SELECT * FROM Sales WHERE amount > 1000) SELECT * FROM Sales_CTE; – Filters sales above 1000.

WITH EmployeeHierarchy AS (SELECT id, name FROM Employees WHERE manager_id IS NULL UNION ALL SELECT e.id, e.name FROM Employees e JOIN EmployeeHierarchy eh ON e.manager_id = eh.id) SELECT * FROM EmployeeHierarchy; – Creates a recursive employee hierarchy.


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


Great! Let’s keep going with the next set of SQL interview questions, explanations, and examples.


31. What is a VIEW in SQL?

Answer: A VIEW is a virtual table based on the result set of a query. It does not store data itself but provides a way to simplify complex queries.

Examples:

CREATE VIEW HighSalaryEmployees AS SELECT name, salary FROM Employees WHERE salary > 50000; – Creates a view showing employees with a salary above 50,000.

SELECT * FROM HighSalaryEmployees; – Retrieves data from the view as if it were a table.


32. What are Indexes in SQL, and why are they used?

Answer: Indexes are special data structures that improve the speed of data retrieval operations on a table. They work similarly to a book index, allowing faster data access but may slow down INSERT, UPDATE, and DELETE operations.

Examples:

CREATE INDEX idx_name ON Employees(name); – Creates an index on the name column of the Employees table to speed up name-based searches.

CREATE INDEX idx_salary ON Employees(salary DESC); – Creates an index on salary in descending order to optimize queries that search by highest salaries.


33. What is the purpose of the HAVING clause?

Answer: HAVING is used to filter groups in SQL, typically in combination with GROUP BY. It allows conditions on aggregated data, which the WHERE clause cannot handle.

Examples:

SELECT department, COUNT(*) FROM Employees GROUP BY department HAVING COUNT(*) > 5; – Lists departments with more than five employees.

SELECT manager_id, AVG(salary) FROM Employees GROUP BY manager_id HAVING AVG(salary) > 50000; – Finds managers whose teams have an average salary above 50,000.


34. Explain the difference between UNION and UNION ALL.

Answer: UNION combines the result sets of two queries and removes duplicates, while UNION ALL includes duplicates.

Examples:

SELECT name FROM Employees WHERE department = 'HR' UNION SELECT name FROM Employees WHERE department = 'Sales'; – Combines names from HR and Sales departments, removing duplicates.

SELECT name FROM Employees WHERE department = 'HR' UNION ALL SELECT name FROM Employees WHERE department = 'Sales'; – Combines names from both departments, including duplicates.


35. What is a Primary Key?

Answer: A Primary Key is a unique identifier for records in a table. It must contain unique values and cannot be NULL.

Examples:

CREATE TABLE Employees (id INT PRIMARY KEY, name VARCHAR(50)); – Defines id as the primary key in the Employees table.

ALTER TABLE Orders ADD PRIMARY KEY (order_id); – Adds a primary key to the order_id column of the Orders table.


36. What is a Foreign Key?

Answer: A Foreign Key is a field in a table that uniquely identifies a row in another table. It creates a relationship between two tables and ensures referential integrity.

Examples:

CREATE TABLE Orders (order_id INT PRIMARY KEY, customer_id INT, FOREIGN KEY (customer_id) REFERENCES Customers(id)); – Links customer_id in Orders to id in Customers.

ALTER TABLE Employees ADD FOREIGN KEY (department_id) REFERENCES Departments(id); – Adds a foreign key to link department_id in Employees to id in Departments.


37. Explain the LEFT JOIN and RIGHT JOIN.

Answer: LEFT JOIN returns all rows from the left table and matching rows from the right table. RIGHT JOIN does the reverse, returning all rows from the right table with matching rows from the left.

Examples:

SELECT Customers.name, Orders.order_id FROM Customers LEFT JOIN Orders ON Customers.id = Orders.customer_id; – Returns all customers, with order information if available.

SELECT Orders.order_id, Customers.name FROM Orders RIGHT JOIN Customers ON Orders.customer_id = Customers.id; – Returns all orders, with customer information if available.


38. What are Subqueries in SQL?

Answer: A subquery is a query within another query, used to retrieve data that will be used by the main query.

Examples:

SELECT name FROM Employees WHERE salary > (SELECT AVG(salary) FROM Employees); – Finds employees with above-average salaries.

SELECT product_id FROM Products WHERE price = (SELECT MAX(price) FROM Products); – Finds the product with the highest price.


39. What is the IN clause?

Answer: The IN clause checks if a value is within a specified list or subquery result set.

Examples:

SELECT * FROM Employees WHERE department IN ('HR', 'Sales'); – Finds employees in either HR or Sales.

SELECT * FROM Products WHERE category_id IN (SELECT id FROM Categories WHERE name = 'Electronics'); – Retrieves products in the 'Electronics' category.


40. How does BETWEEN work in SQL?

Answer: BETWEEN checks if a value is within a specified range, inclusive of the boundary values.

Examples:

SELECT * FROM Orders WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31'; – Retrieves orders from the year 2023.

SELECT * FROM Employees WHERE salary BETWEEN 40000 AND 60000; – Finds employees with a salary between 40,000 and 60,000.


41. What is GROUP BY used for?

Answer: GROUP BY groups rows with the same values in specified columns, often used with aggregate functions.

Examples:

SELECT department, COUNT(*) FROM Employees GROUP BY department; – Counts employees in each department.

SELECT city, AVG(salary) FROM Employees GROUP BY city; – Calculates the average salary per city.


42. Explain the ORDER BY clause.

Answer: ORDER BY sorts the result set in ascending (ASC) or descending (DESC) order based on specified columns.

Examples:

SELECT * FROM Employees ORDER BY salary DESC; – Sorts employees by salary in descending order.

SELECT * FROM Customers ORDER BY last_name ASC, first_name ASC; – Sorts customers by last and first names.


43. What is NULLIF in SQL?

Answer: NULLIF compares two expressions and returns NULL if they are equal; otherwise, it returns the first expression.

Examples:

SELECT NULLIF(10, 10); – Returns NULL because both values are equal.

SELECT NULLIF(salary, 0) FROM Employees; – Returns NULL for employees with a salary of 0.


44. How does the TRUNCATE command differ from DELETE?

Answer: TRUNCATE removes all rows from a table quickly without logging individual row deletions, while DELETE can remove specific rows and logs each deletion.

Examples:

TRUNCATE TABLE Employees; – Removes all rows in Employees without logging individual deletions.

DELETE FROM Employees WHERE department = 'HR'; – Deletes only employees in the HR department.


45. What is a Composite Key?

Answer: A composite key is a primary key made up of two or more columns, ensuring unique identification based on a combination of values.

Examples:

CREATE TABLE Enrollments (student_id INT, course_id INT, PRIMARY KEY (student_id, course_id)); – Uses a composite key to prevent duplicate enrollments.

CREATE TABLE Sales (year INT, product_id INT, PRIMARY KEY (year, product_id)); – Ensures unique sales records by year and product.


46. Explain the ISNULL function in SQL.

Answer: ISNULL replaces NULL values with a specified value, useful for handling missing data.

Examples:

SELECT name, ISNULL(phone, 'N/A') AS phone FROM Employees; – Replaces NULL phone values with 'N/A'.

SELECT order_id, ISNULL(delivery_date, 'Pending') FROM Orders; – Replaces NULL delivery dates with 'Pending'.


47. What is a Clustered Index?

Answer: A clustered index sorts and stores the table data rows in order based on the indexed column, as opposed to a non-clustered index, which maintains a separate index.

Examples:

CREATE CLUSTERED INDEX idx_id ON Employees(id); – Creates a clustered index on id, ordering the table by id.

CREATE CLUSTERED INDEX idx_price ON Products(price); – Orders Products by price


48. What is a Self Join?

Answer: A Self Join is a join operation where a table is joined with itself, typically used to compare rows within the same table.

Examples:

SELECT a.name AS Employee, b.name AS Manager FROM Employees a JOIN Employees b ON a.manager_id = b.id; – This query lists each employee along with their manager.

SELECT a.product_id, a.name, b.name AS RelatedProduct FROM Products a JOIN Products b ON a.category_id = b.category_id AND a.product_id != b.product_id; – Lists related products within the same category, excluding the product itself.


49. Explain the use of the COALESCE function.

Answer: COALESCE returns the first non-NULL value in a list of expressions, making it useful for handling NULL values across multiple columns.

Examples:

SELECT COALESCE(phone, mobile, 'No Contact') AS ContactInfo FROM Employees; – Returns the first available contact number, or 'No Contact' if all are NULL.

SELECT name, COALESCE(salary, 30000) AS salary FROM Employees; – Sets a default salary of 30,000 for employees with NULL salaries.


50. What is the difference between DELETE and DROP?

Answer: DELETE removes rows from a table based on conditions but keeps the table structure, while DROP removes the entire table or database structure.

Examples:

DELETE FROM Employees WHERE department = 'Sales'; – Deletes only rows of employees in the Sales department.

DROP TABLE Employees; – Completely removes the Employees table along with all its data.


---

SQL Development-Specific Questions

---

1. How do you optimize a query in SQL?

Answer: Query optimization techniques include using indexes, avoiding SELECT *, minimizing joins on large tables, and limiting the number of rows processed.

Examples:

Using indexes: CREATE INDEX idx_department ON Employees(department); – Speeds up searches on department.

Avoiding SELECT *: SELECT name, salary FROM Employees; – Retrieves only needed columns, reducing load.


2. What are stored procedures, and why are they used?

Answer: A stored procedure is a precompiled set of SQL statements stored in the database, used to encapsulate complex logic and improve performance by reusing the compiled code.

Examples:

CREATE PROCEDURE GetEmployeeInfo AS SELECT * FROM Employees; – A simple procedure to retrieve all employees.

CREATE PROCEDURE UpdateSalary (@id INT, @newSalary DECIMAL) AS BEGIN UPDATE Employees SET salary = @newSalary WHERE id = @id; END; – A procedure to update an employee’s salary based on ID.


3. What are Triggers in SQL?

Answer: A trigger is a stored procedure that automatically runs in response to specific events on a table, such as INSERT, UPDATE, or DELETE.

Examples:

CREATE TRIGGER trgAfterInsert ON Employees AFTER INSERT AS BEGIN PRINT 'A new employee was added.'; END; – Prints a message after an employee is added.

CREATE TRIGGER trgBeforeDelete ON Orders BEFORE DELETE AS BEGIN PRINT 'Order deletion initiated.'; END; – Runs before an order deletion.


4. How do you handle transactions in SQL?

Answer: Transactions are managed with BEGIN, COMMIT, and ROLLBACK statements to ensure data consistency. Transactions are either fully completed or rolled back to a previous state.

Examples:

BEGIN TRANSACTION; UPDATE Accounts SET balance = balance - 500 WHERE id = 1; COMMIT; – Deducts 500 from account 1, committing the change.

BEGIN TRANSACTION; UPDATE Accounts SET balance = balance - 500 WHERE id = 1; ROLLBACK; – Rolls back the update, undoing the deduction.


