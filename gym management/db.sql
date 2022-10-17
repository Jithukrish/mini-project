/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 10.4.25-MariaDB : Database - gym management
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gym management` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `gym management`;

/*Table structure for table `allocation` */

DROP TABLE IF EXISTS `allocation`;

CREATE TABLE `allocation` (
  `alloc_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`alloc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `allocation` */

/*Table structure for table `attendance` */

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `attendance` varchar(10) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `attendance` */

/*Table structure for table `bodymeasurement` */

DROP TABLE IF EXISTS `bodymeasurement`;

CREATE TABLE `bodymeasurement` (
  `bd_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `shoulder` varchar(40) NOT NULL,
  `right_shoulder_to_elbow` varchar(40) NOT NULL,
  `right_elbow_to_hand` varchar(40) NOT NULL,
  `left_shoulder_to_elbow` varchar(40) NOT NULL,
  `left_elbow_to_hand` varchar(40) NOT NULL,
  `right_waist_to_knee` varchar(40) NOT NULL,
  `right_knee_to_foot` varchar(40) NOT NULL,
  `left_waist_to_knee` varchar(40) NOT NULL,
  `left_knee_to_foot` varchar(40) NOT NULL,
  PRIMARY KEY (`bd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `bodymeasurement` */

insert  into `bodymeasurement`(`bd_id`,`u_id`,`date`,`shoulder`,`right_shoulder_to_elbow`,`right_elbow_to_hand`,`left_shoulder_to_elbow`,`left_elbow_to_hand`,`right_waist_to_knee`,`right_knee_to_foot`,`left_waist_to_knee`,`left_knee_to_foot`) values 
(1,20,'2022-10-11','r','r','jn','lk','ui','po','jjj','hh','bb');

/*Table structure for table `diet plan` */

DROP TABLE IF EXISTS `diet plan`;

CREATE TABLE `diet plan` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `dietname` varchar(20) NOT NULL,
  `t_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `description` varbinary(100) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `diet plan` */

/*Table structure for table `equipments` */

DROP TABLE IF EXISTS `equipments`;

CREATE TABLE `equipments` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` blob NOT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `equipments` */

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `feedback` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `feedback` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `user type` varchar(10) NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;

/*Data for the table `login` */

insert  into `login`(`l_id`,`u_name`,`password`,`user type`) values 
(1,'','','user'),
(2,'','','user'),
(3,'123','123','user'),
(4,'456','456','user'),
(5,'123','123','user'),
(6,'234','234','user'),
(7,'768678','e456','user'),
(8,'dfsghj','dfgh','user'),
(9,'dfg','fghjk','user'),
(10,'www','eee','user'),
(11,'admin','pass','admin'),
(12,'trainer','trainer','trainer'),
(13,'333','333','user'),
(14,'5656','5656','trainer'),
(15,'5656','5656','trainer'),
(16,'5656','5656','trainer'),
(17,'5656','5656','trainer'),
(18,'5656','4545','trainer'),
(19,'5656','4545','trainer'),
(20,'456','4545','trainer'),
(21,'444','444','user'),
(22,'jkk','jkk','user'),
(23,'midhun','midhun','user'),
(24,'midhuna','midhuna','trainer'),
(25,'junaid','junaid','user'),
(26,'junaid','junaid','user'),
(27,'mmmm','mmmm','user'),
(28,'njn','njn','user'),
(29,'mih','mih','user'),
(30,'mm','mm','user'),
(31,'ggggg','ggggg','user'),
(32,'jjjj','jjjj','user'),
(33,'yui','yui','user'),
(34,'jkkkk','jkkkk','user'),
(35,'','','user'),
(36,'45678','45678','user'),
(37,'kkkk','kkkk','user'),
(38,'mik','mik','user'),
(39,'mik','mik','user'),
(40,'asdfghjkl','asdfghjk','user'),
(41,'zxcvbnm','zxcvbnm','user'),
(42,'asdfghjkl','asdfghjk','user'),
(43,'sanan','sanan','trainer'),
(44,'KRIPA','KRIPA','user'),
(45,'aswin','aswin','user'),
(46,'juniad','junaid','trainer'),
(47,'34567','4567','user'),
(48,'gfugug','jyytyt','trainer'),
(49,'jkjk','jkjk','user'),
(50,'and','and','trainer');

/*Table structure for table `membership` */

DROP TABLE IF EXISTS `membership`;

CREATE TABLE `membership` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `payment_status` varchar(40) NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `membership` */

insert  into `membership`(`m_id`,`u_id`,`date`,`payment_status`) values 
(1,22,'2022-10-12','pending'),
(2,11,'2022-10-15','pending'),
(3,11,'2022-10-15','pending');

/*Table structure for table `package` */

DROP TABLE IF EXISTS `package`;

CREATE TABLE `package` (
  `pack_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`pack_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `package` */

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `payment` */

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `l_id` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `ph_no` bigint(20) DEFAULT NULL,
  `height` varchar(11) NOT NULL,
  `weight` varchar(11) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `registration` */

insert  into `registration`(`u_id`,`l_id`,`username`,`place`,`gender`,`dob`,`email`,`ph_no`,`height`,`weight`) values 
(1,49,'jithu','vald','male','jhjjh','jhuhuh',9787,'34567','345678'),
(2,NULL,'aaaa',NULL,NULL,NULL,NULL,NULL,'','');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `request` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `request` */

insert  into `request`(`r_id`,`u_id`,`t_id`,`request`,`status`,`date`) values 
(1,49,0,'wdjfg','accepted','2022-10-08');

/*Table structure for table `review` */

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `re_id` int(11) NOT NULL AUTO_INCREMENT,
  `review` varchar(100) NOT NULL,
  `u_id` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`re_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `review` */

/*Table structure for table `schedule personal user` */

DROP TABLE IF EXISTS `schedule personal user`;

CREATE TABLE `schedule personal user` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `schedule personal user` */

/*Table structure for table `service` */

DROP TABLE IF EXISTS `service`;

CREATE TABLE `service` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(20) NOT NULL,
  `image` text NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `service` */

insert  into `service`(`s_id`,`s_name`,`image`,`description`) values 
(2,'cardiac ttraining','cardiac.jpg','Your cardiovascular fitness, also called your cardiorespiratory fitness (CRF), says a lot about your');

/*Table structure for table `trainer` */

DROP TABLE IF EXISTS `trainer`;

CREATE TABLE `trainer` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `l_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `place` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `ph_no` int(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `trainer` */

insert  into `trainer`(`t_id`,`l_id`,`name`,`place`,`gender`,`ph_no`,`email`,`dob`,`type`) values 
(1,15,'efgeef','wferf','male',2147483647,'jithu@gmail.com','0000-00-00','personal'),
(2,16,'efgeeftrt','wferf','male',2147483647,'jithu@gmail.com','0000-00-00','personal'),
(3,17,'efgeeftrt','wferf','male',2147483647,'jithu@gmail.com','0000-00-00','personal'),
(4,18,'ertertert','ertert','male',0,'ertert','0000-00-00','personal'),
(5,19,'ertertert','ertert','male',0,'ertert','0000-00-00','personal'),
(6,20,'ertertert','ertert','male',0,'ertert','0000-00-00','personal'),
(7,24,'midhuna','midhuna','male',2147483647,'mifu@gmail.com','0000-00-00','general trainer'),
(8,43,'sanan','kattooor','male',2147483647,'sanan@gmail.com','0000-00-00','Personal trainer'),
(9,46,'JUNAID','','male',956744689,'junaid@gamail.com','0000-00-00','Personal trainer'),
(10,48,'hgcggh','jnjk','male',0,'hgfyuy','0000-00-00','Personal trainer'),
(11,50,'anand','pondy','male',2147483647,'34567uhgvbhjk','0000-00-00','Personal trainer');

/*Table structure for table `work_hourper` */

DROP TABLE IF EXISTS `work_hourper`;

CREATE TABLE `work_hourper` (
  `wrk_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `day` varchar(40) NOT NULL,
  `from_time` varchar(40) NOT NULL,
  `to_time` varchar(40) NOT NULL,
  PRIMARY KEY (`wrk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `work_hourper` */

insert  into `work_hourper`(`wrk_id`,`u_id`,`day`,`from_time`,`to_time`) values 
(1,0,'friday','5AM','8PM'),
(2,0,'friday','5AM','8PM'),
(3,0,'','7am',''),
(4,0,'dfsdsf','7am','sf'),
(5,49,'12/12/12','23','25');

/*Table structure for table `workout gen` */

DROP TABLE IF EXISTS `workout gen`;

CREATE TABLE `workout gen` (
  `wrk_id` int(11) NOT NULL AUTO_INCREMENT,
  `workout` varchar(100) NOT NULL,
  `no of times` int(11) NOT NULL,
  PRIMARY KEY (`wrk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `workout gen` */

/*Table structure for table `workout hour` */

DROP TABLE IF EXISTS `workout hour`;

CREATE TABLE `workout hour` (
  `pwrk_id` int(11) NOT NULL AUTO_INCREMENT,
  `from_time` varchar(30) NOT NULL,
  `to_time` varchar(30) NOT NULL,
  `day` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`pwrk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `workout hour` */

/*Table structure for table `wrk_gen` */

DROP TABLE IF EXISTS `wrk_gen`;

CREATE TABLE `wrk_gen` (
  `wrk_hid` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(12) NOT NULL,
  `from_time` varchar(11) NOT NULL,
  `to_time` varchar(11) NOT NULL,
  PRIMARY KEY (`wrk_hid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*Data for the table `wrk_gen` */

insert  into `wrk_gen`(`wrk_hid`,`day`,`from_time`,`to_time`) values 
(6,'monday','5AM','8PM'),
(7,'tuesday','5AM','8PM'),
(8,'wednesday','5AM','8PM'),
(9,'wednesday','5AM','8PM'),
(10,'thursday','5AM','8PM'),
(11,'friday','5AM','8PM');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
