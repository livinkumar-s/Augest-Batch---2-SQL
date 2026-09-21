use augbatch2;

CREATE TABLE student (
id int primary key auto_increment,
name varchar(30) not null,
mark int not null,
dept enum("EEE","ECE","CIVIL")
);


INSERT INTO student (name, mark, dept) VALUES
("John", 85, "EEE"),
("Alice", 90, "ECE"),
("Bob", 75, "CIVIL"),
("Eve", 95, "EEE"),
("Charlie", 80, "ECE"),
("David", 70, "CIVIL"),
("Frank", 88, "EEE"),
("Grace", 92, "ECE"),
("Hannah", 78, "CIVIL"),
("Ivy", 82, "EEE"),
("Jack", 89, "ECE"),
("Kathy", 76, "CIVIL"),
("Leo", 91, "EEE"),
("Mia", 87, "ECE"),
("Nina", 79, "CIVIL"),
("Oscar", 84, "EEE"),
("Paul", 93, "ECE"),
("Quinn", 81, "CIVIL"),
("Rita", 86, "EEE"),
("Sam", 88, "ECE");


select * from student;
select avg(mark) from student;
select * from student where mark>(select avg(mark) from student);


select mark from student where dept="ECE";

select * from student 
where mark > ALL (select mark from student where dept="ECE");


select * from student 
where mark> ANY (select mark from student where dept="ECE");

select * from student 
where mark in (select mark from student where dept="ECE");

select * from actor;


select age from actor order by age desc limit 1;

select * from actor 
where age=(select age from actor order by age desc limit 1);

select * from student s1 where 
mark > (select avg(mark) from student where dept=s1.dept);

