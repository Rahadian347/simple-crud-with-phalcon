CREATE DATABASE
IF NOT EXISTS test;
use test;

CREATE TABLE
IF NOT EXISTS `user` (
  `id_user` int
(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar
(100) NOT NULL,
  `email_user` varchar
(100) NOT NULL,
  PRIMARY KEY
(`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;