# library_managmnt_system

welcome to the mysql project LIBRARY MANAGEMENT SYSTEM repository.this project is desighned to help the major operations take place in library including information about books like author,publisher,year of publish etc,
details of employees,customers and status of issue and return of books


# overview

the project library management system consist of database library and sql queries to perform various operations.it contain 6 tables

## branch :
information about library branches such as branch number,manager_id,address,contact number

## employeee
information about staff of library including employee id,name,position they are incharge,salary, and branch they are assigned

## book
details of book available inthe library including ISBN,book title,author,publisher,rental price,availability status,category

## customer
details of library users including their ID,name,address,registration date

## issuestatus
records of books issued to customers including issue ID,customer id,book name, and issue date

## returnstatus
records of books returned by customers contain return ID,customer id,book name,return date

# major queries:
1:Retrieve book title, category, and rental price of available books.
2:list employee names and salaries in descending order of salary.
3:Retrieve book titles and corresponding customers who have issued those books.
4:Display total count of books in each category.
5:Retrieve employee names and positions for employees with salaries below Rs.20000.
6:List customer names who registered before 2022-01-01 and have not issued any books yet.
7:Display branch numbers and total count of employees in each branch.
8:Display names of customers who issued books in June 2023.
9:Retrieve book titles containing "history".
10:Retrieve branch numbers along with count of employees for branches having more than 5 employees.


# additional queries
1:list the book name that have not been issued by any customer
2:examine the publisher with the highest number of books in library
3:identify the branches where the average salary of employees is above 20000
4:#create a before delete trigger if we try to delete employee details whose salary is >20000 in the employee table.

5:find total number of customer in customers table
6:find out total revenue generated from book rentals


# how to use
you can clone the repository and execute the SQL queries against your database management system and make more insight aling with this by using this project

# contribution
suggestions,contributions,feedback are always welcome! if you have any ideas or find bugs,feel freely to let me know.that make this project more better and meanigfull


# conclusion

the project library mnagement system gives an efficient way for analysing,organising,managing library resources.by using MYSQL and SQL queries,it effectively helps to handle employee tracking,status of book ie,availability of book,customer record,the taste of customers which category of books are mostly asked by customers,rental price of books..all kind information about library enviroment are easly extracted from this databases,
