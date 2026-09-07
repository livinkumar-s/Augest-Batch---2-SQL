use augbatch2;

CREATE TABLE cricketer (
id int primary key auto_increment,
name varchar(30) NOT NULL,
mailId varchar(100) not null unique,
noOfCent int not null CHECK (noOfCent>10),
isActive boolean default 1
);

INSERT INTO cricketer (name, mailId, noOfCent, isActive) VALUES
('Sachin Tendulkar', 'sachin.tendulkar@example.com', 100, 0),
('Brian Lara', 'brian.lara@example.com', 100, 0),
('Jacques Kallis', 'jacques.kallis@example.com', 100, 0),
('Ricky Ponting', 'ricky.ponting@example.com', 100, 0),
('MS Dhoni', 'ms.dhoni@example.com', 100, 0);


INSERT INTO cricketer (name, mailId, noOfCent) VALUES
('Rohit Sharma', 'hitman@example.com', 52);

create table jersey (
id int primary key auto_increment,
jersey int not null,
playerId int,
foreign key (playerId) references cricketer(id)
);

select * from cricketer;

insert into jersey (jersey,playerId) values 
(18,6),
(7,5),(45,9);

insert into jersey (jersey,playerId) values 
(18,55);

select * from actor;
