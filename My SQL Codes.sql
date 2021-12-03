Show Databases;
Show tables;

        # DDL(Data Defination) Commands
#create a database use the "CREATE" command
create database mynotes;

#to acess the database we have to use "USE" code
use mynotes;

#create table in mynotes database
create table student_table(
	Student_ID int,
    Student_name varchar(50),
    course varchar(50)
);

#To drop/delete the database we can use the "DROP" code
drop database parcticebd;
drop database particebd;

#To rename the table we can use "RENAME" code
rename table student_table to student_detail;

#To change the data type or structure we can use "ALTER" code
alter table student_detail
add email varchar(50);

#to delete all the values from the tables we can use the "TRUNCATE" code
truncate table student_detail;

         #DML(Data Manipulation) Commands
#To Insert rows and Columns we can use the "INSERT" command
#columns
insert into student_detail (Student_ID, Student_name, course, email)
values (1, "Pavitra" , "Data Science", "pavitramandal37@gmail.com");

insert into student_detail (Student_ID, Student_name, course, email)
values (2, "Anne", "Architecture", "anne2@gmail.com");

insert into student_detail (Student_ID, Student_name, course, email)
values (3, "Rohit", "Architecture", "rooti22@gmail.com");

#Update the safe mode to 0 for changes in the tables
set SQL_SAFE_UPDATES = 0;

#Difference between delete and truncate (Delete can remove particular values using where clause, Truncate cant)
#To remove the table, rows and columns we can use "DELETE" command
delete from student_detail;
delete from student_detail where student_name = "Rohit";
delete from student_detail where student_name = "Anne";

#to change the data in rows and columns we can use the "UPDATE" command
update student_detail
set Student_name = 'Rohit', email = 'rohit7@gmail.com'
where Student_ID = 1;

		#DQL(Data Query) command
#To do query in the table we have to use the "SELECT" command
#"SELECT" is also use to display the table contents
select * from student_detail;

        #DCL(Data Control) Command
#To givening the permission we use "GRANT" code
#To revoke the permission we use the "REVOKE" code

        #TCL(Transaction Control)Command
#To commits a transaction we use 'COMMIT" code
#To rollbacks any transaction for any error occurs we use "ROLLBACK" code
#To save a point within a transaction we use "SAVEPOINT" code
#To specify the characteristics for the transaction we use "SET TRANSACTION" code

#By the use of "WHERE" clause we can perform conditional operations
select * from student_detail where Course = 'Architecture';

#Operators (AND, OR, NOT, IN, BETWEEN)
#AND: in "AND" all the condition should be TRUE to get the result
select * from student_detail where Course = 'Architecture' and Student_name = "Anne"; #Here both conditions are true so we get result
select * from student_detail where Course = 'Architecture' and Student_name = "Pavitra"; #Here one condition in false so we didn't get the result

#OR: in "OR" at least one condition should be TRUE to get the result
select * from student_detail where Course = 'Data Science' or Student_ID = "2"; #It will give the result of all the condition

#NOT: It will retrn the result without the given condition
select * from student_detail where not Student_ID = '3';

#IN: "IN" operator is use to contain multiple value in "WHERE" clause
select * from student_detail where Student_ID in (2,3); 

#BETWEEN: It helps to select values between the given range like(number, text or dates)
select * from student_detail where Student_ID between 1 and 3;


