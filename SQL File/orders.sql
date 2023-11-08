CREATE TABLE orders(
   order_id INTEGER  NOT NULL PRIMARY KEY 
  ,user_id  INTEGER  NOT NULL
  ,r_id     INTEGER  NOT NULL
  ,amount   INTEGER  NOT NULL
  ,date     DATE  NOT NULL
);
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1001,1,1,550,'2022-05-10');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1002,1,2,415,'2022-05-26');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1003,1,3,240,'2022-06-15');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1004,1,3,240,'2022-06-29');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1005,1,3,220,'2022-07-10');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1006,2,1,950,'2022-06-10');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1007,2,2,530,'2022-06-23');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1008,2,3,240,'2022-07-07');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1009,2,4,300,'2022-07-17');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1010,2,5,650,'2022-07-31');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1011,3,1,450,'2022-05-10');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1012,3,4,180,'2022-05-20');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1013,3,2,230,'2022-05-30');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1014,3,2,230,'2022-06-11');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1015,3,2,230,'2022-06-22');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1016,4,4,300,'2022-05-15');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1017,4,4,300,'2022-05-30');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1018,4,4,400,'2022-06-15');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1019,4,5,400,'2022-06-30');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1020,4,5,400,'2022-07-15');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1021,5,1,550,'2022-07-01');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1022,5,1,550,'2022-07-08');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1023,5,2,645,'2022-07-15');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1024,5,2,645,'2022-07-21');
INSERT INTO orders(order_id,user_id,r_id,amount,date) VALUES (1025,5,2,645,'2022-07-28');
