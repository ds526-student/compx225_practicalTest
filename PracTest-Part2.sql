

CREATE TABLE Test_Customers (
CustomerID int PRIMARY KEY,
Name varchar(20) NOT NULL,
Suburb varchar(20),
Birthday Date);

CREATE TABLE Test_Food (
FoodID int PRIMARY KEY,
Item VARCHAR(20),
Category VARCHAR(20),
ItemPrice REAL);

CREATE TABLE Test_Purchases (
PurchaseID int AUTO_INCREMENT PRIMARY KEY,
CustomerID int NOT NULL, 
FoodID int NOT NULL,
Quantity int,
PurchaseDate Date NOT NULL);

----------------------------------------------------
----------------------------------------------------

insert into Test_Customers values (11,'Chewbacca','Hillcrest','1930-11-28');
insert into Test_Customers values (12,'Darth Sidious','Silverdale','1952-12-12');
insert into Test_Customers values (13,'Darth Vader','Peachgrove','1946-10-17');
insert into Test_Customers values (14,'Han Solo ','Hillcrest','1967-08-08');
insert into Test_Customers values (15,'Jabba the Hutt','Hillcrest','1805-01-01');
insert into Test_Customers values (16,'Luke Skywalker','Peachgrove','1965-08-26');
insert into Test_Customers values (17,'Obi-Wan Kenobi','Chartwell','1942-06-02');
insert into Test_Customers values (18,'Padme Amidala','Riverlea','1972-11-22');
insert into Test_Customers values (19,'Princess Leia','Chartwell','1965-08-26');
insert into Test_Customers values (20,'Qui-Gon Jinn','Riverlea','1943-02-06');
insert into Test_Customers values (21,'Senator Palpatine','Silverdale','1957-07-07');
insert into Test_Customers values (22,'Yoda','Hillcrest','1005-03-02');
insert into Test_Customers values (23,'Luminara Unduli','Hillcrest','1927-07-02');
insert into Test_Customers values (24,'Jango Fett','Chartwell','1951-04-21');
insert into Test_Customers values (25,'Mon Mothma','Peachgrove','1921-08-26');
insert into Test_Customers values (26,'Zam Wesell','Silverdale','1975-01-08');
insert into Test_Customers values (27,'Nien Nunb','Hillcrest','1965-11-21');

insert into Test_Food values (41,'apple','fruit',1);
insert into Test_Food values (42,'orange','fruit',1);
insert into Test_Food values (43,'banana','fruit',1);
insert into Test_Food values (44,'feijoa','fruit',1);
insert into Test_Food values (45,'mango','fruit',3);
insert into Test_Food values (46,'mince pie','savory',4);
insert into Test_Food values (47,'steak pie','savory',4);
insert into Test_Food values (48,'fish pie','savory',5);
insert into Test_Food values (49,'sausage roll','savory',2);
insert into Test_Food values (50,'corn beef','sandwhich',4);
insert into Test_Food values (51,'ham','sandwhich',3);
insert into Test_Food values (52,'egg and cheeze','sandwhich',4);
insert into Test_Food values (53,'chicken','sandwhich',3);
insert into Test_Food values (54,'chocolate fish','sweet',1);
insert into Test_Food values (55,'peanut slab','sweet',2);
insert into Test_Food values (56,'crunchie','sweet',1);
insert into Test_Food values (57,'flake','sweet',1);
insert into Test_Food values (58,'jaffa','sweet',2);
insert into Test_Food values (59,'water melon','fruit',5);
insert into Test_Food values (60,'chips','savory',2);
insert into Test_Food values (61,'steak','sandwhich',4);
insert into Test_Food values (62,'blt','sandwhich',3);
insert into Test_Food values (63,'chewing gum','sweet',1);

insert into Test_Purchases values (null,11,41,4,'2023-4-13');
insert into Test_Purchases values (null,12,41,1,'2023-4-14');
insert into Test_Purchases values (null,14,50,2,'2023-4-14');
insert into Test_Purchases values (null,14,51,1,'2023-4-14');
insert into Test_Purchases values (null,13,56,2,'2023-4-14');
insert into Test_Purchases values (null,14,41,3,'2023-4-15');
insert into Test_Purchases values (null,14,49,1,'2023-4-15');
insert into Test_Purchases values (null,12,52,1,'2023-4-15');
insert into Test_Purchases values (null,15,54,6,'2023-4-15');
insert into Test_Purchases values (null,13,57,1,'2023-4-15');
insert into Test_Purchases values (null,21,41,2,'2023-4-16');
insert into Test_Purchases values (null,12,49,1,'2023-4-16');
insert into Test_Purchases values (null,18,52,2,'2023-4-16');
insert into Test_Purchases values (null,15,54,7,'2023-4-16');
insert into Test_Purchases values (null,13,57,1,'2023-4-16');
insert into Test_Purchases values (null,21,41,2,'2023-4-17');
insert into Test_Purchases values (null,19,48,1,'2023-4-17');
insert into Test_Purchases values (null,19,52,2,'2023-4-17');
insert into Test_Purchases values (null,16,53,1,'2023-4-18');
insert into Test_Purchases values (null,15,54,4,'2023-4-19');
insert into Test_Purchases values (null,11,42,2,'2023-4-19');
insert into Test_Purchases values (null,20,47,1,'2023-4-20');
insert into Test_Purchases values (null,15,54,5,'2023-4-20');
insert into Test_Purchases values (null,13,55,2,'2023-4-20');
insert into Test_Purchases values (null,19,42,2,'2023-4-21');
insert into Test_Purchases values (null,12,47,1,'2023-4-21');
insert into Test_Purchases values (null,15,54,8,'2023-4-21');
insert into Test_Purchases values (null,19,55,3,'2023-4-21');
insert into Test_Purchases values (null,13,57,4,'2023-4-21');
insert into Test_Purchases values (null,11,43,3,'2023-4-22');
insert into Test_Purchases values (null,20,46,1,'2023-4-22');
insert into Test_Purchases values (null,11,44,10,'2023-4-23');
insert into Test_Purchases values (null,16,46,2,'2023-4-23');
insert into Test_Purchases values (null,11,45,2,'2023-4-25');
insert into Test_Purchases values (null,16,45,2,'2023-4-25');
insert into Test_Purchases values (null,12,51,2,'2023-4-25');
insert into Test_Purchases values (null,23,59,5,'2023-4-26');
insert into Test_Purchases values (null,24,61,2,'2023-4-26');
insert into Test_Purchases values (null,25,51,2,'2023-4-26');
insert into Test_Purchases values (null,26,45,2,'2023-4-27');
insert into Test_Purchases values (null,24,47,2,'2023-4-27');
insert into Test_Purchases values (null,23,59,4,'2023-4-27');
insert into Test_Purchases values (null,27,62,3,'2023-4-28');
insert into Test_Purchases values (null,26,60,1,'2023-4-29');
insert into Test_Purchases values (null,27,63,1,'2023-4-29');
insert into Test_Purchases values (null,23,42,2,'2023-4-29');
insert into Test_Purchases values (null,24,46,3,'2023-4-29');

-- Name: 
-- Id: 

-- Answer Q4 below


-- Answer Q5 below


-- Answer Q6 below


-- Answer Q7 below


-- Answer Q8 below
