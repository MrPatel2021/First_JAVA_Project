/*
SQLyog Enterprise v13.1.1 (64 bit)
MySQL - 5.5.62 : Database - demo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`demo` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `demo`;

/*Table structure for table `area` */

DROP TABLE IF EXISTS `area`;

CREATE TABLE `area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(50) NOT NULL,
  `doi` datetime DEFAULT NULL,
  `dou` datetime DEFAULT NULL,
  `is_active` int(1) NOT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

/*Data for the table `area` */

insert  into `area`(`area_id`,`area_name`,`doi`,`dou`,`is_active`) values 
(19,'Megahninagar','2020-03-13 16:21:57','2020-03-13 16:21:57',1),
(20,'Vejalpur','2020-03-13 16:21:57','2020-03-13 16:21:57',1),
(21,'Godreg City','2020-03-13 16:21:57','2020-03-13 16:21:57',1),
(22,'Adani Shanti Gram','2020-03-13 16:21:57','2020-03-13 16:21:57',1),
(23,'Vastrapur','2020-03-13 16:21:57','2020-03-13 16:21:57',1),
(24,'Vastral','2020-03-13 16:21:57','2020-03-13 16:21:57',1),
(25,'Kuha','2020-03-13 16:21:57','2020-03-13 16:21:57',1),
(26,'Shayamal','2020-03-13 16:21:57','2020-03-13 16:21:57',1),
(27,'Kanbha','2020-03-13 16:21:57','2020-03-13 16:21:57',1),
(28,'Asharam Road','2020-03-13 16:21:57','2020-03-13 16:21:57',1),
(29,'Bodakdev','2020-03-13 16:21:57','2020-03-13 16:21:57',1),
(30,'Shahpur','2020-03-13 16:21:57','2020-03-13 16:21:57',1),
(31,'Science City','2020-03-13 16:21:57','2020-03-13 16:21:57',1),
(32,'Bhuyangdev','2020-03-13 16:21:57','2020-03-13 16:21:57',1),
(33,'Girdharnagar','2020-03-13 16:21:57','2020-03-13 16:21:57',1),
(34,'Parasnagar','2020-03-13 16:21:57','2020-03-13 16:21:57',1),
(35,'Shahibaug','2020-02-17 11:21:31','2020-02-17 11:21:31',1),
(36,'Girdharnagar','2020-02-17 11:21:31','2020-02-17 11:21:31',1),
(37,'Memnagar','2020-02-17 11:21:31','2020-02-17 11:21:31',1),
(38,'Shubhash Bridge','2020-02-17 11:21:31','2020-02-17 11:21:31',1),
(39,'Vadaj','2020-02-17 11:21:31','2020-02-17 11:21:31',1),
(40,'Chiloda','2020-02-17 11:21:31','2020-02-17 11:21:31',1),
(41,'Gatlodiya','2020-02-17 11:21:31','2020-02-17 11:21:31',1),
(42,'Guma','2020-02-17 11:21:31','2020-02-17 11:21:31',1),
(43,'Nana Chiloda','2020-02-17 11:21:31','2020-02-17 11:21:31',1),
(44,'Gota','2020-02-17 11:21:31','2020-02-17 11:21:31',1),
(45,'Godasar','2020-02-17 11:21:31','2020-02-17 11:21:31',1),
(46,'Sola','2020-02-04 12:03:06','2020-02-04 12:03:06',1),
(47,'Naranpura','2020-02-17 11:21:31','2020-02-17 11:21:31',1),
(48,'Bopal','2020-02-17 16:31:06','2020-02-17 16:31:06',1),
(50,'Kubernagar','2020-03-13 16:21:13','2020-03-13 16:21:13',1),
(51,'Navarangpura','2020-03-13 16:21:37','2020-03-13 16:21:37',1),
(52,'Bhargav','2020-03-13 16:21:57','2020-03-13 16:21:57',1),
(53,'Maninagar','2020-03-13 16:22:35','2020-03-13 16:22:35',1),
(54,'Civil','2020-05-28 11:35:40','2020-05-28 11:35:40',1),
(55,'Naroda','2020-05-29 10:49:12','2020-05-29 10:49:12',1),
(56,'South Bopal','2020-05-29 10:53:09','2020-05-29 10:53:09',1),
(58,'Nikol','2020-05-29 11:46:52','2020-05-29 11:46:52',1),
(59,'Vatva','2020-06-04 14:09:03','2020-06-04 14:09:03',1),
(60,'Odhav','2020-06-04 14:09:11','2020-06-04 14:09:11',1),
(61,'Narol','2020-06-04 14:09:23','2020-06-04 14:09:23',1),
(62,'HIravadi','2020-06-04 14:37:19','2020-06-04 14:37:19',1),
(63,'Bapunagar','2020-06-04 14:37:56','2020-06-04 14:37:56',1),
(64,'Memco Cross Road','2020-08-15 19:59:04','2020-08-15 19:59:04',1),
(65,'Gujarat University','2020-08-16 21:03:06','2020-08-16 21:03:06',1);

/*Table structure for table `booking_history` */

DROP TABLE IF EXISTS `booking_history`;

CREATE TABLE `booking_history` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `worker_id` int(11) DEFAULT NULL,
  `worker_fname` varchar(35) DEFAULT NULL,
  `worker_lname` varchar(35) DEFAULT NULL,
  `date` date NOT NULL,
  `time` varchar(35) NOT NULL,
  `problem` varchar(300) NOT NULL,
  `doi` datetime NOT NULL,
  `dou` datetime NOT NULL,
  `isactive` int(1) NOT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `booking_history` (`worker_id`),
  KEY `isactive` (`isactive`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `booking_history` */

insert  into `booking_history`(`booking_id`,`worker_id`,`worker_fname`,`worker_lname`,`date`,`time`,`problem`,`doi`,`dou`,`isactive`) values 
(1,2,'Aman','Tomar','2020-07-31','10 To 12 AM','I want to go office(CG Road) from my home(Naranpura).','2020-07-30 10:55:38','2020-07-30 10:55:38',1),
(2,10,'Ranjan','Rami','2020-07-08','12 To 2 PM','I need your help because I have a small party at my home.','2020-07-31 19:03:04','2020-07-31 19:03:04',1),
(3,12,'Raju','Desai','2020-07-21','8 To 10 AM','I need a 10 Liter fresh milk.','2020-08-04 18:24:06','2020-08-04 18:24:06',1),
(4,1,'Rohan','Pandey','2020-07-09','8 To 10 AM','I need a 10 liter milk and 50 liter buttermilk.\r\n','2020-08-05 17:15:12','2020-08-05 17:15:12',1),
(5,38,'Rajubhai','Sharma','2020-08-20','4 To 6 PM','I have some problem on style.','2020-08-07 17:31:33','2020-08-07 17:31:33',1),
(6,4,'Mansi','Soni','2020-06-18','10 To 12 AM','I have a 2 dog and 1 cat can you please tack care of them.....!','2020-08-07 17:37:16','2020-08-07 17:37:16',1),
(7,29,'Mehul','Patel','2020-08-26','2 To 4 PM','I want to sell my gold.','2020-08-07 17:38:13','2020-08-07 17:38:13',1),
(8,18,'Jay','Joshi','2020-06-26','4 To 6 PM','In our society we have a one function so for the parking we need your help.','2020-08-08 17:37:10','2020-08-08 17:37:10',1),
(9,13,'Nisha','Madhulika','2020-06-25','10 To 12 AM','Please come our home for the making Basundi.','2020-08-08 17:42:56','2020-08-08 17:42:56',1),
(10,13,'Nisha','Madhulika','2020-06-25','10 To 12 AM','Please come our home for the making Basundi.','2020-08-08 17:42:56','2020-08-08 17:42:56',1),
(11,14,'Usha','Shah','2020-07-26','8 To 10 AM','I need a sir for the my child.','2020-08-08 17:53:14','2020-08-08 17:53:14',1),
(12,28,'Dhruv','Prajapati','2020-07-29','4 To 6 PM','I have new wall where I want to do some painting.','2020-08-08 18:07:23','2020-08-08 18:07:23',1),
(13,23,'Rajvi','Tomar','2020-08-02','10 To 12 AM','My grandmother have a regularly dressing so pleas come and help us.','2020-08-08 18:23:34','2020-08-08 18:23:34',1),
(14,35,'Vallabh','Kadiya','2020-07-26','6 To 8 PM','I want to make one wall around my garden.','2020-08-08 18:29:22','2020-08-08 18:29:22',1),
(15,36,'Bhupendra','Joshi','2020-07-29','10 To 12 AM','I want to do new door at farmhouse.','2020-08-08 18:34:04','2020-08-08 18:34:04',1),
(16,25,'Jayesh','Patel','2020-08-03','10 To 12 AM','My washing machine is not working properly so please come and check it.','2020-08-09 20:18:24','2020-08-09 20:18:24',1),
(17,9,'Satish','Doshi','2020-08-04','4 To 6 PM','I want to go my home from office.','2020-08-12 14:06:31','2020-08-12 14:06:31',1),
(18,34,'Lali','Gupta','2020-08-13','10 To 12 AM','I want to done my beard at my home','2020-08-15 17:15:00','2020-08-15 17:15:00',1),
(19,13,'Nisha','Madhulika','2020-08-12','12 To 2 PM','I NEED A CHEF, PLEASE HELP ME....!','2020-08-16 13:06:11','2020-08-16 13:06:11',1),
(20,13,'Nisha','Madhulika','2020-08-10','10 To 12 AM','I need chef at my home.....!','2020-08-16 13:07:21','2020-08-16 13:07:21',1),
(21,11,'Rajan','Joshi','2020-08-16','10 To 12 AM','I need your help, Please help me.','2020-08-16 20:31:37','2020-08-16 20:31:37',1),
(22,1,'Rohan','Pandey','2020-08-15','12 To 2 PM','I need 10 liter milk at my home, Please deliver on time.','2020-08-16 20:44:03','2020-08-16 20:44:03',1),
(23,18,'Jay','Joshi','2020-08-15','4 To 6 PM','we need regular watchmen.','2020-08-16 20:45:13','2020-08-16 20:45:13',1),
(24,30,'Komal','Patel','2020-08-13','12 To 2 PM','My daughter is ill, help me.','2020-08-16 20:50:32','2020-08-16 20:50:32',1),
(25,5,'Rajiv','Mishra','2020-08-15','4 To 6 PM','My door is not close properly.','2020-08-16 20:55:05','2020-08-16 20:55:05',1),
(26,10,'Ranjan','Rami','2020-08-16','4 To 6 PM','I need your help my home, please come on time....','2020-08-17 09:23:52','2020-08-17 09:23:52',1),
(27,2,'Aman','Tomar','2020-08-19','10 To 12 AM','I want to go my office from my home','2020-08-17 11:20:32','2020-08-17 11:20:32',1);

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `c_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `l_name` varchar(25) DEFAULT NULL,
  `email` varchar(25) NOT NULL,
  `message` varchar(250) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

/*Table structure for table `contact_us_user` */

DROP TABLE IF EXISTS `contact_us_user`;

CREATE TABLE `contact_us_user` (
  `contact_us_id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  `mobile_no` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL,
  `isactive` varchar(1) DEFAULT NULL,
  `doi` datetime DEFAULT NULL,
  `dou` datetime DEFAULT NULL,
  PRIMARY KEY (`contact_us_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `contact_us_user` */

insert  into `contact_us_user`(`contact_us_id`,`name`,`email`,`mobile_no`,`message`,`isactive`,`doi`,`dou`) values 
(2,'Yash','yj@gmail.com','8855225588','Your service is good......!','1','2020-05-30 13:46:33','2020-05-30 13:46:33'),
(3,'Raj','raj@gmail.com','8855225588','It is useful for me, Thank You.','1','2020-05-30 14:07:27','2020-05-30 14:07:27'),
(4,'Jayesh','jayesh@gmail.com','9988775566','good','1','2020-05-30 14:15:07','2020-05-30 14:15:07'),
(5,'Mahesh','mahesh@gmail.com','9988776655','Nice one for today busy life','1','2020-05-30 14:28:58','2020-05-30 14:28:58'),
(6,'Dax Patel','daxpatel2021@gmail.com','9988776655','Nice one for today busy life, It is very useful','1','2020-05-30 14:32:20','2020-05-30 14:32:20'),
(7,'Yash Joshi','yj@gmail.com','9988776655','I want to join as a regular user, You have any specialization for me.....?','1','2020-05-31 13:46:14','2020-05-31 13:46:14'),
(8,'Mayank Agarval','mayank1@gmail.com','9988556644','I want to join in your site as a teacher, So, can you help me ?','1','2020-06-02 13:39:54','2020-06-02 13:39:54'),
(9,'Vaibhav Sathavara','vaibhav@gmail.com','8523589526','I want to become your regular user, so you give me any extra benefit....!','1','2020-06-18 14:20:44','2020-06-18 14:20:44'),
(10,'Onam Sharma','onam101@gmail.com','9988556633','Nice one for today busy life....','1','2020-06-18 15:19:29','2020-06-18 15:19:29'),
(11,'Viral Darji','viraldarji@gmail.com','9856325868','I WANT TO KNOW MORE ABOUT YOUR FIRM.','1','2020-08-16 13:04:49','2020-08-16 13:04:49'),
(12,'Parth Maniyar','parthm1999@gmail.com','9856325866','This is a good for today busy life ','1','2020-08-16 20:30:43','2020-08-16 20:30:43');

/*Table structure for table `contact_us_worker` */

DROP TABLE IF EXISTS `contact_us_worker`;

CREATE TABLE `contact_us_worker` (
  `contact_us_id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  `mobile_no` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL,
  `isactive` varchar(1) DEFAULT NULL,
  `doi` datetime DEFAULT NULL,
  `dou` datetime DEFAULT NULL,
  PRIMARY KEY (`contact_us_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `contact_us_worker` */

insert  into `contact_us_worker`(`contact_us_id`,`name`,`email`,`mobile_no`,`message`,`isactive`,`doi`,`dou`) values 
(1,'Aman Tomar','aman@gmail.com','9988775566','Are you doing well, I want to join....','1','2020-06-18 15:13:17','2020-06-18 15:13:17'),
(2,'Rushi','rushi101@gmail.com','9856325858','I need more work can you help me?','1','2020-08-16 20:40:03','2020-08-16 20:40:03'),
(3,'Parth ','parth1999@gmail.com','9856325258','It\'s good, and usefull for me','1','2020-08-16 20:40:58','2020-08-16 20:40:58'),
(4,'Shivani','shivani143@gmail.com','7536528565','Nice creation, Thank you','1','2020-08-16 20:41:50','2020-08-16 20:41:50'),
(5,'Roshan','roshanrj1@gmail.com','9563285584','Thank you, Good work....!','1','2020-08-16 20:43:13','2020-08-16 20:43:13');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedback_id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  `satisfaction` varchar(30) NOT NULL,
  `topic` varchar(90) NOT NULL,
  `message` varchar(300) NOT NULL,
  `is_active` int(1) NOT NULL,
  `doi` datetime NOT NULL,
  `dou` datetime NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`feedback_id`,`name`,`email`,`satisfaction`,`topic`,`message`,`is_active`,`doi`,`dou`) values 
(1,'daxpatel2021@gmail.com','Dax Patel','Very Good','Regarding Service','Your worker doing best with accuracy and clarity.',1,'2020-05-30 22:21:03','2020-05-30 22:21:03'),
(2,'raj@gmail.com','Raj Rajan','Very Good','Work','Nice work done by your worker',1,'2020-05-30 22:22:27','2020-05-30 22:22:27'),
(3,'daxpatel2021@gmail.com','Dax Patel','Very Good','Thanks','You think about us, Thank you....',1,'2020-05-31 13:44:46','2020-05-31 13:44:46'),
(4,'yj@gmail.com','Yash','Good','Thank you','Thank you Happiness At Door, You are taking care of us',1,'2020-06-02 13:44:44','2020-06-02 13:44:44'),
(5,'yj@gmail.com','Yash','Very Good','Regarding Timing','Your timing is perfect, I like it, Thank you.....);',1,'2020-08-12 14:29:03','2020-08-12 14:29:03'),
(6,'sureshbhargav@gmail.com','Suresh','Very Good','About Worker','Worker work properly....',1,'2020-08-16 14:03:30','2020-08-16 14:03:30'),
(7,'parthm1999@gmail.com','Parth','Very Good','Time','Time is perfect',1,'2020-08-16 20:32:22','2020-08-16 20:32:22');

/*Table structure for table `feedback_worker` */

DROP TABLE IF EXISTS `feedback_worker`;

CREATE TABLE `feedback_worker` (
  `feedback_id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  `satisfaction` varchar(30) NOT NULL,
  `topic` varchar(90) NOT NULL,
  `message` varchar(300) NOT NULL,
  `is_active` int(1) NOT NULL,
  `doi` datetime NOT NULL,
  `dou` datetime NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `feedback_worker` */

insert  into `feedback_worker`(`feedback_id`,`name`,`email`,`satisfaction`,`topic`,`message`,`is_active`,`doi`,`dou`) values 
(1,'aman@gmail.com','Aman','Very Good','Regarding My Work','I hope i am dooing well....!',1,'2020-06-15 23:53:19','2020-06-15 23:53:19'),
(2,'rajesh@gmail.com','Rajesh','Very Good','About User','User not give me a good response',1,'2020-06-15 23:58:09','2020-06-15 23:58:09'),
(3,'meetpatel1@gmail.com','Meet','Very Good','Regarding Payment','I complete my work and get payment, Thanks.... ',1,'2020-08-12 14:38:19','2020-08-12 14:38:19'),
(4,'rushin101@gmail.com','Rushi','Very Good','Payment','Payment is not mention, but it\'s very chief',1,'2020-08-16 20:46:53','2020-08-16 20:46:53');

/*Table structure for table `sub_admin` */

DROP TABLE IF EXISTS `sub_admin`;

CREATE TABLE `sub_admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_fname` varchar(20) NOT NULL,
  `a_lname` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `admin_area` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(25) DEFAULT NULL,
  `gender` int(1) NOT NULL,
  `profile` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirm_password` varchar(20) NOT NULL,
  `doi` datetime NOT NULL,
  `dou` datetime NOT NULL,
  `is_active` int(1) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `sub_admin` */

insert  into `sub_admin`(`a_id`,`a_fname`,`a_lname`,`email`,`phone_no`,`address`,`admin_area`,`city`,`state`,`country`,`gender`,`profile`,`password`,`confirm_password`,`doi`,`dou`,`is_active`) values 
(1,'Dax','Patel','daxpatel2021@gmail.com','9909369450','                                   		                                   		                                   		                                   		                                   		                  40, Bhargav Society, Opp. Adarsh School\r\n      ','Bhargav','Ahmedabad','Gujarat','India',1,'IMG20200122075628_1.jpg','123456789','123456789','2020-03-19 22:33:34','2020-03-19 22:33:34',1),
(2,'Disha','Chavda','dishar@gmail.com','9999900001','                                   		                                   		                                   		                                   		                                   		Hiravadi Cross Road, Gujarat, India.\r\n        ','Hiravadi','Ahmedabad','Gujarat','India',2,'02.jpg','12345678','12345678','2020-05-28 12:21:39','2020-05-28 12:21:39',1),
(3,'Roshan','Gohel','roshani@gmail.com','9236547829','                                   		                                   		                                   		1, National Apartment, Near Odhav Road, Ahmedabad.\r\n                                   	\r\n                                   	\r\n           ','Odhav','Ahmedabad','Gujarat','India',2,'03.jpg','123654124','123654124','2020-06-04 15:14:57','2020-06-04 15:14:57',1);

/*Table structure for table `user_registration` */

DROP TABLE IF EXISTS `user_registration`;

CREATE TABLE `user_registration` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(50) NOT NULL,
  `user_lname` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone_no` varchar(12) NOT NULL,
  `address` varchar(150) NOT NULL,
  `area_id` int(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `profile` varchar(250) NOT NULL,
  `password` varchar(15) NOT NULL,
  `confirm_password` varchar(15) NOT NULL,
  `doi` datetime NOT NULL,
  `dou` datetime NOT NULL,
  `isactive` int(1) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `area_id` (`area_id`),
  CONSTRAINT `user_registration_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `user_registration` */

insert  into `user_registration`(`user_id`,`user_fname`,`user_lname`,`email`,`phone_no`,`address`,`area_id`,`city`,`state`,`gender`,`profile`,`password`,`confirm_password`,`doi`,`dou`,`isactive`) values 
(1,'Dax','Patel','daxpatel@gmail.com','9999900000','Bhargav Society, Opp. Adarsh Schhol, AHmedabad.',52,'Ahmedabad','Gujarat',0,'IMG20200122075628_1.jpg','12345678','12345678','2020-05-29 13:56:31','2020-05-29 13:56:31',1),
(2,'Yash','Shah','yj1442@gmail.com','8528528526','Hiravadi, Ahmedabad, Gujarat, India.',54,'Ahmedabad','Gujarat',0,'profile.png','12345678','12345678','2020-05-30 13:30:36','2020-05-30 13:30:36',1),
(3,'Rohan','Shah','rohan1101@gmail.com','9568954862','31 Raj Arcade, Opp, Rajhans Cinema, Nikol - Naroda, Ahmedabad.',58,'Ahmedabad','Gujarat',0,'01.jpg','123654789','123654789','2020-06-04 14:35:13','2020-06-04 14:35:13',1),
(4,'Manisha','Patel','manishapatel@gmail.com','9852365478','34,Bhoomi Apartment, Hiravadi, Ahmedabad.',62,'Ahmedabad','Gujarat',1,'02.jpg','manisha123','manisha123','2020-06-04 14:40:46','2020-06-04 14:40:46',1),
(5,'Viral','Darji','viraldarji@gmail.com','9856852369','12, Bhargav Society, Opp. Adarsh School, Ahmedabad',52,'Ahmedabad','Gujarat',0,'05.jpg','74MZIM0Q','74MZIM0Q','2020-08-16 13:00:00','2020-08-16 13:00:00',1),
(6,'Suresh','Bhargav','sureshbhargav@gmail.com','9852147899','112, Bhargav Society, Opp. Adarsh School',52,'Ahmedabad','Gujarat',0,'fr-01.jpg','12345678','12345678','2020-08-16 14:00:47','2020-08-16 14:00:47',1),
(7,'Parth','Maniyar','parth1999@gmail.com','9856258958','A-201, Pashvabhumi Society, Parasnagara',32,'Ahmedabad','Gujarat',1,'05.jpg','12345678','12345678','2020-08-16 20:29:28','2020-08-16 20:29:28',1);

/*Table structure for table `worker_category` */

DROP TABLE IF EXISTS `worker_category`;

CREATE TABLE `worker_category` (
  `w_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `w_c_name` varchar(20) NOT NULL,
  `doi` datetime DEFAULT NULL,
  `dou` datetime DEFAULT NULL,
  `is_active` int(1) NOT NULL,
  PRIMARY KEY (`w_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `worker_category` */

insert  into `worker_category`(`w_cat_id`,`w_c_name`,`doi`,`dou`,`is_active`) values 
(6,'Chef','2020-03-13 12:15:15','2020-03-13 12:15:15',0),
(7,'Milk Man','2020-03-13 12:15:34','2020-03-13 12:15:34',0),
(9,'Milk Man','2020-03-13 16:55:02','2020-03-13 16:55:02',0),
(10,'Driver','2020-03-13 17:12:32','2020-03-13 17:12:32',1),
(11,'Carpainter','2020-03-13 17:12:43','2020-03-13 17:12:43',1),
(12,'Chef','2020-05-28 13:28:48','2020-05-28 13:28:48',1),
(13,'Teacher','2020-05-30 15:06:55','2020-05-30 15:06:55',1),
(14,'Milk Man','2020-05-30 15:07:44','2020-05-30 15:07:44',1),
(15,'House Keeper','2020-05-30 15:09:50','2020-05-30 15:09:50',1),
(16,'Gardener','2020-05-30 15:10:11','2020-05-30 15:10:11',1),
(17,'Watchman','2020-05-30 15:10:20','2020-05-30 15:10:20',1),
(18,'Washerman','2020-05-30 15:10:40','2020-05-30 15:10:40',1),
(19,'Nurse','2020-05-30 15:11:00','2020-05-30 15:11:00',1),
(20,'Plumber','2020-05-30 15:11:17','2020-05-30 15:11:17',1),
(21,'Electrician','2020-05-30 15:11:58','2020-05-30 15:11:58',1),
(22,'Painter','2020-05-30 15:12:22','2020-05-30 15:12:22',1),
(23,'Barber','2020-05-30 15:12:30','2020-05-30 15:12:30',1),
(24,'Mason','2020-05-30 15:12:43','2020-05-30 15:12:43',1),
(25,'Pet Keeper','2020-05-30 15:13:01','2020-05-30 15:13:01',1),
(26,'Blacksmith','2020-05-30 15:14:00','2020-05-30 15:14:00',1),
(27,'Goldsmith','2020-05-30 15:14:10','2020-05-30 15:14:10',1),
(28,'Computer Reparings','2020-08-16 20:58:07','2020-08-16 20:58:07',0);

/*Table structure for table `worker_registration` */

DROP TABLE IF EXISTS `worker_registration`;

CREATE TABLE `worker_registration` (
  `worker_id` int(11) NOT NULL AUTO_INCREMENT,
  `worker_fname` varchar(50) NOT NULL,
  `worker_lname` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone_no` varchar(12) NOT NULL,
  `adharcard` varchar(12) NOT NULL,
  `w_cat_id` int(11) NOT NULL,
  `address` varchar(150) NOT NULL,
  `area_id` int(11) NOT NULL,
  `city` varchar(60) NOT NULL,
  `state` varchar(60) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `profile` varchar(250) NOT NULL,
  `password` varchar(15) NOT NULL,
  `confirm_password` varchar(15) NOT NULL,
  `doi` datetime NOT NULL,
  `dou` datetime NOT NULL,
  `isactive` int(1) NOT NULL,
  PRIMARY KEY (`worker_id`),
  KEY `w_cat_id` (`w_cat_id`),
  KEY `area_id` (`area_id`),
  CONSTRAINT `worker_registration_ibfk_1` FOREIGN KEY (`w_cat_id`) REFERENCES `worker_category` (`w_cat_id`),
  CONSTRAINT `worker_registration_ibfk_2` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Data for the table `worker_registration` */

insert  into `worker_registration`(`worker_id`,`worker_fname`,`worker_lname`,`email`,`phone_no`,`adharcard`,`w_cat_id`,`address`,`area_id`,`city`,`state`,`gender`,`profile`,`password`,`confirm_password`,`doi`,`dou`,`isactive`) values 
(1,'Rohan','Pandey','rohan1012@gmail.com','8865120732','652304175910',14,'Near Rabari Colony, Bapunagar, Ahmedabad.',63,'Ahmedabad','Gujarat',0,'profile.png','67676767','67676767','2020-05-29 14:18:11','2020-05-29 14:18:11',1),
(2,'Aman','Tomar','daxpatel2021@gmail.com','8155015161','123456789012',10,'Near Memco Cross Road, Naroda Road, Ahmedabad.',50,'Ahmedabad','Gujarat',0,'fr-03.jpg','12345678','12345678','2020-05-29 14:18:11','2020-05-29 14:18:11',1),
(3,'Rajesh','Shah','rajesh@gmail.com','9988774455','123654789987',11,'Nikol, Gujarat, India.',58,'Ahmedabad','Gujarat',0,'profile.png','12345678','12345678','2020-05-31 13:13:21','2020-05-31 13:13:21',1),
(4,'Mansi','Soni','mansi1101@gmail.com','9636547891','321452541325',25,'1/10 Abham Ashray, Government colony, near last bus stop, bapunagar, ahmedabad',63,'Ahmedabd','Gujarat',1,'03.jpg','32145697','32145697','2020-06-04 14:17:43','2020-06-04 14:17:43',1),
(5,'Rajiv','Mishra','rajiv11@gmail.com','9902305680','879852462552',11,'Hiradas Society, Near Civil Hospital, Ahmedabad. ',46,'Ahmedabad','Gujarat',0,'01.jpg','123654789','123654789','2020-06-04 14:18:44','2020-06-04 14:18:44',1),
(6,'Rajvi','Gohel','rajvigohel9@gmail.com','8855624598','365214789521',13,'30/1 Rajan Apartment, nikol - naroda, ahmedabad.',58,'Ahmedabad','Gujarat',1,'03.jpg','raj123raj','raj123raj','2020-06-04 14:43:42','2020-06-04 14:43:42',1),
(7,'Manoj Kumar','Joshi','manoj101@gmail.com','9952576585','525845693258',10,'A-202, Raj Apartment, Opp. Torrent Power, Navarnagpura, Ahmedabad. ',46,'Ahmedabad','Gujarat',0,'coment-avatar-3.jpg','12565452','12565452','2020-07-03 10:26:29','2020-07-03 10:26:29',1),
(8,'Manish','Pandya','manish1@gamil.com','8155015723','253698745621',11,'near Sola civil hospital, Sola, Ahmedabad.',46,'Ahmedabad','Gujarat',0,'carpenter2.jpg','123588512','123588512','2020-07-04 11:26:19','2020-07-04 11:26:19',1),
(9,'Satish','Doshi','satishdoshi134@gmail.com','9856322589','147852369874',10,'Near Ghanpith Vidyhalaya, Nikol Naroda Road, Ahmedabad.',58,'Ahmedabad','Gujarat',0,'userimg.jpg','satish1234','satish1234','2020-07-04 11:28:33','2020-07-04 11:28:33',1),
(10,'Ranjan','Rami','rajan1011@gmail.com','9876123455','152369857456',15,'A-301 Government Colony, Near Defence Colony, Bhargav Road, Ahmedabad.',52,'Ahmedabad','Gujarat',1,'coment-avatar-2.jpg','ranjan1011','ranjan1011','2020-07-17 20:53:39','2020-07-17 20:53:39',1),
(11,'Rajan','Joshi','rajan.joshi@gmail.com','8965238526','125898745621',15,'101, Somnath Residency, Opp. Dipak Apartment, Bapunagr.',63,'Ahmedabad','Gujarat',0,'userimg.jpg','rajan1011','rajan1011','2020-07-17 20:58:40','2020-07-17 20:58:40',1),
(12,'Raju','Desai','rajud@gmail.com','7708534871','671259724901',14,'Near Rabari Colony, Bapunagar, Ahmedabad.',63,'Ahmedabad','Gujarat',0,'coment-avatar-3.jpg','raju@1234','raju@1234','2020-08-04 18:22:36','2020-08-04 18:22:36',1),
(13,'Nisha','Madhulika','nishamadhulika@yahoo.com','9904556799','450925964223',12,'A-301, Ashok Apartment, Sola, Ahmedabad.',46,'Ahmedabad','Gujarat',1,'fr-04.jpg','nisha@99','nisha@99','2020-08-05 17:27:58','2020-08-05 17:27:58',1),
(14,'Usha','Shah','us565@gmail.com','9813834272','429254752925',13,'c-202, Shubh Flat, near vadaj cross road, Vadaj.',39,'Ahmedabad','Gujarat',1,'fr-10.jpg','shah123456','shah123456','2020-08-05 17:53:12','2020-08-05 17:53:12',1),
(15,'Sona','Vyas','sona@gmail.com','9865258952','468257315257',12,'301, Mahadev Residency, Opp. S. R. School, Bhargav Road, Bhargav',52,'Ahmedabad','Gujarat',1,'4.jpg','12345678','12345678','2020-08-05 17:55:04','2020-08-05 17:55:04',1),
(16,'Mahdev','Desai','mahadev@gmail.com','9985652358','789652589562',13,'1, Shayam Bunglow, Opp, Shuvas Residency, Sola cross road, sola.',46,'Ahmedabad','Gujarat',0,'fr-05.jpg','mh1234321','mh1234321','2020-08-05 17:56:56','2020-08-05 17:56:56',1),
(17,'Sonal','Pandya','sonalpandya10@gmail.com','9952576585','525845693258',16,'202/23 Government Colony, Opp. Meganinagar Police Choki, Megahninagar.',19,'Ahmedabad','Gujarat',1,'fr-07.jpg','12345678','12345678','2020-08-05 18:13:36','2020-08-05 18:13:36',1),
(18,'Jay','Joshi','jj102@gmail.com','9563258969','953687453152',17,'A-101, Om Apartment, Bapunagar.',63,'Ahmedabad','Gujarat',0,'watchman6.jpg','jjj123jj','jjj123jj','2020-08-05 18:17:45','2020-08-05 18:17:45',1),
(19,'Sona','Patel','sonapatel1@gmail.com','9865895632','789654125878',16,'43, Shubh Tenamnet, Shayamal Cross Road, Shayamal.',26,'Ahmedabad','Gujarat',1,'fr-02.jpg','sona1234','sona1234','2020-08-05 18:20:19','2020-08-05 18:20:19',1),
(20,'Manoj','Sharma','manojs@gmail.com','9865235845','789652358214',17,'113, Ram Apartment, Girdhannagar.',33,'Ahmedabad','Gujarat',1,'fr-01.jpg','Manoj1234','Manoj1234','2020-08-05 18:23:30','2020-08-05 18:23:30',1),
(21,'Raju','Dhobi','rd1023@gmail.com','9856325865','258974563215',18,'21, Natraj Society, Opp. Adarsh School, Bhargav Road, Bhargav.',52,'Ahmedabad','Gujarat',0,'fr-03.jpg','rd123321','rd123321','2020-08-06 19:26:23','2020-08-06 19:26:23',1),
(22,'Jigar','Patil','jigs@gmail.com','9598562385','287461365989',25,'A-503, Adarsh Apartment, new Science City, Science City.',31,'Ahmedabad','Gujarat',0,'fr-02.jpg','jigas969','jigas969','2020-08-06 19:35:40','2020-08-06 19:35:40',1),
(23,'Rajvi','Tomar','rajt@gmail.com','9856325888','956825896556',19,'1, Abhishek Bunglow, Sola Road, Sola.',46,'Ahmedabad','Gujarat',1,'4.jpg','rt12345678','rt12345678','2020-08-06 19:45:09','2020-08-06 19:45:09',1),
(24,'Rajesh','Rajgor','rr11@gmail.com','9823569822','875489123488',18,'D-301, Raj Avenu, Shyamal Cross Road, Shyamal.',26,'Ahmedabad','Gujarat',0,'fr-06.jpg','987456321','987456321','2020-08-06 19:47:55','2020-08-06 19:47:55',1),
(25,'Jayesh','Patel','jjp1@gmail.com','9658965856','965822358923',21,'21, Bhargav Society, Opp. Adarsh School, Bhargav Road, Bhargav.',52,'Ahmedabad','Gujarat',0,'electrician2.jpg','jayesh123','jayesh123','2020-08-06 20:23:51','2020-08-06 20:23:51',1),
(26,'Jayesh','Patel','jjp1@gmail.com','9658965856','965822358923',21,'21, Bhargav Society, Opp. Adarsh School, Bhargav Road, Bhargav.',52,'Ahmedabad','Gujarat',0,'electrician2.jpg','jayesh123','jayesh123','2020-08-06 20:23:51','2020-08-06 20:23:51',1),
(27,'Avinash','Doshi','ad369@gmail.com','9658123573','125874698742',20,'91, Asharam Palace, Asharam Road.',28,'Ahmedabad','Gujarat',0,'Unique_Style.JPG','avinash1','avinash1','2020-08-06 20:25:50','2020-08-06 20:25:50',1),
(28,'Dhruv','Prajapati','dhruv@gmail.com','9625793582','358932599812',22,'21, Krishana nagar, Kuha.',25,'Ahmedabad','Gujarat',0,'userimg.jpg','dhruv193','dhruv193','2020-08-06 20:28:33','2020-08-06 20:28:33',1),
(29,'Mehul','Patel','mehul10@gmail.com','9963256989','236589985632',27,'C-101. K-10 Apartment, Nikol Naroda Road, Nikol.',58,'Ahmedabad','Gujarat',0,'profile.png','mehul121','mehul121','2020-08-06 20:31:19','2020-08-06 20:31:19',1),
(30,'Komal','Patel','kp1997@gmail.com','9896065899','982147536988',19,'38, Bhargav Society, Opp. Adarsh School, Bhargav Road, Bhargav.',52,'Ahmedabad','Gujarat',1,'coment-avatar-1.jpg','kp125896','kp125896','2020-08-06 20:35:35','2020-08-06 20:35:35',1),
(31,'Sanjay','Prajapati','sanjay@gmail.com','9865258964','123585258964',20,'20, Raj Aparatment, Sahibaug Road, Sahibaug.',35,'Ahmedabad','Gujarat',0,'coment-avatar-3.jpg','sanjay159','sanjay159','2020-08-06 20:39:48','2020-08-06 20:39:48',1),
(32,'Saumil','Desai','saumil@gmail.com','9685477893','985632147892',22,'58, Rajodhar Society, Off CG Road, NaranPura.',47,'Ahmedabad','Gujarat',0,'fr-01.jpg','95856985','95856985','2020-08-06 20:54:02','2020-08-06 20:54:02',1),
(33,'Umang','Soni','umangsoni@gmail.com','9658236985','125478963258',27,'31, Panakung Apartment. Megahninagar.',19,'Ahmedabad','Gujarat',0,'fr-03.jpg','umang190','umang190','2020-08-06 20:56:12','2020-08-06 20:56:12',1),
(34,'Lali','Gupta','lali2@gmail.com','9856985323','958623147892',23,'21, Pooja Avenue, Memnagar Road, Memnagar.',37,'Ahmedabad','Gujarat',0,'fr-05.jpg','96328741','96328741','2020-08-06 20:59:07','2020-08-06 20:59:07',1),
(35,'Vallabh','Kadiya','val@gmail.com','9856325896','525845693255',24,'39, Raj Apartemnt, Nana Chiloda.',43,'Ahmedabad','Gujarat',0,'coment-avatar-3.jpg','val123654','val123654','2020-08-06 21:04:18','2020-08-06 21:04:18',1),
(36,'Bhupendra','Joshi','bhupendra@gmail.com','9923658956','982698532589',26,'63, Mahalakhami Society, Hiravadi.',62,'Ahmedabad','Gujarat',0,'fr-03.jpg','98563214','98563214','2020-08-06 21:08:00','2020-08-06 21:08:00',1),
(37,'Hasmukh','Valand','hasmukhbhai@gmail.com','9658563258','896532147985',23,'101, Felrik Avenue, New Vadaj Road, Vadaj.',39,'Ahmedabad','Gujarat',0,'fr-01.jpg','hasmukhbhai','hasmukhbhai','2020-08-06 21:09:49','2020-08-06 21:09:49',1),
(38,'Rajubhai','Sharma','rajusharma124@gmail.com','9856325877','958236587412',24,'A-101, Rajesh Apartment, Vejalpur.',20,'Ahmedabad','Gujarat',0,'userimg.jpg','963258741','963258741','2020-08-06 21:11:40','2020-08-06 21:11:40',1),
(39,'Bhim','Rahevar','bhim1@gmail.com','9625412398','123685974562',26,'65, Vaheram Gov. Colony, Girhrnagar.',33,'Ahmedabad','Gujarat',0,'coment-avatar-3.jpg','98562147','98562147','2020-08-06 21:13:32','2020-08-06 21:13:32',1),
(40,'Rushi','Prajapati','rushi101@gmail.com','9856214785','426167495412',15,'12, Amar Apartment, Bhungdev Road',32,'Ahmedabad','Gujarat',0,'fr-03.jpg','T5O8W9EY','T5O8W9EY','2020-08-16 20:38:19','2020-08-16 20:38:19',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
