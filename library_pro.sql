 
create database library;
show databases;

use library;


# create table branch

create table branch(
  Branch_no int primary key not null,
Manager_Id int not null,
Branch_address varchar(200),
Contact_no varchar(20) unique);

desc branch;


# create table employee
create table employeee(
Emp_Id int primary key not null,
Emp_name varchar(45),
Position varchar(45),
 salary decimal(10,2),
Branch_no int,
foreign key(branch_no) references branch(branch_no));

desc employeee;



#create table books

create table book(
  ISBN varchar(45) primary key,
Book_title varchar(45),
Category varchar(45),
Rental_Price decimal(10,2),
Status enum('yes','no'),
Author varchar(45),
Publisher varchar(45));

desc book;


#create table customer

create table customer(
 Customer_Id int primary key,
Customer_name varchar(45),
Customer_address varchar(200),
Reg_date date
);



#create table issuestatus

create table issuestatus(
Issue_Id int primary key,
Issued_cust int, 
Issued_book_name varchar(45),
Issue_date date,
Isbn_book varchar(45),
foreign key (issued_cust) references customer(customer_id),
FOREIGN KEY (isbn_book)references book(isbn));

desc issuestatus;


#create table returnstatus

create table returnStatus(
Return_Id int primary key,
Return_cust VARCHAR(20),
Return_book_name varchar(45),
Return_date date,
Isbn_book2 varchar(50),
FOREIGN KEY (Isbn_book2) REFERENCES Book(isbn)
);

desc returnStatus;


# insert values into table branch

insert into branch values(1,100,'mumbai',99999900),
(2,101,'kolkata',99886600),
(3,102,'kochi',99887766),
(4,103,'chennai',99778900),
(5,104,'banglore',88779900),
(6,105,'kochi',00995567),
(7,106,'chennai',77889900),
(8,107,'trivandrum',00994422),
(9,108,'calicut',99662200),
(10,109,'trivandrum',88224400);

select * from branch;



# insert values into table employeee

insert into employeee values(500,'fera','librarian',10000.00,8),
(504,'ahana','cordinator',12000.00,5),
(506,'mosh','cataloger',20000.00,1),
(530,'max','library assistant',25000.00,2),
(534,'ram','cordinator',12000.00,6),
(520,'vismaya','library assistant',25000.00,4),
(510,'sanam','librarian',10000.00,3),
(518,'anas','cataloger',20000.00,9),
(522,'minha','cordinator',12000.00,5),
(501,'muneer','cataloger',20000.00,7),
(538,'feryal','librarian',10000.00,8),
(560,'samson','library assistant',25000.00,6),
(565,'john','cordinator',12000.00,1);

select * from employeee;




# insert values into table book

insert into book values('ISBN13:978-04411','KAYAR','MALAYALAM NOVEL',500,'YES','THAKAZHI','DC BOOKS'),
('ISBN13:978-006231','DRIVE','BUSINESS',300,'NO','DANIEL H.PINK','RIVERHEAD BOOKS'),
('ISBN13:978-04415','NEUROMANCER','SCIENCE FICTION',500,'NO','WILLIAM GIBSON','ACE BOOKS'),
('ISBN13:978-04156','BOSSYPANTS','BIOGRAPHY',4500,'NO','TINA FEY','BACK BAY BOOKS'),
('ISBN13:978-81264','OZHICHUVIDUKA','FICTION',450,'NO','SARAH JOSEPH','DC BOOKS'),
('ISBN13:978-8165','NALLAVANNAM','FICTION',200,'NO','C.RADHAKRISHNAN','DC BOOKS'),
('ISBN13:978-81713','AANAKKALLOPILLI','FICTION',350,'YES','O.V.VIJAYAN','DC BOOKS'),
('ISBN13:978-00623','SAPIENS','HISTORY',700,'NO','YUVAL NOAH HARARI','HARPER PERENNIAL'),
('ISBN13:978-03075','GONE GIRL','MYSTERY/THRILLER',250,'YES','GILLIAN FLYNN','BROADWAY BOOKS'),
('ISBN13:978-17130','HALF GIRLFRIEND','NOVEL',550,'NO','CHETAN BAGATH','DC BOOKS'),
('ISBN13:978006','THE ALCHEMIST','FICTION',800,'NO','PAULO COELHO','HARPERONE'),
('ISBN13:978030','THE DAVINCI CODE','MYSTERY/THRILLER',900,'YES','DAN BROWN','ANCHOR'),
('ISBN13:978059','HARRY POTTER','FANTASY',800,'NO','J.K.ROWLING','SCHOLASTIC INC'),
('ISBN13:978349','VEENAPOOV','POEM',600,'NO','KUMAARANAASAN','DC BOOKS'),
('ISBN13:978547','THATHVAMASI','FICTION',800,'YES','SUKUMAR AZHEEKODE','DC BOOKS'),
('ISBN13:978145','STEVE JOBS','BIOGRAPHY',650,'YES','WALTER ISAACSON','SIMON & SCHUSTER'),
('ISBN13:978152','BECOMING','BIOGRAPHY',800,'YES','MICHELLE OBAMA','CROWN PUBLISHING'),
('ISBN13:978055','A GAME OF THRONES','FANTASY',900,'YES','GEORGE R.R. MARTIN','BANTAM'),
('ISBN:7803','THE HISTORY OF LOVE','HISTORY',400,'NO','NICOLE KRAUSS','W.W.NORTON&COMPANY'),
('ISBN:781400','MY EXPERIMENT OF LIFE','AUTOBIOGRAPHY',600,'YES','GANDIJI','NAVJIVAN'),
('ISBN:87055','A BRIEF HISTORY','HISTORY',900,'YES','STEPHEN HAWKING','BANTAM');

select * from Book;


# INSERT VALUES INTO TABLE CUSTOMER
 insert into customer values(1200,'AFLA','Kerala','2021-05-11'),
(1201,'ROHIT','Karnataka','2021-10-22'),(1202,'AISWARYA','Mumbai','2021-11-10'),
(1203,'MRDULA','kolkata','2021-12-22'),(1204,'PRANAV','Kerala','2022-06-23'),
(1205,'PRAVEEN','Delhi','2022-08-10'),(1206,'Rajesh','Chennai','2022-10-27'),
(1207,'CHINNU','HYDRABAD','2022-12-23'),(1208,'aysha','Chennai','2023-01-11'),
(1209,'mammy','Delhi','2023-02-10'),(1210,'dua','Kerala','2023-05-30'),
(1211,'amir','Kolkata','2023-07-15'),(1212,'alia','kolkata','2023-09-23'),
(1213,'saksha','Kerala','2023-12-30'),(1214,'aria','Chennai','2024-01-08'),
(1215,'Jwel','Mumbai','2024-02-10'),(1216,'fera','Delhi','2024-02-20');

desc issuestatus;



# insert values in to table issue status

insert into issuestatus(issue_id,issued_cust,issue_date,isbn_book) values(001,1200,'2021-11-15','ISBN13:978-04411'),
(002,1202,'2022-07-13','ISBN13:978-006231'),(003,1210,'2022-11-01','ISBN13:978-04415'),
(004,1211,'2021-12-30','ISBN13:978-04156'),(005,1209,'2023-02-15','ISBN13:978-81264'),
(006,1209,'2023-01-05','ISBN13:978-8165'),(007,1205,'2024-02-15','ISBN13:978-81713'),
(008,1203,'2021-11-15','ISBN13:978-00623'),(009,1204,'2024-02-21','ISBN13:978-00623'),
(010,1211,'2023-01-02','ISBN13:978-04411'),(011,1206,'2023-01-30','ISBN13:978-03075'),
(012,1208,'2024-02-11','ISBN13:978-17130'),(013,1210,'2022-11-01','ISBN13:978-17130'),
(014,1207,'2024-02-21','ISBN13:978-04415'),(015,1205,'2023-10-15','ISBN13:978-04411'),
(016,1206,'2024-02-10','ISBN13:978-8165'),(017,1207,'2022-09-10','ISBN13:978-03075'),
(018,1206,'2023-06-06','ISBN13:978-04411'),(019,1205,'2023-06-10','ISBN13:978055'),
(020,1200,'2023-06-22','ISBN13:978547');

select * from issuestatus;


#insert values into table returnstatus

insert into ReturnStatus values(200,'afla','KAYAR','2022-02-28','ISBN13:978-04411'),
(201,'mrdula','THE ALCHEMIST','2022-12-30','ISBN13:978-006231'),(203,'RAJESH','HALF GIRLFRIEND','2023-04-03','ISBN13:978-04415'),
(204,'praveen','THE DAVINCI CODE','2024-01-20','ISBN13:978-04156'),(205,'aysha','NEUROMANCER','2023-12-25','ISBN13:978-81264'),
(206,'amir','NALLAVANNAM','2023-06-30','ISBN13:978-8165'),(207,'saksha','AANAKKALLOPILLI','2024-02-22','ISBN13:978-81713'),
(208,'RAJESH','GONE GIRL','2022-11-08','ISBN13:978-00623'),(209,'pranav','KAYAR','2024-02-21','ISBN13:978-00623'),
(210,'alia','HALF GIRLFRIEND','2023-12-01','ISBN13:978-04411'),(211,'aria','GONE GIRL','2023-02-05','ISBN13:978-03075'),
(212,'AISWARYA','A BRIEF HISTORY','2024-02-21','ISBN13:978-17130'),(213,'chinnu','KAYAR','2023-03-07','ISBN13:978-17130'),
(214,'dua','NEUROMANCER','2024-02-22','ISBN13:978-04415'),(215,'mammy','HARRY POTTER','2024-02-10','ISBN13:978-04411'),
(216,'fera','BECOMING','2024-02-22','ISBN13:978-8165'),(217,'jwel','GONE GIRL','2022-12-31','ISBN13:978-03075'),
(218,'fera','BOSSYPANTS','2023-10-22','ISBN13:978-04411');

select * from ReturnStatus;


#queri-1
#examine what the population of database has.how many rows are present in each table

select 'BRANCH' as 'table',count(*) as 'num_rows' from BRANCH
 union
 select 'employeee' as 'table',count(*)as 'num_rows' from employeee
 union
 select 'customer' as 'table',count(*) as 'num_rows' from customer
 union
 select 'issuestatus' as 'table',count(*) as 'num_rows' from issuestatus
 union
 select 'returnstatus' as 'table',count(*) as 'num_rows' from returnstatus
 union
 select 'book' as 'table',count(*) as 'num_rows' from book;
 
 
 
 
 #queri-2
 # examine details of books and catogory which involves in library
 select distinct book_title as book_title,category from book;
 
 
 #queri-3
 # Retrieve the book title, category, and rental price of all available books.
 select book_title,category,rental_price from book where status='yes';
 
 
 #queri-4
#List the employee names and their respective salaries in descending order of salary.
select emp_name,salary from employeee order by salary desc;

 
#queri-5
#Retrieve the book titles and the corresponding customers who have issued those books.

select i.issued_cust,b.book_title,c.customer_name
from issuestatus i left join book b 
on i.isbn_book = b.isbn 
left join customer c on c.customer_id = i.issued_cust;




#queri-6
# Display the total count of books in each category.

select category,count(*)as total_count_of_books from book
group by category;


#queri-7
# Retrieve the employee names and their positions for the employees whose salaries are above Rs.20,000
select emp_name,position,salary from employeee where salary > 20000;


create or replace view empsalary
as select emp_name,position,salary from employeee
where salary > 20000;
select * from empsalary;




#queri-8
#List the customer names who registered before 2022-01-01 and have not issued any books yet.

select c.customer_id,c.customer_name,c.reg_date,i.issue_id
from customer c left join issuestatus i
on c.customer_id=i.issued_cust
where c.reg_date < '2022-01-01' and i.issue_id is null;


select customer_name,reg_date from customer where reg_date < '2022-01-01';


delimiter $
create procedure get_customer(get_date date)
begin
	select customer_name,reg_date from customer where reg_date < get_date;
end $
delimiter ;
call get_cust('2022-01-01');



#queri-9
#. Display the branch numbers and the total count of employees in each branch.

select branch_no,count(branch_no)as total_count_employs from employeee
group by Branch_no;

select b.branch_no,b.branch_address,count(e.branch_no) as 'count of employees'
from branch b left join employeee e 
on b.branch_no=e.branch_no
group by b.branch_no,b.branch_address;




#queri-10
# Display the names of customers who have issued books in the month of June 2023.

select c.customer_name,i.issue_date
from customer c join issuestatus i
on c.customer_id= i.issued_cust
where extract(year from issue_date)=2023
and extract(month from issue_date)=6; 




#queri-11
# Retrieve book_title from book table containing history.
select book_title,category from book where category='history';

SELECT book_title
FROM book
WHERE book_title LIKE '%history%';





#queri-12
#Retrieve the branch numbers along with the count of employees for branches having more than 5 employees
SELECT Branch_no, COUNT(*) AS Total_count_emp
FROM Employeee
GROUP BY Branch_no
HAVING total_count_emp > 5;


create view count_emp_5 as
select b.branch_no,b.branch_address,e.emp_name
from branch b join employeee e
on b.branch_no=e.branch_no;
select * from count_emp_5; 

select branch_no,branch_address,count(emp_name) as count_emp
from count_emp_5
group by branch_no 
having count(emp_name)>5;



#queri-13
# which publisher published  highest number of books

select publisher,count(*) as total_books
 from book 
 group by publisher
 order by total_books desc
 limit 5;
 
 
 #queri-14
 #find average rental price in each books in each category
 
 select category,avg(rental_price) as avg_rental_price from book
 group by category;
 
 
 #queri-14
 #Find the total number of customers from customer table.

delimiter $
create procedure count_cust(out cust int)
begin
	select count(customer_name) into cust from customer;
end $
delimiter ;

call count_cust(@result);
select @result;



#queri-15
#Identify the branches where the average salary of employees is below Rs. 15000
select branch_no,round(avg(salary),2) as avg_salary from employeee 
group by branch_no 
having avg_salary<15000;



#queri-16 
 #find out total revenue generated from book rentals
 
 SELECT SUM(b.Rental_Price) AS Total_Revenue
FROM Book b
JOIN IssueStatus i 
ON b.ISBN = i.Isbn_book;



#queri-17
#List the customers who have not returned any books yet:

SELECT DISTINCT c.Customer_name
FROM Customer c
LEFT JOIN IssueStatus i 
ON c.Customer_Id = i.Issued_cust
WHERE i.Issue_Id IS NULL;



#queri-18 
#create a before delete trigger if we try to delete employee details whose salary is >20000 in the employee table.
delimiter $
create trigger before_delete_trigger
before delete on employeee
for each row
begin
	if old.salary > 20000 then
    signal sqlstate "45000"
    set message_text  = "can't delete the details of employee whose salary > 20000";
    end if;
end $
delimiter ;

delete from employeee where emp_id=520;  
 
 select * from employeee;
 
 
 
 
 
