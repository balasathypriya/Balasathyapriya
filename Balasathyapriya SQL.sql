# NULL CONSTRAINT 
create database bala;
use bala;
create table dream_tec (employee_id int auto_increment primary key, employee_name varchar(20) not null, salary int not null);
desc dream_tec;
insert into dream_tec (employee_name,salary) values('easwaran',25000),('kaviarasu',50000),('umash',45000),('mani',25000);
select*from dream_tec;

# CREATING A VIEW
create database departmental_stores;
use departmental_stores;
create table sales (Column_id int auto_increment primary key,Product_name varchar(20),Price_per_unit int,Quantity int);
insert into sales (Product_name,Price_per_unit,Quantity) values ('Chocolates',40,100),('Cookies',50,250),('Cake',55,150),('Macroons',20,200),('Jelly',5,250);
select* from sales;
select*, Price_per_unit*Quantity as Total_cost from sales;
create view my_view as select Price_per_unit*Quantity as Total_cost, Product_name from sales;
select * from my_view;


# SUM OF AGES
create database firebird;
use firebird;
create table information ( id int auto_increment primary key,name varchar(20),age int);
insert into information (name,age) values( 'Bob',21),('Sam',19),('Jill',18),('Jim',21),('Sally',19),('Jess',20),('Will',21);
select* from information;
select sum(age) from information;


# GROUP BY AGES
use firebird;
create table information ( id int auto_increment primary key,name varchar(20),age int);
insert into information (name,age) values( 'Bob',21),('Sam',19),('Jill',18),('Jim',21),('Sally',19),('Jess',20),('Will',21);
select* from information;
select age,count(age) from information group by age;


# POSITIVE REVENUE 2021
create database annual_revenue;
use annual_revenue;
create table report(Division_id int,Year int, Revenue int);
insert into report values(1,2018,60),(1,2021,40),(1,2020,70),(2,2021,-10),(3,2018,20),(3,2016,40),(4,2021,50);
select * from report;
select Division_id from report where revenue > 0 and year = 2021;




