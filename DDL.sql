Create database HospitalManagement;
use HospitalManagement;

Create table department( dept_ID varchar(20) primary key, name varchar(20) );

Create table staff ( staff_ID varchar(20) primary key, sname varchar(255) , dept_ID varchar(20) , role varchar(255), scontact int , constraint fk1 foreign key(dept_ID) references department(dept_ID));

Create table patient( patient_ID varchar(20) primary key, pname varchar(255), pcontact int(10), medi_hist varchar(255));

Create table doctors ( doctor_ID varchar(20) primary key, dname varchar(255), dcontact int(10), dept_ID varchar(20) , constraint fk2 foreign key(dept_ID) references department(dept_ID));

Create table appointment ( app_ID varchar(20) primary key, patient_ID varchar(20), doctor_ID varchar(20), app_date Date, constraint fk3 foreign key(patient_ID) references patient(patient_ID), constraint fk4 foreign key(doctor_ID) references doctors(doctor_ID));

CREATE TABLE rooms(room_id varchar(20) PRIMARY KEY,room_no varchar(20),room_type varchar(255),avail varchar(255));

CREATE TABLE medicalrecords(record_ID varchar(20),patient_ID varchar(20),diagnosis varchar(255),treatment varchar(255),medications varchar(255),constraint fk5 foreign key (patient_ID) references patient(patient_ID));

desc department;
desc staff;
desc patient;
desc doctors;
desc appointment;
desc rooms;
desc medicalrecords;
