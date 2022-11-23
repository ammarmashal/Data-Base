use sales ;
drop table sales;
create table sales(
purchase_number int  primary key auto_increment,
date_of_parchase  Date not null ,
customer_id int ,
item_code varchar(10) not null
);
alter table sales
add foreign key (customer_id) references customer(customer_id) on delete cascade ;









# Customer table 
drop table customer ;

create table customer(
customer_id int ,
first_name varchar(255),
last_name varchar(255),
email_adress varchar(255),
number_of_complaints int,
primary key(customer_id)
);
alter table customer 
add unique key (email_adress);

alter table customer 
drop index email_adress;

alter table customer
add column gender enum('M','F') after last_name;

alter table customer
change column number_of_complaints number_of_complaints int default 0;
insert into customer (first_name, last_name, gender, email_adress) 
values ('John', 'Mackinley', 'M', 'john.mckinley@365datascience.com');

alter table customer 
alter column number_of_complaints drop default ;





create table items (
item_code varchar(255),
item varchar(255),
unit_price numeric(10,2),
company_id varchar(255)
);




# company table 
drop table companies;
create table companies (
company_id int ,
company_name varchar(255),
headquarters_phone_number int(12)
);

alter table companies
change column company_id company_id int   primary key auto_increment  ,
change column company_name company_name varchar (255) not null ;

alter table companies
modify company_name varchar (255)  null ;

insert into companies (company_name, headquarters_phone_number) 
values('A','01094480920');
SELECT 
    *
FROM
    sales.companies;

