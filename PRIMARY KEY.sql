create database SQL3YEO

use SQL3YEO

create table customer(
		custID int primary key,
		custName varchar(100)
		)

select *from customer


insert into customer values(1,'vshal');

🔑 PRIMARY KEY

👉 प्रत्येक row ला unique ओळख देतो
👉 NULL नसतो
👉 duplicate नसतो

🏦 Insurance Example:
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100)
);

📌 Meaning:
👉 प्रत्येक customer unique
