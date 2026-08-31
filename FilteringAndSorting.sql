use augbatch2;

select * from actor where age>50 and id<4;
select * from actor where age>50 or id<4;
select * from actor where not age>50;

select * from actor where age between 20 and 46 and id<4;

SELECT * from actor where age not in (23,23,27,66,54,53,52,68);

select * from actor where name like "% %";

select * from actor where age>50 order by name desc;

SELECT * from actor limit 2 offset 3;


