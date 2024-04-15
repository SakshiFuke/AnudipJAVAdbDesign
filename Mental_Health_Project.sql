create database Mental_Health_Project;

use Mental_Health_Project;

show databases;

create table User(
UserID int not null auto_increment PRIMARY KEY,
UserName varchar(20) NOT NULL,
email varchar(255) NOT NULL ,
userpass varchar(20) NOT NULL
); 

desc User;

create table Admin(
AdminID int not null auto_increment PRIMARY KEY,
UserName varchar(20) NOT NULL,
email varchar(255) NOT NULL,
Adminpass varchar(20) NOT NULL
); 

desc Admin;

create table SelfAssessment(
TestID int not null auto_increment PRIMARY KEY,
UserID int not null,
FOREIGN KEY (UserID) REFERENCES User(UserID),
TestType varchar(30) not null
);

desc SelfAssessment;

create table Progress(
progID int not null auto_increment PRIMARY KEY,
UserID int not null,
FOREIGN KEY (UserID) REFERENCES User(UserID),
TestID int not null,
FOREIGN KEY (TestID) REFERENCES SelfAssessment(TestID),
descript varchar(255)
);

desc Progress;

create table CommunitySupport(
supID int not null auto_increment PRIMARY KEY,
UserID int not null,
FOREIGN KEY (UserID) REFERENCES User(UserID),
supName varchar(20),
supdesig varchar(20)
);

desc CommunitySupport;

drop table CommunitySuport;

create table EduResources(
resourceID int not null auto_increment PRIMARY KEY,
materialType varchar(30),
materialName varchar(30)
);

desc EduResources;

create table Reminder(
RemID int not null auto_increment PRIMARY KEY,
UserID int not null,
FOREIGN KEY (UserID) REFERENCES User(UserID),
email varchar(255) NOT NULL,
FOREIGN KEY (email) REFERENCES User(email)
);

drop table Reminder;