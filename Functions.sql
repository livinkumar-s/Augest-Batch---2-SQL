use augbatch2;

select 1 as firstNum, 2 as secNum,3 as thirdNum from actor;

select 67 as result;
select "Hello";

select name as actorName, age as actorAge from actor;

select 1+1 as result;
select 1-1 as result;
select 1*1 as result;
select 1/1 as result;


select round(21.2345) as result;
select round(21.6823872568) as result;
select floor(21.99999999) as result;
select ceil(21.000000000000000000001) as result;
select abs(23) as result;
SELECT mod(9,2) as result;
SELECT sqrt(81) as result;
SELECT POWER(2,3);


SELECT concat("Hello"," ","World",".....!") as result;
SELECT length("Hello World") as result;

SELECT upper("hello"), lower("HELLO");
SELECT substring("Hello world",7,5) as result;
SELECT replace("Hello Hello Hello world","Hello","Hi") as result;
SELECT concat(".",TRIM("          Hi Welcome      "),".") as result;
SELECT concat(".",LTRIM("          Hi Welcome      "),".") as result;
SELECT concat(".",RTRIM("          Hi Welcome      "),".") as result;
SELECT REVERSE("GHello");
SELECT REPEAT("Hi",20);

SELECT CURDATE() as result;
SELECT CURTIME() as result;
SELECT NOW() as result;
SELECT datediff("2026-09-30",CURDATE()) as result;

select upper(name) from actor;

SELECT CONCAT("He is ",name,".") as actorName from actor;
SELECT MOD(age,2) as actorName from actor;

SELECT CONCAT("His name is ",upper(name),". He is ",age,".") 
as details from actor;

SELECT * FROM actor;