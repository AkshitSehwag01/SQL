drop database if exists gfg_courses;
create database gfg_courses;

use gfg_courses;

CREATE TABLE `users` (
  `user_id` varchar(20) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `country_code` varchar(3) NOT NULL,
  `phone` bigint NOT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `mail_id` (`mail_id`)
);
                                
CREATE TABLE `courses` (
  `course_id` varchar(5) NOT NULL,
  `mentor_name` varchar(50) DEFAULT NULL,
  `ta_name` varchar(50) DEFAULT NULL,
  `course_price` float NOT NULL,
  `course_mode` varchar(50) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
);
							
                            
CREATE TABLE `transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `course_id` varchar(5) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `marked_price` float NOT NULL,
  `discounted_price` float NOT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `course_id` (`course_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
);
