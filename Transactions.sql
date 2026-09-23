USE augbatch2;

select * from actor;
ALTER TABLE actor ADD column movies varchar(30);
ALTER TABLE actor MODIFY COLUMN name varchar(30);
ALTER TABLE actor CHANGE COLUMN name actorName varchar(40);
ALTER TABLE actor RENAME COLUMN age TO actorAge;

alter table actor drop column movies;
alter table actor rename to actors;

select @@autocommit;
set autocommit=1;

use augbatch2;

select * from products;
update products set price=price+0.5 where id=1;
update products set price=price+5 where id=2;
commit;
rollback;

CREATE TABLE bakkacc (
accNum char(6) primary key,
name varchar(45) not null,
balance double default 0
);


INSERT INTO bakkacc (accNum, name, balance) VALUES ('A00001', 'John Doe', 1000),
('A00002', 'Jane Smith', 1500),
('A00003', 'Alice Johnson', 2000),
('A00004', 'Bob Brown', 2500),
('A00005', 'Charlie Davis', 3000);