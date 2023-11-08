CREATE TABLE restaurants(
   r_id    INTEGER  NOT NULL PRIMARY KEY 
  ,r_name  VARCHAR(10) NOT NULL
  ,cuisine VARCHAR(12) NOT NULL
  ,rating  NUMERIC(3,1) NOT NULL
);
INSERT INTO restaurants(r_id,r_name,cuisine,rating) VALUES (1,'dominos','Italian',4.1);
INSERT INTO restaurants(r_id,r_name,cuisine,rating) VALUES (2,'kfc','American',3.9);
INSERT INTO restaurants(r_id,r_name,cuisine,rating) VALUES (3,'box8','North Indian',4.3);
INSERT INTO restaurants(r_id,r_name,cuisine,rating) VALUES (4,'Dosa Plaza','South Indian',4.6);
INSERT INTO restaurants(r_id,r_name,cuisine,rating) VALUES (5,'China Town','Chinese',4);
