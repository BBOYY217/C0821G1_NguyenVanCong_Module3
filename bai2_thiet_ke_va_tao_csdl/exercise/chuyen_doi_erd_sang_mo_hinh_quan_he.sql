DROP DATABASE IF EXISTS commodity_management;
CREATE DATABASE commodity_management;
USE commodity_management;

CREATE TABLE bill(
Number_PX INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Export_Date DATETIME
);

CREATE TABLE supplies(
Id_VTU INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Name_VTU VARCHAR(50)
);

CREATE TABLE draft_vote(
Number_PN INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Draft_Date DATETIME
);

CREATE TABLE supplier(
Id_NCC INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Name_CC VARCHAR(50),
Address VARCHAR(50),
Phone_Number VARCHAR(50)
);

CREATE TABLE import_order(
Number_DH INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Order_Date DATETIME,
Id_NCC INT ,
FOREIGN KEY(Id_NCC) REFERENCES supplier(Id_NCC)
);


CREATE TABLE bill_supplies(
Number_PX INT NOT NULL,
Id_VTU INT NOT NULL,
PRIMARY KEY(Number_PX,Id_VTU),
Export_Price INT ,
Export_Quantity INT,
FOREIGN KEY (Number_PX) REFERENCES bill(Number_PX),
FOREIGN KEY (Id_VTU) REFERENCES supplies(Id_VTU)
);

CREATE TABLE supplies_draft_vote(
Id_VTU INT NOT NULL,
Number_PN INT NOT NULL,
PRIMARY KEY(Id_VTU,Number_PN),
Import_Price INT ,
Number_Import INT,
FOREIGN KEY (Id_VTU) REFERENCES supplies(Id_VTU),
FOREIGN KEY (Number_PN) REFERENCES draft_vote(Number_PN)
);

CREATE TABLE draft_vote_supplier(
Id_VTU INT NOT NULL,
Number_DH INT NOT NULL,
PRIMARY KEY(Id_VTU,Number_DH),
FOREIGN KEY (Id_VTU) REFERENCES supplies(Id_VTU),
FOREIGN KEY (Number_DH) REFERENCES import_order(Number_DH)
);