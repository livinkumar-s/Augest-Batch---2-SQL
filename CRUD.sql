USE augbatch2;

INSERT INTO actor (id,name,age) VALUES 
(8,"vishal",55);

SELECT * FROM actor WHERE name="karan";

SELECT * FROM actor;
UPDATE actor SET name="Dhruv" WHERE id=1;
UPDATE actor SET name="Dhruv vikram", age=27 WHERE id=1;

DELETE FROM actor WHERE id=8;