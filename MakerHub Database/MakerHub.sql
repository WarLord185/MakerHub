CREATE DATABASE MakerHub;
USE MakerHub;

CREATE TABLE `Space_Owner` (
  `Owner_ID` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255),
  `Address` VARCHAR(255),
  `Phone_Number` VARCHAR(255),
  `Email` VARCHAR(255),
  `DoB` DATE,
  `Account_Type` ENUM('Owner', 'Renter') DEFAULT 'Owner'
);


CREATE TABLE Category(
CategoryID VARCHAR(20) NOT NULL,
Name VARCHAR(100) NOT NULL,
Description VARCHAR (250) NOT NULL,
PRIMARY KEY(CategoryID)
);



CREATE TABLE `Space` (
  `Space_ID` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Space_Name` VARCHAR(255),
  `Address` VARCHAR(255),
  `Description` VARCHAR(255) NOT NULL,
  `Type` VARCHAR(50),
  `Price` DECIMAL(10, 2),
  `Availability` VARCHAR(40),
  `Owner_ID` INT,
  Category_id VARCHAR (20) NOT NULL,
  FOREIGN KEY (`Owner_ID`) REFERENCES `Space_Owner`(`Owner_ID`),
  Foreign key (Category_id) REFERENCES Category (CategoryID)
);





CREATE TABLE `Renter` (
  `Renter_ID` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255),
  `Address` VARCHAR(255),
  `Phone_Number` VARCHAR(20),
  `Email` VARCHAR(255),
  `DoB` DATE,
  `Account_Type` ENUM('Owner', 'Renter') DEFAULT 'Renter'
);

CREATE TABLE `Favorite` (
  `Favorite_ID` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Space_ID` INT,
  `Renter_ID` INT,
  `SaveDate` DATE,
  FOREIGN KEY (`Space_ID`) REFERENCES `Space`(`Space_ID`),
  FOREIGN KEY (`Renter_ID`) REFERENCES `Renter`(`Renter_ID`)
);

CREATE TABLE `Booking` (
  `Booking_ID` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Renter_ID` INT,
  `Space_ID` INT,
  `Status` VARCHAR(255),
  `BookingDate` DATE,
  `StartTime` DATETIME,
  `EndTime` DATETIME,
  FOREIGN KEY (`Space_ID`) REFERENCES `Space`(`Space_ID`),
  FOREIGN KEY (`Renter_ID`) REFERENCES `Renter`(`Renter_ID`)
);

CREATE TABLE `Payment` (
  `Payment_ID` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Booking_ID` INT,
  `Method` VARCHAR(50),
  `Status` VARCHAR(50),
  `Amount` DECIMAL(10, 2),
  `DatePaid` DATE,
  FOREIGN KEY (`Booking_ID`) REFERENCES `Booking`(`Booking_ID`)
);

CREATE TABLE `Picture` (
  `Pic_ID` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Pic_URL` VARCHAR(255),
  `UploadDate` DATE,
  `Caption` VARCHAR(255),
  `Space_ID` INT,
  FOREIGN KEY (`Space_ID`) REFERENCES `Space`(`Space_ID`)
);

CREATE TABLE `Login` (
  `User_ID` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Username` VARCHAR(255),
  `Password` VARCHAR(255),
  `Account_Type` ENUM('Owner', 'Renter'),
  FOREIGN KEY (`User_ID`) 
    REFERENCES `Space_Owner`(`Owner_ID`) 
    ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`User_ID`) 
    REFERENCES `Renter`(`Renter_ID`) 
    ON DELETE CASCADE ON UPDATE CASCADE
);
USE makerhub;
SELECT * FROM category;
SELECT * FROM Renter;
SELECT * FROM Login;
SELECT * FROM Space_Owner;
SELECT * FROM picture;
show tables;


INSERT INTO `Space_Owner` (`Name`, `Address`, `Phone_Number`, `Email`, `DoB`, `Account_Type`) 
VALUES ('Shastri', '3117 Helena Hill', '392-896-420', 'shastri.baboolal@gmail.com', '2003-05-18', 'Owner');
SET @last_id_in_space_owner = LAST_INSERT_ID();
INSERT INTO `Login` (`User_ID`, `Username`, `Password`, `Account_Type`) 
VALUES (@last_id_in_space_owner, 'Shastri', 'newPass', 'Owner');


insert into `Space_Owner` (Owner_ID, Name, Address, Phone_Number, DoB) values (1, 'Moss', '34261 Westridge Street', '172-975-5179', '1997-07-23');
insert into `Space_owner` (Owner_ID, Name, Address, Phone_Number, DoB) values (2, 'Bronny', '3117 Helena Hill', '392-896-4203', '1982-08-30');
insert into `Space_owner` (Owner_ID, Name, Address, Phone_Number, DoB) values (3, 'Sargent', '9 Gale Road', '527-156-1164', '1993-06-21');
insert into `Space_owner` (Owner_ID, Name, Address, Phone_Number, DoB) values (4, 'Bryana', '21657 Bunting Circle', '597-413-9326', '1980-10-29');
insert into `Space_owner` (Owner_ID, Name, Address, Phone_Number, DoB) values (5, 'Deny', '80652 Redwing Center', '723-593-4675', '1993-12-07');

insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (1, 'Hettinger, Kulas and Koelpin', '354 Luster Parkway', '', 'Culinary Arts', 489.8, true);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (2, 'Fritsch, Smith and Heller', '62792 Prairie Rose Trail', '', 'Arts and Crafts', 151.33, true);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (3, 'Nolan-Harvey', '24 Autumn Leaf Court', '', 'Textiles and Fashion', 215.12, true);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (4, 'Hettinger-Rogahn', '6 3rd Terrace', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Technology and Electronics', 258.65, true);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (5, 'Gleichner-Borer', '14087 Johnson Junction', '', 'Textiles and Fashion', 359.58, true);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (6, 'Lehner Group', '10541 Redwing Pass', '', 'STEM', 229.42, true);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (7, 'Rutherford-Thiel', '71142 Clyde Gallagher Avenue', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Metalworking', 381.99, true);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (8, 'Heathcote-Cruickshank', '0466 Blaine Drive', '', 'STEM', 167.47, true);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (9, 'Stracke Group', '60405 David Way', '', 'Digital Media', 367.45, true);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (10, 'Ratke-Miller', '05 Cottonwood Circle', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Digital Media', 261.1, true);

insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (1, 'Olson-Wisoky', '44369 Delaware Way', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Culinary Arts', 155.46, false);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (2, 'Mertz, Davis and Towne', '13049 Nevada Alley', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'STEM', 172.17, true);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (3, 'Johnston, Jones and Rice', '35384 Carpenter Crossing', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Culinary Arts', 73.66, false);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (4, 'Ferry Inc', '97 Fairfield Circle', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Gaming Music', 99.58, false);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (5, 'Keebler-Lockman', '4 Bowman Crossing', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Woodworking', 77.08, true);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (6, 'Gibson and Sons', '97391 Basil Hill', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Metalworking', 139.01, false);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (7, 'Hickle-Yost', '28944 Spaight Circle', 'Fusce consequat. Nulla nisl. Nunc nisl.', 'Textiles and Fashion', 158.93, true);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (8, 'Wiza-Torphy', '11670 Lindbergh Lane', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Metalworking', 446.35, true);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (9, 'Lang, Dickens and Dooley', '45596 Sunfield Plaza', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'STEM', 80.82, true);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (10, 'Schuster-West', '781 Mifflin Park', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'Woodworking', 196.67, true);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (11, 'Gottlieb-McKenzie', '3 6th Hill', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'Textiles and Fashion', 228.8, false);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (12, 'Hoeger-Littel', '791 Farmco Crossing', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Gaming Music', 181.28, false);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (13, 'Bartoletti, Gorczany and Swaniawski', '36233 Evergreen Pass', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Metalworking', 61.49, true);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (14, 'West-Gulgowski', '356 Bay Crossing', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'Culinary Arts', 209.04, false);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (15, 'Osinski-Gutmann', '1 Darwin Parkway', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'STEM', 415.87, false);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (16, 'Larson-Harvey', '895 Maryland Way', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Digital Media', 480.14, false);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (17, 'Keeling, White and Stoltenberg', '475 School Junction', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'STEM', 101.95, true);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (18, 'Hammes Group', '528 Hayes Circle', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Digital Media', 274.7, false);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (19, 'Nienow, Morar and Donnelly', '18611 Randy Lane', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Digital Media', 229.3, false);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) values (20, 'Satterfield LLC', '8 Susan Hill', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Textiles and Fashion', 438.5, true);

REPLACE INTO Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability) VALUES 
(1, 'Olson-Wisoky', '44369 Delaware Way', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Culinary Arts', 155.46, true),
(2, 'Mertz, Davis and Towne', '13049 Nevada Alley', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'STEM', 172.17, true),
(3, 'Johnston, Jones and Rice', '35384 Carpenter Crossing', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Culinary Arts', 73.66, true),
(4, 'Ferry Inc', '97 Fairfield Circle', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Gaming Music', 99.58, true),
(5, 'Keebler-Lockman', '4 Bowman Crossing', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Woodworking', 77.08, true),
(6, 'Gibson and Sons', '97391 Basil Hill', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Metalworking', 139.01, true),
(7, 'Hickle-Yost', '28944 Spaight Circle', 'Fusce consequat. Nulla nisl. Nunc nisl.', 'Textiles and Fashion', 158.93, true),
(8, 'Wiza-Torphy', '11670 Lindbergh Lane', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Metalworking', 446.35, true),
(9, 'Lang, Dickens and Dooley', '45596 Sunfield Plaza', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'STEM', 80.82, true),
(10, 'Schuster-West', '781 Mifflin Park', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'Woodworking', 196.67, true),
(11, 'Gottlieb-McKenzie', '3 6th Hill', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'Textiles and Fashion', 228.8, true),
(12, 'Hoeger-Littel', '791 Farmco Crossing', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Gaming Music', 181.28, true),
(13, 'Bartoletti, Gorczany and Swaniawski', '36233 Evergreen Pass', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Metalworking', 61.49, true),
(14, 'West-Gulgowski', '356 Bay Crossing', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae, Mauris viverra diam vitae quam. Suspendisse potenti.', 'Culinary Arts', 209.04, true),
(15, 'Osinski-Gutmann', '1 Darwin Parkway', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'STEM', 415.87, true),
(16, 'Larson-Harvey', '895 Maryland Way', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Digital Media', 480.14, true),
(17, 'Keeling, White and Stoltenberg', '475 School Junction', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'STEM', 101.95, true),
(18, 'Hammes Group', '528 Hayes Circle', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Digital Media', 274.7, true),
(19, 'Nienow, Morar and Donnelly', '18611 Randy Lane', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Digital Media', 229.3, true),
(20, 'Satterfield LLC', '8 Susan Hill', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Textiles and Fashion', 438.5, true);

INSERT INTO Category VALUES('C1','Culinary Arts','to cook');
INSERT INTO Category VALUES('C2','Arts and Crafts','to create art');
INSERT INTO Category VALUES('C3','Textiles and Fashion','to create clothing');
INSERT INTO Category VALUES('C4','Technology and Electronics','to create tech');
INSERT INTO Category VALUES('C5','STEM','for STEM');
INSERT INTO Category VALUES('C6','Mentalworking','to work with metal');
INSERT INTO Category VALUES('C7','Digital Media','to work with software');
INSERT INTO Category VALUES('C8','woodworking','to create with woods');
INSERT INTO Category VALUES('C9','Gaming Music','to create music');

DELETE FROM Picture WHERE Space_ID IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20);
