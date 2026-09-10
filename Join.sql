use augbatch2;

CREATE TABLE iplTeam (
id int primary key auto_increment,
name varchar(20) not null,
playerId int
);

SELECT * from cricketer;
SELECT * from iplteam;

SELECT c.name,i.name as iplteam from cricketer c
inner join iplteam i on 
c.id=i.playerId;

SELECT c.name,i.name as iplteam from cricketer c
left join iplteam i on 
c.id=i.playerId
UNION
SELECT c.name,i.name as iplteam from cricketer c
right join iplteam i on 
c.id=i.playerId;

INSERT INTO iplTeam (name,playerId) values
("PBKS",16);

SELECT * from cricketer c inner join iplteam i  on c.id=i.playerId
inner join jersey j on c.id=j.playerId;


select * from actor;
select * from movies;

create table movies(
id int primary key auto_increment,
name varchar(30) not null,
actorId int,
foreign key (actorId) references actor(id)
ON DELETE restrict
ON update restrict
);


SELECT * from cricketer cross join iplteam;

DROP TABLE movies;

insert into movies (name, actorId) values

('Thunivu',3),
('Jailer',7),
('Ponniyin Selvan',4),
('Vikram',1),
('Ponniyin Selvan 2',4)
;

UPDATE actor SET id=20 where id=2;
delete from actor where id=3;