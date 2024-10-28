CREATE TABLE Reality_Show
(
  Show_Name varchar2(20)primary key,
  Genre varchar2(20),
  Num_of_participants number(10)not null 
);
insert into reality_show values('Big_Boss17','Reality',7);
insert into reality_show values('Shark Tank2','Business',5);
insert into reality_show values('Dance India Dance','Entertainment',6);
insert into reality_show values('Roadies S19','Adventure',5);
insert into reality_show values('The Voice IndiaS3','Entertainment',6);
insert into reality_show values('Dance Plus Pro7','Entertainment',7);

delete from Reality_Show
where Show_Name = 'Jhalak Dikhla jaa';
delete from Reality_Show
where Show_Name = 'Dance Plus Pro7' ;
delete from reality_show
where Show_Name in ('Big_Boss17','Shark Tank2','Dance India Dance','Roadies S19','The Voice IndiaS3','Dance Plus Pro7');

select * from Reality_Show;
select * from reality_show;

CREATE TABLE User_R
(
  Subscription_id number(10)primary key,
  User_Name varchar2(20),
  Passwords varchar2(20),
  Age number(5),
  Pin number(8),
  City varchar2(20),
  States varchar2(20),
  Show_Name varchar2(20),
  FOREIGN KEY (Show_Name) REFERENCES Reality_Show(Show_Name)
);
desc User_R;
desc user_r;
insert into user_r values(201,'Ankit','Ankit@123',19,845455,'Narkatiaganj','Bihar','Big_Boss17');
insert into user_r values(202,'Vinit','Vinny@123',18,400061,'Kandivali Mumbai','Maharashtra','Shark Tank2');
insert into user_r values(203,'Sumedh','Sumedh@123',18,400050,'Panvel','Maharashtra','Dance India Dance');
insert into user_r values(204,'Amaan','Ammy@123',18,400061,'Goregaon West','Maharashtra','Roadies S19');
insert into user_r values(205,'Ayush','Ayush@123',19,800061,'Patna','Bihar','The Voice IndiaS3');
insert into user_r values(206,'Ajmal','Ajju@123',19,400061,'Mira Road','Maharashtra','Dance Plus Pro7');

select * from user_r;

CREATE TABLE Participants
(
  Participants_id number(10)primary key,
  Age number(5),
  Participants_Name varchar2(20),
  City varchar2(20),
  States varchar2(20),
  Pin number(8),
  Show_Name varchar2(20),
  FOREIGN KEY (Show_Name) REFERENCES Reality_Show(Show_Name)
);
insert into participants values(101,31,'Munawar Faruqui','Mumbai','Maharashtra',400001,'Big_Boss17');
insert into participants values(102,35,'Ankita Lokhande','Mumbai','Maharashtra',400001,'Big_Boss17');
insert into participants values(103,38,'Vicky Jain','Bilas Pur','Jharkhand',565777,'Big_Boss17');
insert into participants values(104,23,'Abhishek Kumar','ChandiGarh','Punjab',800001,'Big_Boss17');
insert into participants values(105,30,'Mannara Chopra','ChandiGarh','Punjab',800001,'Big_Boss17');
insert into participants values(106,19,'Isha Malviya','Bhopal','Madhya Pradesh',860001,'Big_Boss17');
insert into participants values(107,23,'Samarth Jurel','Bhopal','Madhya Pradesh',860001,'Big_Boss17');

insert into participants values(121,30,'Rajesh Singh','Mumbai','Maharashtra',400001,'Shark Tank2');
insert into participants values(122,27,'Keshav Solanki','Jaipur','Rajasthan',546754,'Shark Tank2');
insert into participants values(123,30,'Simran Joshi','Kurukshetra','Hariyana',9786543,'Shark Tank2');
insert into participants values(124,30,'Rajesh Singh','Mumbai','Maharashtra',400001,'Shark Tank2');
insert into participants values(125,25,'Keshav Ankit','Mumbai','Maharashtra',400001,'Shark Tank2');

insert into participants values(131,15,'Rahul Raj','Mumbai','Maharashtra',400001,'Dance India Dance');
insert into participants values(132,17,'Priya Mohan','Patna','Bihar',576564,'Dance India Dance');
insert into participants values(133,20,'Manisha Rani','MuzaffarPur','Bihar',845301,'Dance India Dance');
insert into participants values(134,18,'Vaibhav Jain','Ahemdabaad','Gujrat',213781,'Dance India Dance');
insert into participants values(135,19,'Raunak Siway','Pune','Maharashtra',400004,'Dance India Dance');
insert into participants values(136,20,'Rimmi Sinha','Mumbai','Maharashtra',400001,'Dance India Dance');

insert into participants values(141,22,'Prince Singh','Lukhnow','UP',883456,'Roadies S19');
insert into participants values(142,25,'Rinku Singh','Hyderbaad','AndhraPradesh',345678,'Roadies S19');
insert into participants values(143,23,'Aniket Kamble','Mumbai','Maharshtra',400001,'Roadies S19');
insert into participants values(144,22,'Gautam','Pune','Maharashtra',400003,'Roadies S19');
insert into participants values(145,23,'Priya Sanvi','Mumbai','Maharashtra',400001,'Roadies S19');

insert into participants values(151,17,'Salman Ali','Jaipur','Rajasthan',675643,'The Voice IndiaS3');
insert into participants values(152,18,'Pawandeep Rajan','Dehradun','Uttrakhand',675667,'The Voice IndiaS3');
insert into participants values(153,20,'Ashish Kulkarni','Varansi','UP',675890,'The Voice IndiaS3');
insert into participants values(154,21,'Arunita Kanjilal','Kolkata','Pashchim Bengal',675766,'The Voice IndiaS3');
insert into participants values(155,22,'Karishma Shah','Jaipur','Rajasthan',675643,'The Voice IndiaS3');
insert into participants values(156,19,'Riya Shankar','Noida','UP-Delhi',543643,'The Voice IndiaS3');

insert into participants values(161,21,'Raghav Sharma','Dehradun','Uttrakhand',675667,'Dance Plus Pro7');
insert into participants values(162,22,'Ramya Sharma','Jaipur','Rajasthan',675643,'Dance Plus Pro7');
insert into participants values(163,23,'Dharmesh Raj','Vadodra','Gujrat',778956,'Dance Plus Pro7');
insert into participants values(164,25,'DhanaShree Verma','Dehradun','Uttrakhand',675667,'Dance Plus Pro7');
insert into participants values(165,26,'Rivava Sharma','Jaipur','Rajasthan',675643,'Dance Plus Pro7');
insert into participants values(166,23,'Shakti Mohan','Varansi','UP',675890,'Dance Plus Pro7');
insert into participants values(167,21,'Shreya Raghvi','Noida','UP-Delhi',543643,'Dance Plus Pro7');


delete from participants
where participants.participants_id in(101,102,103,104,105,106,107,108,109,110,111,112,113,114,115);


select * from participants;

CREATE TABLE Producer
(
  Company_Name varchar2(20)primary key,
  Producer_Name varchar2(20),
  Company_Country varchar2(20),
  Contact number(10),
  Show_Name varchar2(20),
  FOREIGN KEY (Show_Name) REFERENCES Reality_Show(Show_Name)
);
insert into producer values('Ambiguous','Abhiraj Sinha','India',7070981302,'Big_Boss17');
insert into producer values('R Studio','Remo Decuza','India',7208035956,'Shark Tank2');
insert into producer values('Viocom18','Kaushal Kumar','India',9702636585,'Dance India Dance');
insert into producer values('Disney','Michal Phillips','USA',9326936727,'Roadies S19');
insert into producer values('T Series','Bhushan Kumar','India',8591275316,'The Voice IndiaS3');
insert into producer values('KAP Studio','KAP','India',9619664108,'Dance Plus Pro7');

desc producer;
CREATE TABLE Telivision_Channel
(
  Channel_Name varchar2(20)primary key,
  Head_Office varchar2(20),
  Start_Year number(5),
  Show_Name varchar2(20),
  FOREIGN KEY (Show_Name) REFERENCES Reality_Show(Show_Name)
);
desc Telivision_Channel;
insert into telivision_channel values('Colors TV','Mumbai',2008,'Big_Boss17');
insert into telivision_channel values('SonyLiv','Malad West',2013,'Shark Tank2');
insert into telivision_channel values('Zee TV','Lower Parel',2009,'Dance India Dance');
insert into telivision_channel values('MTV','Vile Parle',1996,'Roadies S19');
insert into telivision_channel values('And TV','Mumbai',2015,'The Voice IndiaS3');
insert into telivision_channel values('Star PLus','Lower Parel',1992,'Dance Plus Pro7');


delete from Telivision_Channel
where telivision_channel.name in('Colors TV','SonyLiv','Zee TV','MTV','And TV','Star PLus');
drop table Telivision_Channell;
select * from Telivision_Channel;
select * from telivision_channel;


