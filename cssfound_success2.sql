START TRANSACTION;






CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) NOT NULL,
  `Image` varchar(225) NOT NULL,
  `Content` text NOT NULL,
  `Author` varchar(225) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;



INSERT INTO `blog` (`id`, `title`, `Image`, `Content`, `Author`, `Date`, `view`, `video`) VALUES
(9, 'Care for Bharat', 'care for bharat.jpg', '<p>Care for bharat</p>\r\n', 'Harsh', '2021-01-10 08:15:22', '', ''),
(10, 'Education for Children', 'charity.jpg', '<p>Education for children</p>\r\n', 'Harsh', '2021-01-10 08:16:20', '', ''),
(11, 'Menstural hygene for Women', 'savewomen.jpg', '<p>Providing sanitary pads to women</p>\r\n', 'Harsh', '2021-01-10 08:17:31', '', ''),
(12, 'Education for women', 'womenschool.jpg', '<p>education for women</p>\r\n', 'Harsh', '2021-01-10 08:18:37', '', '');




CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(225) NOT NULL,
  `ses_id` varchar(225) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;



INSERT INTO `comment` (`id`, `user_email`, `ses_id`, `content`) VALUES
(1, 'rajat_roy91@yahoo.com', '9', 'hllo'),
(2, 'rajat_roy91@yahoo.com', '9', 'hello worled'),
(3, 'rajat_roy91@yahoo.com', '10', 'built');




CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;



INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `subject`, `message`, `date`) VALUES
(46, 'Rajat Khajuria', 'rajat_roy91@yahoo.com', '0414203386', 'rajat_roy91@yahoo.com', 'khajuria', '2021-01-23 11:25:02'),
(45, 'Rajat Khajuria', 'rajat_roy91@yahoo.com', '0414203386', 'rajat_roy91@yahoo.com', 'sommmmmammammamama', '2021-01-23 09:21:00'),
(44, 'Rajat Khajuria', 'rajat_roy91@yahoo.com', '0414203386', 'rajat_roy91@yahoo.com', 'hello sonali', '2021-01-22 14:12:10');




CREATE TABLE IF NOT EXISTS `futureevents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) NOT NULL,
  `Image` varchar(225) NOT NULL,
  `Content` text NOT NULL,
  `Author` varchar(225) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;



INSERT INTO `futureevents` (`id`, `title`, `Image`, `Content`, `Author`, `Date`, `view`) VALUES
(2, 'Digital Literacy', 'digitalliteracy.jpg', '<p>Digital Literacy for children</p>\r\n', 'Harsh', '2021-01-10 10:06:42', '');




CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `blog` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




CREATE TABLE IF NOT EXISTS `logginn` (
  `id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



INSERT INTO `logginn` (`id`, `username`, `password`) VALUES
(1, 'rajat', 'khajuria');




CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;



INSERT INTO `login` (`id`, `user_name`, `password`) VALUES
(2, 'harsh', '123456');




CREATE TABLE IF NOT EXISTS `pastevents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) NOT NULL,
  `Image` varchar(225) NOT NULL,
  `Content` text NOT NULL,
  `Author` varchar(225) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;



INSERT INTO `pastevents` (`id`, `title`, `Image`, `Content`, `Author`, `Date`, `view`) VALUES
(6, 'Home for old', 'homeforold.jpg', '<p>home for old</p>\r\n', 'Harsh', '2021-01-10 09:38:48', ''),
(7, 'food for animals', 'animals2.jpg', '<p>food for animals</p>\r\n', 'Harsh', '2021-01-10 09:39:58', ''),
(8, 'Ammas food', 'khanakitchen.jpg', '<p>Ammas Food</p>\r\n', 'Harsh', '2021-01-10 09:40:59', '');




CREATE TABLE IF NOT EXISTS `pwdreset` (
  `pwdResetID` int(11) NOT NULL,
  `pwdResetEmail` text,
  `pwdResetSelector` text,
  `pwdResetToken` longtext,
  `pwdResetExpires` text,
  PRIMARY KEY (`pwdResetID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




CREATE TABLE IF NOT EXISTS `subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(225) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;



INSERT INTO `subscriber` (`id`, `email`) VALUES
(2, 'khajuriasanchit5@gmail.com'),
(1, 'rajat_roy91@yahoo.com');



CREATE TABLE IF NOT EXISTS `user_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE IF NOT EXISTS `write_for` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;



INSERT INTO `write_for` (`id`, `name`, `email`, `title`, `message`) VALUES
(1, 'Rajat Khajuria', 'rajat_roy91@yahoo.com', '0414203386', 'khajuria');
COMMIT;

