# My-SQL-Notes

Basic Commands for DDL, DML, DQL, DCL and TCL with example:
Commands we used:
1. to veiw the databses, tables

2. to acess the databases

3. DDL:
- CREATE (tables, columns in it)
- DROP (database)
- RENAME (table)
- ALTER TABLE (adding columns)
- TRUNCATE (deleting all the values from the tables but the structure remain)

Notes: 1. To do manipulation we need to turn off the safety mode(set SQL_SAFE_UPDATES = 0;)
            2. We have to use "WHERE" clause for manipulation

4. DML:
- INSERT (rows in the table)
- DELETE (deleting all the values from the tables even the sturcture)
- UPDATE (Changing the values in the table)

5. DQL:
- SELECT (use to display the table contents & To do query in the table)

6. DCL:
- GRANT (To givening the permission we use "GRANT" code)
- REVOKE (To revoke the permission we use the "REVOKE" code)

7. TCL:
- To commits a transaction we use 'COMMIT" code
- To rollbacks any transaction for any error occurs we use "ROLLBACK" code
- To save a point within a transaction we use "SAVEPOINT" code
- To specify the characteristics for the transaction we use "SET TRANSACTION" code

8. Operators (AND, OR, NOT, IN, BETWEEN)
