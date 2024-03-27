create database hospitalmanagement;
use hospitalmanagement;

create table patient (
    patientid int primary key,
    firstname varchar(20),
    lastname varchar(20),
    dateofbirth date,
    gender varchar(20),
    contact int,
    address varchar(20)
);

insert into patient (patientid, firstname, lastname, dateofbirth, gender, contact,address)
values
    (101, 'Akilesh', 'S', '2002-10-05', 'Male', 9876543, 'Chennai'),
    (102, 'Susmitha', 'Sharma', '2003-01-03', 'Female', 5432109, 'Mumbai'),
    (103, 'Neha', 'Patil', '2001-05-03', 'Female', 8904567, 'Ahmedabad'),
    (104, 'Nikhil', 'Y', '2003-01-02', 'Male', 9012678, 'Banglore'),
    (105, 'Arvind', 'Krishna', '1999-03-04', 'Male', 4567123, 'Lucknow');
select * from patient;

create table doctors(doctorid int primary key, firstname varchar(20), lastname varchar(20),
 specialization varchar(20),contactnumber int);
insert into doctors (doctorId, firstName, lastName, specialization, contactNumber)
values
    (1, 'John', 'Doe', 'Cardiologist', 9876543),
    (2, 'Alice', 'Smith', 'Pediatrician', 1234567),
    (3, 'Michael', 'Johnson', 'Orthopedic Surgeon', 8765432),
    (4, 'Emily', 'Brown', 'Dermatologist', 23456789),
    (5, 'Daniel', 'Martinez', 'Neurologist', 8901234);
select * from doctors;

 create table appointments(appointmentid int, patientid int, doctorid int,
 appdate date, patdes varchar(20) , foreign key(patientid) references patient(patientid), foreign key
 (doctorid) references doctors(doctorid));
insert into appointments (appointmentId, patientId, doctorId, appDate, patdes)
values
	(1, 101, 2, '2024-04-10', 'General checkup'),
    (2, 102, 1, '2024-05-15', 'Dental checkup'),
    (3, 103, 3, '2024-06-20', 'Consultation'),
    (4, 104, 4, '2024-07-25', 'Vaccination'),
    (5, 105, 5, '2024-08-30', 'Eye checkup');
select * from appointments;
