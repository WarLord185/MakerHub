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
  FOREIGN KEY (`Owner_ID`) REFERENCES `Space_Owner`(`Owner_ID`)
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
SELECT * FROM Space;
SELECT * FROM Space_Owner;
SELECT * FROM Picture;

show tables;




insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (1, 'Anselm', '92 Stone Corner Junction', '817-900-6390', 'acutridge0@etsy.com', '1976-11-18', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (2, 'Renell', '278 Delaware Alley', '874-272-5946', 'rseymer1@lycos.com', '1996-03-26', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (3, 'Valentijn', '391 Surrey Plaza', '626-452-3270', 'vdounbare2@smugmug.com', '1966-04-22', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (4, 'Deidre', '39 Bluestem Hill', '773-666-8128', 'ddiamond3@joomla.org', '1951-10-07', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (5, 'Ethan', '755 Lunder Hill', '908-461-6530', 'eendecott4@mtv.com', '1971-07-24', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (6, 'Lynett', '67 Esch Center', '836-437-9577', 'ltomasello5@skype.com', '1983-06-07', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (7, 'Laurianne', '311 La Follette Court', '653-455-6137', 'lrosencwaig6@weebly.com', '2003-03-21', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (8, 'Gay', '9 Prentice Lane', '615-896-2701', 'gpassman7@kickstarter.com', '1983-10-01', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (9, 'Say', '038 Dennis Place', '690-386-1878', 'ssweeney8@apache.org', '1987-04-28', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (10, 'Calla', '851 Chinook Parkway', '451-424-0873', 'cdefreyne9@vkontakte.ru', '1987-09-22', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (11, 'Giordano', '6810 Marcy Trail', '215-171-9594', 'gasaafa@naver.com', '1984-05-03', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (12, 'Caspar', '8043 La Follette Hill', '557-103-8989', 'cclemenceaub@rediff.com', '1962-01-23', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (13, 'Daffi', '2 Scofield Road', '117-188-6327', 'dgioanic@is.gd', '1987-10-12', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (14, 'Urbanus', '5 Schurz Court', '695-342-2065', 'uolyetd@webs.com', '1964-07-29', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (15, 'Erminia', '59635 Killdeer Place', '636-639-9279', 'emcgloine@nih.gov', '2000-11-19', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (16, 'Gusta', '58 Eastwood Alley', '878-680-9287', 'ggosalvezf@printfriendly.com', '1976-04-21', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (17, 'Klarika', '2 Sachs Terrace', '783-742-4749', 'kbowellg@shutterfly.com', '1988-04-18', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (18, 'Dottie', '98 Duke Crossing', '182-948-6748', 'dgoldieh@npr.org', '1997-05-30', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (19, 'Lauri', '999 Jackson Parkway', '325-597-0830', 'lflaunieri@statcounter.com', '1955-02-16', 'Owner');
insert into Space_Owner (Owner_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (20, 'Ezra', '7 Linden Road', '413-299-5019', 'eskillj@abc.net.au', '1979-06-15', 'Owner');

insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (1, 'Pattin', '84 Atwood Avenue', 'in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque', 'Culinary Arts', '200.00', 'ye', 1);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (2, 'Tuck', '39 Stuart Point', 'vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit', 'Technology and Electronics', '200.00', 'ye', 2);

insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (3, 'Berge, Kulas and O''Hara', '2 Corscot Street', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'Music', 651.03, 'ye', 3);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (4, 'Ward LLC', '16 Oak Valley Drive', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'Culinary Arts', 468.98, 'ye', 4);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (5, 'Schoen-Langosh', '6170 Elmside Trail', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Culinary Arts', 843.97, 'ye', 5);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (6, 'Lemke, Volkman and Schulist', '6 2nd Pass', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'Technology', 973.03, 'ye', 6);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (7, 'McCullough and Sons', '8635 Doe Crossing Parkway', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'Music', 289.22, 'ye', 7);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (8, 'Cassin-Lehner', '45873 Wayridge Road', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Music', 727.59, 'ye', 8);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (9, 'Doyle, Tillman and Shields', '77570 Sauthoff Crossing', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Music', 399.79, 'ye', 9);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (10, 'Hackett, McGlynn and Block', '141 Johnson Pass', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Music', 4.35, 'ye', 10);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (11, 'Terry Inc', '40 Lighthouse Bay Terrace', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'Art', 861.55, 'ye', 11);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (12, 'Lowe, Hartmann and Funk', '6457 Service Drive', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 'Art', 152.06, 'ye', 12);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (13, 'Kuhn and Sons', '917 Melvin Parkway', 'Fusce consequat. Nulla nisl. Nunc nisl.', 'Music', 598.72, 'ye', 13);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (14, 'Senger-Gleichner', '36 Meadow Vale Circle', 'Fusce consequat. Nulla nisl. Nunc nisl.', 'Technology', 167.11, 'ye', 14);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (15, 'Larkin, Crist and Reichert', '01624 Calypso Trail', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Art', 156.41, 'ye', 15);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (16, 'Kub Inc', '3114 Village Drive', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Culinary Arts', 873.72, 'ye', 16);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (17, 'Jenkins Inc', '7 Dixon Point', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'Technology', 225.95, 'ye', 17);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (18, 'Paucek, Botsford and Moore', '0 Monterey Center', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Science', 617.1, 'ye', 18);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (19, 'Heaney-King', '8 Ohio Road', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'Science', 305.36, 'ye', 19);
insert into Space (Space_ID, Space_Name, Address, Description, Type, Price, Availability, Owner_ID) values (20, 'Hintz-Tremblay', '853 Holy Cross Place', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'Culinary Arts', 459.67, 'ye', 20);

insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (1, 'Zebadiah', '298 Bluejay Alley', '986-822-4077', 'ztreweke0@angelfire.com', '1990-01-01', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (2, 'Gannon', '2793 Mayfield Alley', '318-610-5265', 'glygo1@smugmug.com', '1957-06-25', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (3, 'Mel', '9737 Lerdahl Junction', '999-785-4309', 'mbreslauer2@marriott.com', '2001-04-15', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (4, 'Rockwell', '87 Stang Crossing', '878-140-9703', 'rsworder3@tuttocitta.it', '1986-04-25', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (5, 'Eimile', '75278 Goodland Avenue', '827-186-9879', 'eboshere4@biglobe.ne.jp', '1969-04-07', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (6, 'Erminie', '03574 Glacier Hill Lane', '326-759-2747', 'ehowling5@myspace.com', '1989-01-19', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (7, 'Mommy', '7788 Southridge Hill', '832-859-1908', 'meskriet6@networksolutions.com', '1991-08-03', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (8, 'Verne', '92501 Kinsman Way', '266-400-3176', 'vbullene7@skyrock.com', '2004-01-10', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (9, 'Warren', '084 Algoma Court', '216-297-0785', 'wskentelbery8@berkeley.edu', '1979-12-15', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (10, 'Glad', '3 Summit Terrace', '306-124-6049', 'gdigges9@addtoany.com', '2000-10-28', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (11, 'Fayth', '51 Ohio Point', '150-154-4797', 'fgriswaitea@360.cn', '1976-06-07', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (12, 'Agna', '203 Hayes Center', '503-303-1131', 'afeldbaumb@epa.gov', '1960-11-10', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (13, 'Leandra', '76756 Nelson Way', '664-953-4563', 'lmavingc@fastcompany.com', '1968-02-13', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (14, 'Magdalena', '5880 Fair Oaks Pass', '745-928-3555', 'mwintersgilld@webeden.co.uk', '1992-06-16', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (15, 'Kali', '59 Logan Center', '648-671-1378', 'kmckinstrye@globo.com', '1971-10-15', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (16, 'Sheffie', '16 Golf View Point', '103-249-6336', 'shemphillf@china.com.cn', '1963-10-22', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (17, 'Emiline', '8746 Weeping Birch Lane', '178-678-2216', 'earkilg@sitemeter.com', '1953-10-01', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (18, 'Hillyer', '986 Wayridge Point', '975-317-6707', 'htroddh@businessweek.com', '1965-03-30', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (19, 'Orazio', '7 Sauthoff Place', '549-458-2117', 'oleybandi@altervista.org', '1956-05-15', 'Renter');
insert into Renter (Renter_ID, Name, Address, Phone_Number, Email, DoB, Account_Type) values (20, 'Veronika', '062 Anzinger Junction', '795-831-2012', 'vasplenj@4shared.com', '1994-06-24', 'Renter');

INSERT INTO Category VALUES('C1','Culinary Arts','to cook');
INSERT INTO Category VALUES('C2','Arts and Crafts','to create art');
INSERT INTO Category VALUES('C3','Textiles and Fashion','to create clothing');
INSERT INTO Category VALUES('C4','Technology and Electronics','to create tech');
INSERT INTO Category VALUES('C5','STEM','for STEM');
INSERT INTO Category VALUES('C6','Metalworking','to work with metal');
INSERT INTO Category VALUES('C7','Digital Media','to work with software');
INSERT INTO Category VALUES('C8','woodworking','to create with woods');
INSERT INTO Category VALUES('C9','Gaming Music','to create music');

INSERT INTO Picture (Pic_ID, Pic_URL, UploadDate, Caption, Space_ID) VALUES
(1, '1.jpg', '2024-04-28', 'Caption for image 1', 1),
(2, '2.jpg', '2024-04-28', 'Caption for image 2', 2),
(3, '3.jpg', '2024-04-28', 'Caption for image 3', 3),
(4, '4.jpg', '2024-04-28', 'Caption for image 4', 4),
(5, '5.jpg', '2024-04-28', 'Caption for image 5', 5),
(6, '6.jpg', '2024-04-28', 'Caption for image 6', 6),
(7, '7.jpg', '2024-04-28', 'Caption for image 7', 7),
(8, '8.jpg', '2024-04-28', 'Caption for image 8', 8),
(9, '9.jpg', '2024-04-28', 'Caption for image 9', 9),
(10, '10.jpg', '2024-04-28', 'Caption for image 10', 10),
(11, '11.jpg', '2024-04-28', 'Caption for image 11', 11),
(12, '12.jpg', '2024-04-28', 'Caption for image 12', 12),
(13, '13.jpg', '2024-04-28', 'Caption for image 13', 13),
(14, '14.jpg', '2024-04-28', 'Caption for image 14', 14),
(15, '15.jpg', '2024-04-28', 'Caption for image 15', 15),
(16, '16.jpg', '2024-04-28', 'Caption for image 16', 16),
(17, '17.jpg', '2024-04-28', 'Caption for image 17', 17),
(18, '18.jpg', '2024-04-28', 'Caption for image 18', 18),
(19, '19.jpg', '2024-04-28', 'Caption for image 19', 19),
(20, '20.jpg', '2024-04-28', 'Caption for image 20', 20);

INSERT INTO Login (User_ID, Username, Password, Account_Type) VALUES
(1, 'Anselm', 'AnselmPass', 'Owner'),
(2, 'Renell', 'RenellPass', 'Owner'),
(3, 'Valentijn', 'ValentijnPass', 'Owner'),
(4, 'Deidre', 'DeidrePass', 'Owner');