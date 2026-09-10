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