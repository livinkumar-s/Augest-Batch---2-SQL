use augbatch2;

CREATE TABLE products (
id int primary key auto_increment,
name varchar(30) not null,
price float not null,
category enum("veg","fruit","gadget")
);

Insert into products (name, price, category) values
("apple", 1.5, "fruit"),
("banana", 0.5, "fruit"),
("carrot", 0.8, "veg"),
("broccoli", 1.2, "veg"),
("laptop", 800, "gadget"),
("smartphone", 600, "gadget"),
("grapes", 2.0, "fruit"),
("spinach", 1.0, "veg"),
("tablet", 300, "gadget"),
("orange", 1.8, "fruit");


select * from products;
select count(name) from products;

select sum(price) from products;
select avg(price) from products;
select MAX(price) from products;
select MIN(price) from products;

select max(price),count(*), min(price),avg(id) from products;
select name,avg(price) from products;
select avg(price) from products where id<5;

select avg(price) from products;
select avg(price) from products where price>avg(price);

select category,avg(price) from products
group by category HAVING avg(price)<50;