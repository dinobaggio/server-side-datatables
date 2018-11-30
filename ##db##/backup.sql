-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.1.30-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win32
-- HeidiSQL Versi:               9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk dblatihan
CREATE DATABASE IF NOT EXISTS `dblatihan` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dblatihan`;

-- membuang struktur untuk table dblatihan.member
CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `status` enum('Super Admin','Admin','User') NOT NULL DEFAULT 'User',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Membuang data untuk tabel dblatihan.member: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`id`, `username`, `password`, `fullname`, `status`) VALUES
	(1, 'a', '$2b$10$xYXVu/0hZWzIpq11kEHhoeGL2rhwIR2tPjGews/iAO9kIUsNBNhXu', 'LEON', 'Super Admin');
INSERT INTO `member` (`id`, `username`, `password`, `fullname`, `status`) VALUES
	(2, 'b', '$2b$10$nOOetvquOU77x.anuaWgSO.YO/maTlsfOkL5S3S2CaV95Y/OMF8xS', 'NIDAS', 'Admin');
INSERT INTO `member` (`id`, `username`, `password`, `fullname`, `status`) VALUES
	(3, 'c', '$2b$10$7dxyQPzafG36VMwn8mo5.esjGgUgLBkmRWvJMIBV5wNjm9wubVKji', 'DION', 'User');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- membuang struktur untuk table dblatihan.student
CREATE TABLE IF NOT EXISTS `student` (
  `code` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `department` varchar(50) NOT NULL,
  `age` int(2) NOT NULL,
  `birthday` date NOT NULL,
  `salary` int(11) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Membuang data untuk tabel dblatihan.student: ~1.002 rows (lebih kurang)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('001', 'LEON', 'IMF', 27, '1991-08-08', 1500000);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('002', 'LEONIDAS', 'PBB', 28, '1991-07-29', 15000000);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('003', 'DION', 'CIS', 23, '1996-06-11', 9000000);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('1', 'Annalee', 'Research and Development', 1, '1984-10-26', 21500226);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('10', 'Angelina', 'Marketing', 10, '1990-01-26', 97465182);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('100', 'Ryon', 'Business Development', 100, '2017-03-25', 54212658);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('1000', 'Murdock', 'Services', 1000, '2001-06-15', 74351021);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('101', 'Gayle', 'Human Resources', 101, '2001-11-23', 80258179);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('102', 'Dorella', 'Training', 102, '2007-11-18', 80886476);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('103', 'Nikolaus', 'Sales', 103, '2018-06-04', 35247768);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('104', 'Freida', 'Sales', 104, '2014-07-12', 92368866);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('105', 'Jude', 'Marketing', 105, '1982-03-05', 55961022);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('106', 'Jameson', 'Engineering', 106, '1983-11-21', 42312344);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('107', 'Derrick', 'Engineering', 107, '1992-10-15', 22870701);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('108', 'Leia', 'Legal', 108, '2012-10-22', 72699577);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('109', 'Waly', 'Sales', 109, '1983-05-18', 63161181);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('11', 'Jermayne', 'Legal', 11, '1976-05-18', 1390802);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('110', 'Timi', 'Product Management', 110, '1991-05-01', 60076119);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('111', 'Robbie', 'Product Management', 111, '1989-03-13', 96530996);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('112', 'Palm', 'Sales', 112, '1995-08-07', 43720120);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('113', 'Silvio', 'Services', 113, '1970-04-29', 78040820);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('114', 'Jaymee', 'Human Resources', 114, '2009-01-11', 71400703);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('115', 'Roanne', 'Business Development', 115, '2005-04-09', 36901326);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('116', 'Elaina', 'Marketing', 116, '1972-03-12', 88364840);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('117', 'Butch', 'Legal', 117, '1972-03-14', 97900106);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('118', 'Jarred', 'Human Resources', 118, '2002-10-25', 34767452);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('119', 'Willa', 'Research and Development', 119, '1982-11-23', 80639728);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('12', 'Gus', 'Services', 12, '1977-11-07', 51420012);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('120', 'Ulla', 'Research and Development', 120, '1999-08-28', 78513685);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('121', 'Alex', 'Research and Development', 121, '2013-12-02', 3111151);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('122', 'Darcey', 'Legal', 122, '1997-04-26', 84831937);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('123', 'Raine', 'Engineering', 123, '1970-08-13', 10716752);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('124', 'Archaimbaud', 'Research and Development', 124, '2004-02-15', 58854479);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('125', 'Shay', 'Research and Development', 125, '2000-01-25', 26120942);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('126', 'Ailina', 'Product Management', 126, '1990-11-17', 69360435);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('127', 'Bobby', 'Services', 127, '1991-01-29', 62509766);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('128', 'Amalia', 'Accounting', 128, '1983-12-09', 98700799);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('129', 'Jaimie', 'Engineering', 129, '2000-01-26', 27066972);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('13', 'Bernadette', 'Support', 13, '2008-12-28', 64021863);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('130', 'Park', 'Legal', 130, '1984-12-27', 7018621);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('131', 'Merla', 'Accounting', 131, '1999-07-18', 19843431);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('132', 'Christoper', 'Support', 132, '1986-08-28', 35141511);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('133', 'Roch', 'Business Development', 133, '1985-04-07', 77716537);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('134', 'Mala', 'Research and Development', 134, '1978-11-09', 70044106);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('135', 'Christie', 'Product Management', 135, '2011-01-27', 54333567);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('136', 'Tobin', 'Services', 136, '1979-02-26', 80116470);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('137', 'Kerr', 'Human Resources', 137, '2006-05-31', 40577871);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('138', 'Bambi', 'Product Management', 138, '1988-11-24', 76529801);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('139', 'Nicki', 'Business Development', 139, '1983-10-14', 91863130);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('14', 'Petrina', 'Engineering', 14, '1997-08-07', 76167406);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('140', 'Melvin', 'Support', 140, '1975-02-07', 17392773);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('141', 'Drud', 'Human Resources', 141, '1984-11-11', 37814277);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('142', 'Travis', 'Research and Development', 142, '1991-01-28', 17923347);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('143', 'Tiffy', 'Product Management', 143, '1999-05-19', 56057546);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('144', 'Tommi', 'Human Resources', 144, '2005-07-27', 13942484);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('145', 'Elisabetta', 'Product Management', 145, '1992-08-05', 78989712);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('146', 'Anetta', 'Services', 146, '1978-04-11', 78440399);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('147', 'Reade', 'Research and Development', 147, '1978-03-18', 41811366);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('148', 'Parker', 'Business Development', 148, '1982-07-18', 40093907);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('149', 'Adelbert', 'Accounting', 149, '1980-06-30', 92354986);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('15', 'Martino', 'Accounting', 15, '1995-11-07', 61308444);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('150', 'Cinderella', 'Accounting', 150, '1977-03-20', 87953247);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('151', 'Loraine', 'Legal', 151, '1982-01-15', 14727399);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('152', 'Priscella', 'Research and Development', 152, '1992-01-21', 57206266);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('153', 'Madelon', 'Accounting', 153, '1983-12-17', 64828590);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('154', 'Harman', 'Sales', 154, '1975-11-14', 44339735);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('155', 'Jessamyn', 'Services', 155, '1994-03-06', 5176666);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('156', 'Myles', 'Services', 156, '1972-06-08', 41004009);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('157', 'Chickie', 'Engineering', 157, '2001-08-10', 55628201);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('158', 'Rufus', 'Services', 158, '2017-05-29', 49042136);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('159', 'Cyndi', 'Legal', 159, '2015-12-29', 35720913);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('16', 'Dermot', 'Product Management', 16, '1997-08-04', 86347249);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('160', 'Deerdre', 'Research and Development', 160, '2018-05-04', 65448746);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('161', 'Saraann', 'Research and Development', 161, '1994-07-15', 20480990);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('162', 'Mirilla', 'Sales', 162, '2007-03-07', 40647640);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('163', 'Odey', 'Marketing', 163, '1973-07-08', 47505892);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('164', 'Siobhan', 'Marketing', 164, '1971-03-01', 90990144);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('165', 'Burke', 'Marketing', 165, '2002-11-23', 1470365);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('166', 'Finlay', 'Legal', 166, '1971-06-15', 62846293);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('167', 'Portie', 'Sales', 167, '2017-09-30', 6552937);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('168', 'Glennis', 'Services', 168, '1979-05-11', 93417226);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('169', 'Mallory', 'Product Management', 169, '2013-05-09', 78137863);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('17', 'Carolann', 'Marketing', 17, '1985-01-14', 30702939);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('170', 'Cristy', 'Business Development', 170, '2006-01-09', 78156812);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('171', 'Roger', 'Product Management', 171, '1990-07-28', 4780055);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('172', 'Nannie', 'Sales', 172, '1976-10-20', 79590568);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('173', 'Nadia', 'Product Management', 173, '1990-10-11', 31649354);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('174', 'Conni', 'Legal', 174, '1995-05-28', 11299943);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('175', 'Peta', 'Human Resources', 175, '1977-09-09', 64633630);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('176', 'Deirdre', 'Engineering', 176, '1971-02-18', 55180063);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('177', 'Terrill', 'Services', 177, '1986-05-15', 65352060);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('178', 'Pennie', 'Product Management', 178, '2013-03-16', 71240167);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('179', 'Evin', 'Accounting', 179, '1991-04-20', 30458798);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('18', 'Gusti', 'Product Management', 18, '1986-10-22', 27957986);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('180', 'Brietta', 'Accounting', 180, '2003-06-10', 94037559);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('181', 'Zola', 'Sales', 181, '2015-10-06', 62067756);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('182', 'Vonni', 'Legal', 182, '2007-08-04', 52919669);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('183', 'Eugenio', 'Business Development', 183, '1993-01-10', 68850455);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('184', 'Benni', 'Legal', 184, '1982-07-06', 59980038);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('185', 'Urbano', 'Product Management', 185, '1984-09-08', 84391747);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('186', 'Sharlene', 'Support', 186, '1982-11-13', 66881343);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('187', 'Elizabeth', 'Research and Development', 187, '2011-03-12', 89119813);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('188', 'Susanne', 'Engineering', 188, '2007-10-17', 44580722);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('189', 'Constancy', 'Training', 189, '1983-10-25', 73927284);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('19', 'Gerti', 'Services', 19, '1970-02-10', 20281408);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('190', 'Margo', 'Training', 190, '2005-03-15', 47937843);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('191', 'Avie', 'Marketing', 191, '2001-09-03', 18182770);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('192', 'Talya', 'Sales', 192, '2007-12-30', 18428156);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('193', 'Arleta', 'Accounting', 193, '1978-01-29', 52533213);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('194', 'Gerrard', 'Services', 194, '1991-10-08', 74178816);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('195', 'Liz', 'Marketing', 195, '1979-08-14', 58825754);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('196', 'Dane', 'Research and Development', 196, '1981-09-14', 26231414);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('197', 'Monah', 'Human Resources', 197, '2010-03-22', 63634389);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('198', 'Bartie', 'Training', 198, '1971-03-21', 37792000);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('199', 'Brnaba', 'Accounting', 199, '2003-04-08', 80483518);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('2', 'Maridel', 'Human Resources', 2, '2013-06-26', 28763469);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('20', 'Roth', 'Training', 20, '1996-02-17', 56128174);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('200', 'Jeri', 'Sales', 200, '1991-05-01', 13208834);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('201', 'Gavra', 'Product Management', 201, '1986-08-20', 8981512);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('202', 'Mollee', 'Legal', 202, '1986-08-10', 58933076);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('203', 'Gwyneth', 'Research and Development', 203, '1989-01-09', 6548540);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('204', 'Angelique', 'Services', 204, '1981-02-14', 49827681);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('205', 'Mikael', 'Accounting', 205, '2014-09-04', 75141922);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('206', 'Marianna', 'Services', 206, '1985-02-23', 64520134);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('207', 'Curry', 'Engineering', 207, '2018-04-19', 39347216);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('208', 'Brena', 'Engineering', 208, '1972-12-12', 33756288);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('209', 'Julianna', 'Product Management', 209, '1992-09-05', 48253109);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('21', 'Barbabas', 'Business Development', 21, '2010-08-11', 12478705);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('210', 'Raoul', 'Support', 210, '2015-03-03', 3926832);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('211', 'Natalina', 'Sales', 211, '1988-07-13', 50418108);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('212', 'Tamera', 'Services', 212, '2010-11-03', 65564671);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('213', 'Myrna', 'Sales', 213, '2000-05-16', 29342479);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('214', 'Iago', 'Sales', 214, '2013-10-09', 86116233);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('215', 'Ben', 'Engineering', 215, '1998-06-17', 7564860);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('216', 'Dana', 'Product Management', 216, '1973-08-06', 86560821);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('217', 'Rancell', 'Accounting', 217, '1998-02-06', 59782453);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('218', 'Rosy', 'Services', 218, '2017-09-07', 61365421);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('219', 'Natala', 'Marketing', 219, '1976-02-28', 79017315);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('22', 'Cobbie', 'Legal', 22, '2006-11-13', 1787208);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('220', 'Sammy', 'Product Management', 220, '1982-04-03', 73245599);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('221', 'Milicent', 'Legal', 221, '1974-02-08', 25638672);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('222', 'Giorgi', 'Research and Development', 222, '1987-08-02', 79748783);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('223', 'Agustin', 'Product Management', 223, '2002-12-23', 45677405);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('224', 'Russ', 'Services', 224, '1978-04-20', 7840632);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('225', 'Brand', 'Support', 225, '2016-08-13', 67900530);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('226', 'Frieda', 'Human Resources', 226, '2001-11-02', 1288206);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('227', 'Aldous', 'Legal', 227, '1971-03-06', 97346011);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('228', 'Ingeborg', 'Accounting', 228, '2000-11-05', 64451864);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('229', 'Tildie', 'Marketing', 229, '2002-02-25', 36783871);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('23', 'Brear', 'Product Management', 23, '1977-09-20', 65374785);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('230', 'Sandie', 'Support', 230, '1978-07-04', 22152906);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('231', 'Vanya', 'Engineering', 231, '2001-12-15', 55815312);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('232', 'Riannon', 'Business Development', 232, '1995-03-04', 17042287);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('233', 'Clifford', 'Sales', 233, '2008-03-08', 24158888);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('234', 'Edith', 'Engineering', 234, '1991-07-12', 97887180);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('235', 'Bette-ann', 'Support', 235, '1978-07-23', 13256454);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('236', 'Mirilla', 'Human Resources', 236, '1970-07-05', 37790243);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('237', 'Ive', 'Services', 237, '1978-02-12', 65466922);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('238', 'Berne', 'Engineering', 238, '2012-12-17', 9945319);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('239', 'Sheba', 'Research and Development', 239, '2007-09-17', 55433126);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('24', 'Rafa', 'Sales', 24, '1976-03-01', 27855296);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('240', 'Lea', 'Services', 240, '1976-11-06', 56114638);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('241', 'Ned', 'Research and Development', 241, '1981-05-02', 9435907);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('242', 'Rania', 'Marketing', 242, '1990-05-15', 89511284);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('243', 'Ozzie', 'Accounting', 243, '2011-08-03', 80004029);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('244', 'Marne', 'Legal', 244, '1978-01-28', 60024020);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('245', 'Ddene', 'Accounting', 245, '1993-12-29', 15736766);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('246', 'Pepito', 'Marketing', 246, '1985-10-27', 25563501);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('247', 'Morissa', 'Support', 247, '1973-09-30', 73584528);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('248', 'Shirlene', 'Training', 248, '2004-01-06', 11935660);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('249', 'Yance', 'Services', 249, '1977-09-11', 44883093);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('25', 'Stacy', 'Business Development', 25, '2005-04-02', 42489882);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('250', 'Goldy', 'Business Development', 250, '2012-01-15', 72479029);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('251', 'Penelope', 'Training', 251, '1974-08-08', 34120191);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('252', 'Kaitlyn', 'Accounting', 252, '2002-03-10', 31032706);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('253', 'Ole', 'Business Development', 253, '1976-02-19', 58507435);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('254', 'Ferdinande', 'Sales', 254, '1981-08-18', 22819321);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('255', 'Leelah', 'Legal', 255, '1989-06-11', 55163890);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('256', 'Brittaney', 'Engineering', 256, '1979-01-22', 66079256);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('257', 'Adaline', 'Sales', 257, '1991-09-22', 96782528);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('258', 'Caro', 'Services', 258, '1989-08-08', 77387344);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('259', 'Sid', 'Product Management', 259, '1994-07-30', 67649871);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('26', 'Bud', 'Business Development', 26, '1976-04-19', 13015341);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('260', 'Luise', 'Support', 260, '2017-08-06', 4815845);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('261', 'Seka', 'Product Management', 261, '1973-10-26', 74232862);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('262', 'Ketti', 'Research and Development', 262, '2004-01-19', 79748630);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('263', 'Anna-diana', 'Marketing', 263, '2010-08-13', 30127990);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('264', 'Starla', 'Sales', 264, '1999-06-16', 82989169);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('265', 'Dahlia', 'Accounting', 265, '1990-03-20', 43961455);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('266', 'Chuck', 'Engineering', 266, '1974-01-06', 84378907);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('267', 'Stinky', 'Product Management', 267, '2004-09-27', 15815836);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('268', 'Alister', 'Human Resources', 268, '1993-07-20', 62995523);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('269', 'Iris', 'Accounting', 269, '1984-02-25', 44633599);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('27', 'Jessy', 'Support', 27, '2000-04-26', 70819508);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('270', 'King', 'Accounting', 270, '2011-10-31', 71857535);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('271', 'Lee', 'Product Management', 271, '1997-03-17', 93586469);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('272', 'Deedee', 'Marketing', 272, '2004-08-31', 98317807);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('273', 'Zahara', 'Human Resources', 273, '1987-03-20', 60666930);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('274', 'Hadleigh', 'Engineering', 274, '1978-05-05', 45542672);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('275', 'Erskine', 'Product Management', 275, '1974-05-22', 34800059);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('276', 'Rayshell', 'Human Resources', 276, '2018-02-22', 75998313);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('277', 'Broderick', 'Services', 277, '2003-08-26', 58422420);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('278', 'Marti', 'Human Resources', 278, '2008-09-22', 5356920);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('279', 'Hinze', 'Marketing', 279, '2008-09-26', 94327298);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('28', 'Lulita', 'Sales', 28, '2017-03-13', 87266213);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('280', 'Farlie', 'Accounting', 280, '2002-09-06', 17919777);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('281', 'Marys', 'Marketing', 281, '2002-07-18', 20924717);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('282', 'Esther', 'Human Resources', 282, '1999-11-05', 34223660);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('283', 'Savina', 'Engineering', 283, '1989-07-23', 98148879);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('284', 'Karlen', 'Human Resources', 284, '1983-09-10', 71588426);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('285', 'Antonie', 'Training', 285, '1989-09-01', 65276617);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('286', 'Mahalia', 'Business Development', 286, '2011-05-11', 55022578);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('287', 'Marielle', 'Support', 287, '1970-03-24', 69161150);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('288', 'Maurizio', 'Product Management', 288, '2001-02-15', 41472020);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('289', 'Odessa', 'Business Development', 289, '2008-08-13', 69005777);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('29', 'Lynde', 'Training', 29, '1996-04-26', 19463465);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('290', 'Philly', 'Support', 290, '1982-10-24', 2031577);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('291', 'Norbie', 'Legal', 291, '1991-09-09', 11158089);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('292', 'Hal', 'Business Development', 292, '2016-08-10', 17801598);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('293', 'Janka', 'Research and Development', 293, '1972-08-21', 42020989);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('294', 'Lethia', 'Support', 294, '2005-04-09', 32441049);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('295', 'Jaimie', 'Human Resources', 295, '2010-07-26', 64732923);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('296', 'Brenda', 'Accounting', 296, '1983-07-27', 55543622);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('297', 'Goldie', 'Human Resources', 297, '1977-07-23', 69498389);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('298', 'Dacia', 'Support', 298, '1986-04-22', 60572326);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('299', 'Tildie', 'Accounting', 299, '1974-08-14', 41184705);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('3', 'Michel', 'Training', 3, '1976-08-20', 72391198);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('30', 'Codi', 'Business Development', 30, '1970-06-12', 53674834);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('300', 'Elysha', 'Accounting', 300, '1984-09-28', 6505998);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('301', 'Gianina', 'Research and Development', 301, '1996-12-31', 18414886);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('302', 'Guglielmo', 'Services', 302, '1976-06-23', 34158778);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('303', 'Christen', 'Marketing', 303, '2013-03-19', 41249385);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('304', 'Marieann', 'Business Development', 304, '1987-12-21', 94059956);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('305', 'Ariel', 'Legal', 305, '1981-08-15', 17764578);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('306', 'Catriona', 'Sales', 306, '1988-02-16', 35882145);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('307', 'Astrix', 'Product Management', 307, '1981-01-06', 55942609);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('308', 'Dorita', 'Research and Development', 308, '2000-10-15', 27299449);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('309', 'Michele', 'Services', 309, '1992-08-03', 92439584);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('31', 'Cully', 'Engineering', 31, '1991-10-18', 30501182);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('310', 'Clevey', 'Support', 310, '1977-05-16', 12097095);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('311', 'Crawford', 'Legal', 311, '2013-10-26', 40443323);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('312', 'Mildred', 'Research and Development', 312, '2007-08-01', 64494975);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('313', 'Faye', 'Training', 313, '1988-12-06', 49378963);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('314', 'Eldridge', 'Human Resources', 314, '1986-01-15', 14872232);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('315', 'Leela', 'Research and Development', 315, '1982-10-06', 12427475);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('316', 'Aksel', 'Support', 316, '1972-09-21', 86115563);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('317', 'Deirdre', 'Product Management', 317, '1997-12-19', 82149581);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('318', 'Sonnie', 'Accounting', 318, '1980-09-06', 56695774);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('319', 'Cookie', 'Support', 319, '1974-01-24', 56990722);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('32', 'Nickie', 'Support', 32, '1980-08-03', 13029184);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('320', 'Yolanda', 'Marketing', 320, '1974-11-21', 42233676);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('321', 'Nadeen', 'Legal', 321, '1973-02-23', 39153565);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('322', 'Wittie', 'Business Development', 322, '2015-12-22', 54273614);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('323', 'Hali', 'Sales', 323, '1997-06-05', 30901438);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('324', 'Chadd', 'Product Management', 324, '1989-02-04', 53999852);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('325', 'Ruggiero', 'Services', 325, '2003-07-15', 36699191);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('326', 'Avie', 'Training', 326, '1977-10-05', 51697335);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('327', 'Guillemette', 'Business Development', 327, '1973-03-05', 57344293);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('328', 'Claybourne', 'Sales', 328, '2003-05-19', 61693957);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('329', 'Melany', 'Sales', 329, '1987-10-04', 33552158);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('33', 'Caty', 'Research and Development', 33, '1993-11-06', 6025326);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('330', 'Don', 'Legal', 330, '2010-04-10', 52091907);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('331', 'Kaitlin', 'Marketing', 331, '1992-08-03', 94766662);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('332', 'Katee', 'Marketing', 332, '1992-02-20', 80227418);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('333', 'Andee', 'Product Management', 333, '1976-11-16', 95159803);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('334', 'Reuben', 'Product Management', 334, '1977-03-13', 55546608);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('335', 'Benton', 'Support', 335, '1977-12-29', 46697050);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('336', 'Dolley', 'Training', 336, '1975-11-12', 47393769);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('337', 'Aaren', 'Accounting', 337, '1971-04-21', 59571464);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('338', 'Emlynn', 'Engineering', 338, '1997-06-28', 6842632);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('339', 'Beulah', 'Legal', 339, '2001-07-15', 55253186);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('34', 'Marven', 'Business Development', 34, '2011-01-13', 26251545);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('340', 'Jesus', 'Engineering', 340, '2012-01-25', 27011749);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('341', 'Aubrette', 'Accounting', 341, '2009-03-14', 37524561);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('342', 'Vern', 'Services', 342, '1982-02-08', 94238893);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('343', 'Milty', 'Marketing', 343, '1990-08-07', 52377128);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('344', 'Amby', 'Legal', 344, '1981-12-14', 89033063);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('345', 'Erina', 'Product Management', 345, '2010-12-22', 46338512);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('346', 'Brunhilda', 'Support', 346, '2001-02-05', 26198036);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('347', 'Grete', 'Accounting', 347, '1988-10-07', 70885465);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('348', 'Tina', 'Marketing', 348, '1975-08-18', 46110441);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('349', 'Cassi', 'Engineering', 349, '1999-03-17', 39342521);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('35', 'Sheila', 'Human Resources', 35, '2018-02-08', 12917994);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('350', 'Hali', 'Engineering', 350, '1994-01-02', 39571688);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('351', 'Dania', 'Research and Development', 351, '1990-04-17', 41442175);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('352', 'Korey', 'Training', 352, '1971-01-25', 63744337);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('353', 'Winona', 'Legal', 353, '1977-11-03', 11693892);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('354', 'Arlee', 'Research and Development', 354, '2009-07-05', 66426102);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('355', 'Angy', 'Training', 355, '2009-05-12', 48172624);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('356', 'Shanta', 'Product Management', 356, '2016-01-31', 66980119);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('357', 'Leonore', 'Training', 357, '1994-03-11', 33788291);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('358', 'Andrea', 'Engineering', 358, '1996-12-29', 34924832);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('359', 'Garfield', 'Sales', 359, '1977-05-03', 89809671);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('36', 'Gay', 'Legal', 36, '1982-06-04', 48994822);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('360', 'Fransisco', 'Product Management', 360, '1987-01-13', 30954920);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('361', 'Katha', 'Human Resources', 361, '1973-06-05', 31814240);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('362', 'Chevy', 'Engineering', 362, '2000-01-22', 83133565);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('363', 'Evered', 'Research and Development', 363, '1998-01-09', 78242528);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('364', 'Tammy', 'Engineering', 364, '2014-01-04', 61795831);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('365', 'Agnesse', 'Product Management', 365, '2000-01-21', 82398021);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('366', 'Margarete', 'Product Management', 366, '1977-02-11', 47633562);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('367', 'Rudolfo', 'Engineering', 367, '1986-05-29', 8127534);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('368', 'Paco', 'Services', 368, '2007-03-01', 77977742);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('369', 'Eddy', 'Business Development', 369, '1982-07-08', 18434146);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('37', 'Mendel', 'Research and Development', 37, '1993-05-20', 88907568);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('370', 'Daron', 'Sales', 370, '1984-04-25', 4104606);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('371', 'Daisi', 'Services', 371, '1989-05-09', 72635432);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('372', 'Garey', 'Support', 372, '1993-04-03', 17377535);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('373', 'Raphaela', 'Training', 373, '1980-08-27', 87793881);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('374', 'Rodd', 'Legal', 374, '1983-12-26', 45226990);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('375', 'Reyna', 'Research and Development', 375, '1997-01-25', 51170842);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('376', 'Twyla', 'Business Development', 376, '2017-01-30', 81159212);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('377', 'Dorey', 'Business Development', 377, '2017-03-11', 22295823);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('378', 'Inna', 'Business Development', 378, '1994-10-24', 99586011);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('379', 'Juieta', 'Support', 379, '1991-07-22', 36977276);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('38', 'Ancell', 'Engineering', 38, '2003-01-08', 72278348);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('380', 'Amos', 'Product Management', 380, '1994-08-23', 65523476);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('381', 'Twyla', 'Sales', 381, '2001-10-10', 36780329);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('382', 'Purcell', 'Product Management', 382, '1985-05-26', 50464517);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('383', 'Case', 'Research and Development', 383, '1985-03-26', 45213845);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('384', 'Gerrie', 'Product Management', 384, '2016-10-09', 92660852);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('385', 'Reid', 'Business Development', 385, '1976-05-15', 40913249);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('386', 'Mayer', 'Legal', 386, '2002-09-24', 64470601);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('387', 'Wendy', 'Business Development', 387, '1979-01-15', 89137299);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('388', 'Cordelie', 'Product Management', 388, '1989-02-16', 78045404);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('389', 'Ronnie', 'Human Resources', 389, '1978-01-01', 52118917);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('39', 'Rickard', 'Product Management', 39, '1987-03-23', 98551515);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('390', 'Janaya', 'Human Resources', 390, '1984-02-02', 94359514);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('391', 'Brittani', 'Accounting', 391, '1996-04-18', 4639141);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('392', 'Wanda', 'Research and Development', 392, '2018-07-31', 55140951);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('393', 'Findlay', 'Marketing', 393, '2000-12-27', 77526254);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('394', 'Hilario', 'Research and Development', 394, '1988-11-26', 75516968);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('395', 'Pattie', 'Business Development', 395, '2010-02-18', 27756578);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('396', 'Chelsae', 'Human Resources', 396, '2008-09-30', 30170297);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('397', 'Cordell', 'Business Development', 397, '1977-09-07', 97537984);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('398', 'Samson', 'Engineering', 398, '1971-04-19', 53913097);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('399', 'Chrissy', 'Marketing', 399, '1978-04-11', 69541068);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('4', 'Gertie', 'Business Development', 4, '1987-10-13', 50198781);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('40', 'Lettie', 'Accounting', 40, '1988-01-12', 82446015);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('400', 'Charlean', 'Services', 400, '1988-11-25', 62721810);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('401', 'Judon', 'Marketing', 401, '1991-06-13', 31048925);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('402', 'Trista', 'Support', 402, '1984-11-28', 93984689);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('403', 'Layton', 'Product Management', 403, '1970-10-12', 8610531);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('404', 'Jacky', 'Product Management', 404, '1970-12-30', 59769303);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('405', 'Hatti', 'Engineering', 405, '1991-04-27', 78973944);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('406', 'Merci', 'Human Resources', 406, '1980-04-20', 36534342);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('407', 'Carey', 'Product Management', 407, '1977-11-24', 9596963);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('408', 'Rafaellle', 'Services', 408, '1999-09-28', 97821962);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('409', 'Gard', 'Accounting', 409, '1974-04-14', 54847872);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('41', 'Caressa', 'Support', 41, '2003-03-18', 79797706);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('410', 'Nial', 'Business Development', 410, '1985-03-11', 31355288);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('411', 'Judi', 'Business Development', 411, '1974-02-12', 78626812);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('412', 'Linn', 'Sales', 412, '2002-08-26', 17657442);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('413', 'Quintilla', 'Human Resources', 413, '1998-12-01', 90501175);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('414', 'Elisa', 'Sales', 414, '2002-12-06', 28774349);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('415', 'Mallory', 'Accounting', 415, '1970-06-11', 35475736);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('416', 'Jack', 'Accounting', 416, '2012-07-24', 9869877);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('417', 'Vallie', 'Training', 417, '2011-11-30', 30200296);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('418', 'Finn', 'Accounting', 418, '2005-04-03', 51801800);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('419', 'Cassandra', 'Legal', 419, '1984-12-28', 83042033);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('42', 'Brody', 'Marketing', 42, '1998-02-20', 81130148);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('420', 'Ethelin', 'Sales', 420, '1998-06-18', 73333465);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('421', 'Elisabeth', 'Legal', 421, '1997-11-26', 41797942);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('422', 'Benedict', 'Sales', 422, '2003-08-12', 57591740);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('423', 'Mahmoud', 'Human Resources', 423, '2000-10-15', 94278673);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('424', 'Brnaba', 'Accounting', 424, '1995-04-11', 48933704);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('425', 'Golda', 'Sales', 425, '1998-10-05', 62679488);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('426', 'Joela', 'Accounting', 426, '2015-05-29', 24905096);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('427', 'Kelcey', 'Human Resources', 427, '1988-10-26', 61226993);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('428', 'Alisa', 'Engineering', 428, '1976-10-22', 63988703);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('429', 'Nicol', 'Support', 429, '2010-01-31', 83981070);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('43', 'Lissa', 'Support', 43, '2000-06-13', 95576760);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('430', 'Ange', 'Product Management', 430, '1970-05-12', 31702136);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('431', 'Erich', 'Product Management', 431, '2016-07-28', 24485068);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('432', 'Petronia', 'Business Development', 432, '1988-07-21', 51933540);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('433', 'Corina', 'Research and Development', 433, '1970-02-17', 31693130);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('434', 'Mayer', 'Training', 434, '2002-02-06', 86551204);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('435', 'Menard', 'Sales', 435, '2009-12-23', 16902922);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('436', 'Amalee', 'Services', 436, '1971-11-18', 54067678);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('437', 'Alana', 'Support', 437, '1970-08-09', 54406839);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('438', 'Sheila-kathryn', 'Legal', 438, '1971-11-23', 53511221);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('439', 'Linette', 'Support', 439, '1988-04-09', 51846475);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('44', 'Kristen', 'Human Resources', 44, '2000-08-25', 1392339);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('440', 'Georgianne', 'Services', 440, '1997-01-16', 97165158);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('441', 'Ailyn', 'Marketing', 441, '2008-08-09', 29102649);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('442', 'Ody', 'Support', 442, '1985-08-22', 92926211);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('443', 'Brittan', 'Business Development', 443, '1996-06-13', 90952584);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('444', 'Kira', 'Support', 444, '2017-06-21', 74067092);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('445', 'Corby', 'Human Resources', 445, '2016-03-16', 61950978);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('446', 'Fay', 'Accounting', 446, '1992-08-21', 3912574);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('447', 'Joana', 'Training', 447, '2008-03-25', 98175622);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('448', 'Fredelia', 'Business Development', 448, '1975-09-25', 19939380);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('449', 'Darsey', 'Human Resources', 449, '1976-02-07', 43302393);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('45', 'Dyanne', 'Engineering', 45, '1975-01-07', 90999739);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('450', 'Joelly', 'Business Development', 450, '1978-09-11', 38344956);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('451', 'Gwennie', 'Business Development', 451, '1998-10-16', 67192285);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('452', 'Sashenka', 'Marketing', 452, '2006-02-08', 54694649);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('453', 'Therese', 'Support', 453, '1971-04-10', 45357187);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('454', 'Karlyn', 'Business Development', 454, '1986-01-07', 92082209);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('455', 'Mathian', 'Services', 455, '2006-07-18', 68326305);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('456', 'Alberta', 'Human Resources', 456, '2008-11-27', 65631512);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('457', 'Berte', 'Research and Development', 457, '1987-03-20', 10913567);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('458', 'Alvy', 'Support', 458, '1980-12-15', 16448439);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('459', 'Dugald', 'Support', 459, '1998-08-05', 43135420);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('46', 'Claudianus', 'Engineering', 46, '1984-12-30', 32294801);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('460', 'Antonin', 'Engineering', 460, '2008-02-11', 58371144);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('461', 'Mathe', 'Business Development', 461, '2006-03-01', 69758715);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('462', 'Kilian', 'Legal', 462, '1974-12-16', 72190133);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('463', 'Damaris', 'Business Development', 463, '2002-12-01', 65297842);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('464', 'Gilburt', 'Marketing', 464, '1992-07-29', 57396953);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('465', 'Wendall', 'Human Resources', 465, '1999-02-26', 78380710);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('466', 'Spence', 'Research and Development', 466, '1996-12-16', 28051240);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('467', 'Lynnett', 'Research and Development', 467, '1977-10-26', 97055253);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('468', 'Ulric', 'Accounting', 468, '1982-12-15', 54990576);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('469', 'Jens', 'Marketing', 469, '1988-01-05', 98124968);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('47', 'Atlanta', 'Accounting', 47, '1989-05-19', 25274456);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('470', 'Dinnie', 'Product Management', 470, '1971-07-18', 30623482);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('471', 'Rikki', 'Services', 471, '1993-12-19', 4412854);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('472', 'Cori', 'Research and Development', 472, '1995-07-06', 39188999);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('473', 'Dian', 'Product Management', 473, '1998-05-22', 47504757);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('474', 'Kaylil', 'Product Management', 474, '1973-09-22', 29292006);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('475', 'Gustavus', 'Engineering', 475, '1990-04-03', 52960786);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('476', 'Francesca', 'Support', 476, '1973-08-17', 5196624);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('477', 'Blaire', 'Support', 477, '1975-02-08', 97723395);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('478', 'Klement', 'Legal', 478, '1988-03-12', 63628420);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('479', 'Ezri', 'Product Management', 479, '2009-01-03', 9152868);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('48', 'Carolina', 'Business Development', 48, '2015-06-30', 40693036);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('480', 'Byrle', 'Legal', 480, '1981-10-25', 77651796);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('481', 'Milzie', 'Marketing', 481, '2004-11-27', 20377155);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('482', 'Graehme', 'Marketing', 482, '1999-08-06', 12822786);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('483', 'Patsy', 'Engineering', 483, '2005-07-30', 61328684);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('484', 'Tania', 'Training', 484, '1994-08-28', 41024538);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('485', 'Vikky', 'Accounting', 485, '1977-10-13', 63301815);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('486', 'Shannen', 'Engineering', 486, '2010-08-01', 67775260);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('487', 'Adriaens', 'Product Management', 487, '2000-07-30', 55541063);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('488', 'Nichol', 'Business Development', 488, '2002-05-01', 59474293);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('489', 'Gillian', 'Engineering', 489, '2015-11-13', 10333846);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('49', 'Gillan', 'Accounting', 49, '1987-08-30', 44656296);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('490', 'Janey', 'Engineering', 490, '2017-06-26', 80498070);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('491', 'Brant', 'Research and Development', 491, '1986-11-01', 76910773);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('492', 'Meir', 'Engineering', 492, '1994-01-07', 19126359);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('493', 'Deina', 'Engineering', 493, '1989-11-08', 27936344);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('494', 'Rozella', 'Sales', 494, '2010-02-18', 82349633);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('495', 'Gilbertina', 'Accounting', 495, '2008-09-04', 97550330);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('496', 'Charmine', 'Legal', 496, '1995-07-21', 81296551);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('497', 'Gawen', 'Services', 497, '1975-05-12', 4801884);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('498', 'Roland', 'Product Management', 498, '2016-11-24', 87347409);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('499', 'Leonelle', 'Legal', 499, '1975-02-14', 96798286);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('5', 'Joseito', 'Human Resources', 5, '1970-08-24', 76000541);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('50', 'Conan', 'Human Resources', 50, '2008-06-07', 43869345);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('500', 'Morgan', 'Business Development', 500, '2005-01-24', 67635438);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('501', 'Katha', 'Legal', 501, '1976-08-17', 52721436);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('502', 'Pat', 'Sales', 502, '1985-06-28', 77423556);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('503', 'Camellia', 'Legal', 503, '2009-12-02', 6129929);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('504', 'Mable', 'Legal', 504, '1991-04-20', 37921348);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('505', 'Maynard', 'Support', 505, '1991-09-07', 92802776);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('506', 'Clem', 'Marketing', 506, '2000-08-27', 62916326);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('507', 'Marlo', 'Human Resources', 507, '2009-02-25', 57551235);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('508', 'Emylee', 'Product Management', 508, '1976-02-14', 26249693);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('509', 'Kitty', 'Accounting', 509, '2017-02-18', 57306384);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('51', 'Erhart', 'Business Development', 51, '1989-12-20', 44889955);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('510', 'Yorgo', 'Training', 510, '1998-02-02', 4456315);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('511', 'Kaylee', 'Business Development', 511, '1973-12-21', 70720986);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('512', 'Gery', 'Services', 512, '1972-07-12', 14750940);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('513', 'Antonie', 'Engineering', 513, '2005-05-21', 46666023);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('514', 'Vivian', 'Engineering', 514, '1990-05-12', 16923103);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('515', 'Eddy', 'Services', 515, '2007-10-27', 99800678);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('516', 'Aloysius', 'Business Development', 516, '1983-11-23', 8347057);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('517', 'Katrina', 'Training', 517, '2004-01-06', 36757697);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('518', 'Gracia', 'Human Resources', 518, '2006-01-21', 5232008);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('519', 'Kyle', 'Support', 519, '2007-08-21', 36211694);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('52', 'Lanie', 'Engineering', 52, '2000-02-20', 26562298);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('520', 'Ambrosi', 'Research and Development', 520, '2013-06-12', 11039270);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('521', 'Jae', 'Engineering', 521, '1985-10-28', 88946862);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('522', 'Deedee', 'Marketing', 522, '1982-12-25', 56429318);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('523', 'Moll', 'Support', 523, '2004-12-18', 57317848);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('524', 'Chilton', 'Marketing', 524, '2017-08-08', 5639760);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('525', 'Vida', 'Support', 525, '1983-06-17', 94888656);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('526', 'Jane', 'Accounting', 526, '2008-12-02', 23774291);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('527', 'Rutledge', 'Services', 527, '2006-12-30', 17840901);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('528', 'Anna-diana', 'Services', 528, '2004-11-07', 1600457);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('529', 'Nickolaus', 'Accounting', 529, '1999-05-04', 79229931);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('53', 'Sharia', 'Human Resources', 53, '1972-10-08', 83262695);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('530', 'Thelma', 'Support', 530, '2015-08-27', 90085991);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('531', 'Charmian', 'Marketing', 531, '2001-06-20', 49543096);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('532', 'Jourdain', 'Business Development', 532, '1994-06-20', 33597949);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('533', 'Lou', 'Product Management', 533, '1981-07-31', 7180809);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('534', 'Joane', 'Sales', 534, '1973-12-16', 54135118);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('535', 'Ky', 'Sales', 535, '2009-09-21', 40069395);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('536', 'Gannon', 'Legal', 536, '1979-11-20', 59930626);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('537', 'Annemarie', 'Services', 537, '1992-03-11', 61860844);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('538', 'Monti', 'Accounting', 538, '2015-02-28', 15107748);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('539', 'Cristabel', 'Marketing', 539, '1989-10-14', 65908265);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('54', 'Jori', 'Sales', 54, '2009-09-10', 53215024);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('540', 'Rayshell', 'Sales', 540, '1988-04-03', 46578204);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('541', 'Hughie', 'Training', 541, '2014-01-16', 11253712);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('542', 'Johnath', 'Legal', 542, '2003-02-28', 5309648);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('543', 'Marve', 'Support', 543, '1976-09-05', 49265147);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('544', 'Daffie', 'Legal', 544, '1998-06-13', 43000211);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('545', 'Jed', 'Product Management', 545, '2006-05-19', 38378820);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('546', 'Hermy', 'Support', 546, '1978-05-14', 71806313);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('547', 'Baxie', 'Services', 547, '1999-05-02', 68444046);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('548', 'Jeanelle', 'Engineering', 548, '1971-09-07', 10643748);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('549', 'Jeannine', 'Product Management', 549, '2010-11-20', 63999718);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('55', 'Darb', 'Human Resources', 55, '2010-03-17', 57930452);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('550', 'Ed', 'Human Resources', 550, '2012-04-20', 45115954);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('551', 'Duane', 'Accounting', 551, '1987-02-14', 57223366);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('552', 'Rhiamon', 'Research and Development', 552, '1995-06-05', 1887930);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('553', 'Ingunna', 'Sales', 553, '1989-03-21', 17889612);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('554', 'Tabby', 'Services', 554, '2017-06-08', 69921924);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('555', 'Birgit', 'Marketing', 555, '1998-05-19', 52893349);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('556', 'Aylmer', 'Services', 556, '1982-04-14', 93092254);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('557', 'Adrian', 'Accounting', 557, '2017-03-01', 72625236);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('558', 'Valerye', 'Training', 558, '1999-02-26', 79227161);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('559', 'Ringo', 'Sales', 559, '1987-11-28', 45943180);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('56', 'Shelagh', 'Support', 56, '1999-04-05', 3619075);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('560', 'Letitia', 'Marketing', 560, '1997-07-22', 7889940);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('561', 'Vassily', 'Research and Development', 561, '2015-05-01', 66560417);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('562', 'Antin', 'Training', 562, '1974-07-06', 28680114);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('563', 'Reg', 'Business Development', 563, '1993-09-23', 32933046);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('564', 'Garner', 'Business Development', 564, '1978-11-26', 14432125);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('565', 'Iorgo', 'Training', 565, '1981-10-10', 77080319);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('566', 'Mireielle', 'Accounting', 566, '2008-06-23', 89271344);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('567', 'Rooney', 'Support', 567, '2007-03-31', 47348584);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('568', 'Wheeler', 'Sales', 568, '1976-05-21', 31829712);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('569', 'Lion', 'Services', 569, '2013-12-18', 61635362);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('57', 'Mickie', 'Research and Development', 57, '1994-04-19', 89385963);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('570', 'Olvan', 'Product Management', 570, '1986-07-27', 39998461);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('571', 'Lianne', 'Business Development', 571, '2003-12-16', 61640515);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('572', 'Derrik', 'Training', 572, '1979-02-01', 20894451);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('573', 'Babita', 'Research and Development', 573, '1990-01-03', 60588183);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('574', 'Brunhilda', 'Sales', 574, '2008-11-23', 79470478);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('575', 'Pincus', 'Sales', 575, '1999-08-06', 9751334);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('576', 'Cletus', 'Sales', 576, '1995-12-15', 14946326);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('577', 'Juliane', 'Support', 577, '2011-01-07', 32437212);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('578', 'Fanechka', 'Marketing', 578, '1977-11-27', 7034728);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('579', 'Zacharia', 'Accounting', 579, '2016-06-28', 14902766);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('58', 'Mattheus', 'Services', 58, '1995-04-14', 97782455);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('580', 'Rayshell', 'Accounting', 580, '2007-05-31', 77898368);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('581', 'Sonya', 'Support', 581, '2015-11-01', 44699520);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('582', 'Livia', 'Training', 582, '1990-09-23', 7470793);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('583', 'Jordon', 'Engineering', 583, '2010-05-08', 9137003);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('584', 'Ailsun', 'Business Development', 584, '2016-11-30', 63112130);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('585', 'Clementine', 'Marketing', 585, '1977-05-16', 89301584);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('586', 'Dorotea', 'Support', 586, '1972-05-24', 45765274);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('587', 'Chiquita', 'Human Resources', 587, '1984-08-23', 22579371);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('588', 'Reginald', 'Research and Development', 588, '1993-06-30', 72207529);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('589', 'Bernarr', 'Services', 589, '1971-03-07', 87088082);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('59', 'Sandie', 'Marketing', 59, '2008-08-31', 63140218);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('590', 'Noam', 'Support', 590, '1979-04-20', 69705054);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('591', 'Anselma', 'Research and Development', 591, '2011-12-15', 83610730);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('592', 'Brook', 'Legal', 592, '1978-10-08', 94023929);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('593', 'Torrie', 'Accounting', 593, '1980-11-29', 97924950);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('594', 'Crista', 'Human Resources', 594, '1984-12-27', 36990770);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('595', 'Eda', 'Engineering', 595, '1991-08-30', 71876505);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('596', 'Matthaeus', 'Research and Development', 596, '2018-09-04', 15301294);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('597', 'Chane', 'Marketing', 597, '2012-08-01', 94163888);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('598', 'Thomas', 'Product Management', 598, '1979-07-19', 28948318);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('599', 'Northrup', 'Support', 599, '1994-04-15', 17273186);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('6', 'Rufus', 'Training', 6, '2003-10-20', 45382910);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('60', 'Erl', 'Sales', 60, '2014-08-03', 14088383);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('600', 'Rudolf', 'Legal', 600, '1998-04-20', 74189410);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('601', 'Stephen', 'Engineering', 601, '2001-11-15', 12678349);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('602', 'Alvira', 'Accounting', 602, '1986-11-22', 77429151);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('603', 'Antonino', 'Accounting', 603, '1987-06-10', 81969109);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('604', 'Ardith', 'Product Management', 604, '2016-03-15', 9539288);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('605', 'Lorne', 'Sales', 605, '1991-10-03', 63542696);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('606', 'Davita', 'Business Development', 606, '1987-08-14', 51260046);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('607', 'Page', 'Human Resources', 607, '2012-01-04', 97620279);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('608', 'Merwin', 'Support', 608, '1988-12-24', 49416617);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('609', 'Tomaso', 'Sales', 609, '1980-08-22', 62464817);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('61', 'Sheba', 'Accounting', 61, '1975-07-10', 67759040);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('610', 'Benedetto', 'Sales', 610, '1979-10-05', 80381777);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('611', 'Kipper', 'Training', 611, '2016-11-05', 36023007);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('612', 'Donna', 'Human Resources', 612, '2009-02-17', 45524982);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('613', 'Marve', 'Engineering', 613, '2002-04-30', 40875222);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('614', 'Claudia', 'Services', 614, '1974-11-20', 14873046);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('615', 'Dayna', 'Legal', 615, '2002-04-09', 62260793);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('616', 'Gisele', 'Accounting', 616, '1993-05-14', 35988692);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('617', 'Ceil', 'Human Resources', 617, '1992-10-27', 17398419);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('618', 'Cacilia', 'Accounting', 618, '1981-08-16', 65518101);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('619', 'Ewell', 'Services', 619, '1986-04-07', 78418832);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('62', 'Obed', 'Marketing', 62, '1989-06-19', 36287683);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('620', 'Melesa', 'Training', 620, '2008-01-18', 84456818);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('621', 'Manolo', 'Accounting', 621, '2009-07-09', 4221044);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('622', 'Rahal', 'Services', 622, '1998-05-31', 83120694);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('623', 'Velma', 'Accounting', 623, '1979-11-01', 87734890);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('624', 'Conan', 'Accounting', 624, '1977-04-06', 31935802);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('625', 'Ernst', 'Services', 625, '1994-11-07', 9321876);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('626', 'Orren', 'Engineering', 626, '1996-07-30', 54053019);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('627', 'Mirella', 'Training', 627, '1988-05-31', 81416428);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('628', 'Saree', 'Accounting', 628, '2001-04-01', 86662127);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('629', 'Joseph', 'Marketing', 629, '2015-09-09', 26430424);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('63', 'Nikolia', 'Engineering', 63, '2013-09-05', 44353621);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('630', 'Martha', 'Human Resources', 630, '1970-04-23', 87082269);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('631', 'Mattie', 'Accounting', 631, '2018-07-10', 26722824);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('632', 'Georg', 'Legal', 632, '1978-11-25', 27241820);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('633', 'Georgena', 'Human Resources', 633, '1978-11-19', 18451909);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('634', 'Dorri', 'Product Management', 634, '2007-11-11', 53687749);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('635', 'Billye', 'Training', 635, '1988-11-24', 24599501);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('636', 'Mame', 'Accounting', 636, '1991-01-18', 39014253);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('637', 'Bartholomeo', 'Engineering', 637, '1972-12-02', 19842101);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('638', 'Lind', 'Training', 638, '1975-04-20', 86633609);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('639', 'Inglis', 'Accounting', 639, '2001-11-07', 56753760);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('64', 'Huntlee', 'Sales', 64, '1999-05-20', 40028588);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('640', 'Baryram', 'Support', 640, '1979-12-11', 52624947);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('641', 'Glynnis', 'Engineering', 641, '2013-12-11', 22130728);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('642', 'Lissi', 'Business Development', 642, '1974-01-26', 45483874);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('643', 'Evyn', 'Sales', 643, '2009-03-21', 88728571);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('644', 'Ibby', 'Product Management', 644, '2001-01-14', 35538095);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('645', 'Lavinia', 'Human Resources', 645, '2011-09-08', 31134930);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('646', 'Vanni', 'Services', 646, '2002-07-02', 32408672);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('647', 'Nadean', 'Human Resources', 647, '1994-04-10', 97142773);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('648', 'Tonye', 'Marketing', 648, '1975-03-28', 65523096);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('649', 'Roxane', 'Engineering', 649, '1978-01-28', 85240062);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('65', 'Colly', 'Engineering', 65, '1990-09-28', 65641748);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('650', 'Shoshana', 'Marketing', 650, '1998-04-24', 69656382);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('651', 'Germaine', 'Research and Development', 651, '1986-02-18', 64936104);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('652', 'Pepillo', 'Services', 652, '1986-05-29', 4192388);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('653', 'Ora', 'Legal', 653, '2002-10-30', 31868282);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('654', 'Hanna', 'Engineering', 654, '1996-11-16', 54844193);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('655', 'Thorn', 'Human Resources', 655, '2013-04-29', 18040682);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('656', 'Lock', 'Legal', 656, '1979-05-15', 23869636);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('657', 'Bertie', 'Accounting', 657, '2005-02-21', 54793114);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('658', 'Christian', 'Accounting', 658, '1990-03-12', 99790595);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('659', 'Charles', 'Sales', 659, '1975-10-12', 4715387);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('66', 'Cherri', 'Services', 66, '1998-07-07', 82422599);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('660', 'Aurea', 'Support', 660, '2002-08-03', 15376803);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('661', 'Merle', 'Support', 661, '1987-08-27', 69535101);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('662', 'Anna-diane', 'Legal', 662, '2008-04-16', 67973718);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('663', 'Maynard', 'Support', 663, '2008-09-22', 69737152);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('664', 'Hyacinthia', 'Marketing', 664, '2000-03-20', 66476839);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('665', 'Simmonds', 'Training', 665, '1991-10-29', 84583506);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('666', 'Sheff', 'Legal', 666, '2015-03-11', 88845455);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('667', 'Willow', 'Business Development', 667, '2010-05-15', 34389443);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('668', 'Toinette', 'Business Development', 668, '2009-12-18', 64965600);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('669', 'Noah', 'Human Resources', 669, '1990-05-02', 64098967);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('67', 'Beckie', 'Research and Development', 67, '2009-12-22', 71830070);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('670', 'Sigismundo', 'Research and Development', 670, '2018-06-12', 69501012);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('671', 'Wilma', 'Business Development', 671, '1989-10-09', 23993811);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('672', 'Hakim', 'Business Development', 672, '1977-09-20', 8416047);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('673', 'Bartie', 'Product Management', 673, '1970-09-08', 93051837);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('674', 'Beale', 'Services', 674, '1997-12-25', 3061494);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('675', 'Hamnet', 'Product Management', 675, '1992-02-29', 21483015);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('676', 'Butch', 'Legal', 676, '1974-08-23', 42168194);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('677', 'Marabel', 'Research and Development', 677, '1981-12-13', 80652905);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('678', 'Bert', 'Research and Development', 678, '1977-01-10', 68418147);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('679', 'Margarette', 'Marketing', 679, '1979-07-06', 74362789);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('68', 'Cayla', 'Marketing', 68, '1980-04-25', 7482003);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('680', 'Aimil', 'Marketing', 680, '1991-05-19', 42586405);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('681', 'Vick', 'Marketing', 681, '2016-04-15', 76306270);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('682', 'Massimo', 'Services', 682, '1979-05-28', 21929387);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('683', 'Stefa', 'Services', 683, '2006-07-02', 40730353);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('684', 'Talya', 'Human Resources', 684, '2002-05-05', 43643335);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('685', 'Maison', 'Engineering', 685, '1990-11-09', 7003061);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('686', 'Kit', 'Marketing', 686, '1997-08-11', 83530760);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('687', 'Kitti', 'Engineering', 687, '1972-11-03', 72532894);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('688', 'Keary', 'Sales', 688, '2013-07-05', 94002213);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('689', 'Patton', 'Accounting', 689, '1970-05-26', 70281289);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('69', 'Scarlet', 'Marketing', 69, '1989-04-11', 62868990);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('690', 'Matty', 'Training', 690, '1980-09-07', 67717186);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('691', 'Carolee', 'Training', 691, '1978-01-05', 78198694);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('692', 'Duke', 'Sales', 692, '1987-11-17', 20358641);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('693', 'Lurline', 'Accounting', 693, '2004-09-15', 56470314);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('694', 'Chance', 'Accounting', 694, '2006-12-12', 42821112);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('695', 'Claus', 'Product Management', 695, '1994-12-08', 77646594);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('696', 'Lucio', 'Legal', 696, '1997-12-02', 89816754);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('697', 'Moreen', 'Product Management', 697, '2010-01-16', 57828416);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('698', 'Malia', 'Services', 698, '1997-10-13', 95906636);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('699', 'Fitz', 'Training', 699, '2005-10-29', 69397191);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('7', 'Lenka', 'Services', 7, '2013-07-02', 14002681);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('70', 'Louis', 'Product Management', 70, '1995-04-01', 44828958);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('700', 'Letisha', 'Support', 700, '1982-12-31', 28715635);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('701', 'Gerianna', 'Human Resources', 701, '2006-11-21', 76926478);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('702', 'Lianne', 'Services', 702, '1979-11-11', 23336543);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('703', 'Ros', 'Sales', 703, '1977-08-24', 88217540);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('704', 'Weider', 'Services', 704, '1971-12-23', 20490896);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('705', 'Celinda', 'Research and Development', 705, '1972-11-24', 87192345);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('706', 'Cherlyn', 'Marketing', 706, '1976-04-17', 84794698);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('707', 'Farley', 'Marketing', 707, '1984-05-24', 50440641);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('708', 'Andonis', 'Product Management', 708, '1987-09-09', 70617254);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('709', 'Doloritas', 'Legal', 709, '2012-07-15', 47768205);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('71', 'Selinda', 'Human Resources', 71, '1986-06-28', 92054957);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('710', 'Arabelle', 'Engineering', 710, '1998-09-28', 22825379);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('711', 'Lorraine', 'Human Resources', 711, '2017-12-02', 24431653);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('712', 'Sallee', 'Product Management', 712, '1987-05-12', 59274613);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('713', 'Ari', 'Accounting', 713, '1988-05-17', 26956572);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('714', 'Carmelita', 'Support', 714, '1984-04-07', 20347458);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('715', 'Rubia', 'Legal', 715, '2009-06-03', 24957918);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('716', 'Goldy', 'Business Development', 716, '1974-12-12', 83971565);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('717', 'Ester', 'Product Management', 717, '2010-02-06', 8145420);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('718', 'Loree', 'Human Resources', 718, '1985-09-13', 3182246);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('719', 'Dora', 'Marketing', 719, '2006-01-30', 60272792);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('72', 'Oren', 'Product Management', 72, '1988-11-25', 20623799);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('720', 'Delcina', 'Engineering', 720, '2016-12-16', 91135836);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('721', 'Rozalin', 'Training', 721, '2009-11-25', 2691274);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('722', 'Redd', 'Research and Development', 722, '2008-04-05', 71320437);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('723', 'Dahlia', 'Accounting', 723, '1989-11-02', 51866414);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('724', 'Annadiane', 'Human Resources', 724, '1984-09-18', 4940458);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('725', 'Sarge', 'Human Resources', 725, '2008-08-31', 38716695);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('726', 'Jobye', 'Services', 726, '2002-02-09', 62698470);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('727', 'Eden', 'Marketing', 727, '1970-10-02', 2195983);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('728', 'Alyse', 'Business Development', 728, '1988-11-13', 25650975);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('729', 'Timmi', 'Accounting', 729, '2011-08-13', 7472940);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('73', 'Liana', 'Accounting', 73, '1978-01-28', 59379172);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('730', 'Warren', 'Marketing', 730, '1992-07-02', 99937771);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('731', 'Vivian', 'Research and Development', 731, '2001-05-09', 3824815);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('732', 'Humfried', 'Legal', 732, '1982-03-22', 34513715);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('733', 'Harriot', 'Support', 733, '1980-07-04', 2865442);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('734', 'Fanechka', 'Business Development', 734, '2003-01-01', 94779401);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('735', 'Ryan', 'Human Resources', 735, '2015-06-07', 2965693);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('736', 'Katrine', 'Product Management', 736, '2008-01-15', 60493960);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('737', 'Nadeen', 'Support', 737, '1994-08-21', 97776375);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('738', 'Darbie', 'Services', 738, '1997-01-15', 49903054);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('739', 'Trixi', 'Support', 739, '1999-06-12', 24240711);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('74', 'Kristy', 'Marketing', 74, '2018-01-03', 19936332);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('740', 'Ninnette', 'Human Resources', 740, '1970-01-25', 78814612);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('741', 'Caddric', 'Services', 741, '1975-11-16', 12811262);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('742', 'Harley', 'Services', 742, '2007-10-12', 43868699);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('743', 'Wyatan', 'Accounting', 743, '1989-05-14', 50481840);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('744', 'Dahlia', 'Human Resources', 744, '1979-08-02', 52844976);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('745', 'Reine', 'Product Management', 745, '1998-02-07', 29078958);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('746', 'Rhianon', 'Accounting', 746, '1989-01-03', 91015674);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('747', 'Emanuel', 'Training', 747, '2003-06-08', 39397205);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('748', 'Kaile', 'Business Development', 748, '1991-03-21', 12198136);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('749', 'Lani', 'Training', 749, '1995-08-07', 77568793);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('75', 'Frannie', 'Engineering', 75, '1993-06-29', 40431611);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('750', 'Nanci', 'Product Management', 750, '1999-02-23', 35102624);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('751', 'Clarence', 'Accounting', 751, '2014-07-14', 57224315);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('752', 'Zitella', 'Research and Development', 752, '1992-09-23', 97016435);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('753', 'Clementius', 'Research and Development', 753, '1995-05-24', 38684533);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('754', 'Ranice', 'Research and Development', 754, '1998-01-15', 59472486);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('755', 'Eugenia', 'Services', 755, '2000-08-29', 95867406);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('756', 'Orbadiah', 'Support', 756, '2015-01-13', 62588218);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('757', 'Sonni', 'Business Development', 757, '1994-09-18', 2630820);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('758', 'Loren', 'Accounting', 758, '2003-10-16', 19903099);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('759', 'Gualterio', 'Marketing', 759, '2011-10-02', 26457637);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('76', 'Fairleigh', 'Research and Development', 76, '1977-09-12', 43073779);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('760', 'Cello', 'Training', 760, '1989-08-06', 62287617);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('761', 'Kitty', 'Sales', 761, '2013-09-28', 8606782);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('762', 'Omar', 'Research and Development', 762, '1993-09-21', 26714468);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('763', 'Dayle', 'Marketing', 763, '2010-07-02', 90115829);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('764', 'Cherlyn', 'Services', 764, '1993-11-07', 51246304);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('765', 'Tiphanie', 'Human Resources', 765, '2014-06-18', 51082581);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('766', 'Coralyn', 'Human Resources', 766, '1973-10-12', 45358849);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('767', 'Barn', 'Services', 767, '1974-08-16', 4153615);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('768', 'Collin', 'Sales', 768, '2007-02-06', 78871800);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('769', 'Avrit', 'Training', 769, '2011-12-16', 50392434);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('77', 'Emilia', 'Engineering', 77, '1996-02-01', 90229370);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('770', 'Nancey', 'Legal', 770, '1987-08-10', 72708463);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('771', 'Hewet', 'Engineering', 771, '2003-11-14', 29256144);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('772', 'Lyndel', 'Engineering', 772, '1998-11-06', 47521297);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('773', 'Easter', 'Research and Development', 773, '1994-04-04', 3380409);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('774', 'Daphna', 'Training', 774, '2009-05-31', 59597688);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('775', 'Devora', 'Legal', 775, '1989-04-11', 41084585);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('776', 'Reggie', 'Support', 776, '2005-09-01', 4290297);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('777', 'Aarika', 'Training', 777, '1972-12-31', 71154494);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('778', 'Nat', 'Legal', 778, '1994-01-05', 85037535);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('779', 'Felicity', 'Product Management', 779, '1975-05-04', 19964582);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('78', 'Muffin', 'Sales', 78, '1981-06-08', 85522702);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('780', 'Jennie', 'Human Resources', 780, '1986-10-01', 85962083);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('781', 'Myrwyn', 'Product Management', 781, '2012-07-15', 13567660);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('782', 'Derrik', 'Services', 782, '1977-10-11', 61578915);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('783', 'Chen', 'Engineering', 783, '2012-03-09', 53443509);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('784', 'Giorgia', 'Accounting', 784, '1979-07-17', 57083085);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('785', 'Carin', 'Engineering', 785, '1976-11-15', 54100340);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('786', 'Merl', 'Sales', 786, '1996-09-16', 99634976);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('787', 'Monte', 'Business Development', 787, '1994-08-15', 27483842);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('788', 'Lorettalorna', 'Legal', 788, '2007-05-12', 1184017);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('789', 'Evey', 'Training', 789, '2010-04-10', 4909922);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('79', 'Jolene', 'Legal', 79, '2006-01-24', 66214735);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('790', 'Forster', 'Services', 790, '1999-09-02', 19897653);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('791', 'Webster', 'Human Resources', 791, '1972-02-15', 92944240);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('792', 'Eryn', 'Accounting', 792, '2012-08-22', 26209317);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('793', 'Clarey', 'Research and Development', 793, '1977-12-12', 15695619);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('794', 'Hamilton', 'Business Development', 794, '2016-01-13', 23605889);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('795', 'Nicole', 'Services', 795, '2017-07-29', 42803250);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('796', 'El', 'Sales', 796, '2009-08-14', 92479421);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('797', 'Jami', 'Marketing', 797, '2010-01-11', 38200734);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('798', 'Daniele', 'Training', 798, '1984-01-09', 13359182);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('799', 'Darsie', 'Marketing', 799, '1992-06-16', 34255199);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('8', 'Lindsy', 'Marketing', 8, '2005-10-29', 72111181);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('80', 'Jerrine', 'Sales', 80, '1993-01-13', 54026164);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('800', 'Aeriela', 'Engineering', 800, '2004-02-17', 14551478);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('801', 'Joel', 'Accounting', 801, '1992-12-26', 14672466);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('802', 'Albrecht', 'Accounting', 802, '2001-04-23', 16986025);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('803', 'Bernhard', 'Research and Development', 803, '1985-06-05', 22348944);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('804', 'Lothaire', 'Legal', 804, '1991-01-17', 99221179);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('805', 'Stephie', 'Support', 805, '1995-08-21', 94347850);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('806', 'Zachariah', 'Legal', 806, '2006-03-03', 38561112);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('807', 'Jerry', 'Research and Development', 807, '1978-04-24', 3108858);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('808', 'Darnall', 'Marketing', 808, '2010-09-22', 50101714);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('809', 'Dania', 'Engineering', 809, '1987-05-05', 21174136);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('81', 'Ward', 'Services', 81, '1980-05-17', 8603823);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('810', 'Chevalier', 'Legal', 810, '1974-11-27', 35088579);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('811', 'Clare', 'Product Management', 811, '1999-05-15', 84021703);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('812', 'Doll', 'Engineering', 812, '1971-01-23', 82466341);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('813', 'Evered', 'Training', 813, '1996-01-06', 6901766);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('814', 'Murielle', 'Accounting', 814, '1977-04-10', 71062659);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('815', 'Lindsay', 'Support', 815, '2016-03-01', 88244461);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('816', 'Germaine', 'Services', 816, '1972-08-30', 63679049);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('817', 'Glenden', 'Human Resources', 817, '1989-04-13', 36422488);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('818', 'Flemming', 'Sales', 818, '2007-01-06', 62078710);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('819', 'Ralf', 'Services', 819, '1987-04-17', 30897676);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('82', 'Faulkner', 'Business Development', 82, '1983-11-23', 51493979);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('820', 'Guglielmo', 'Engineering', 820, '2010-08-09', 49552542);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('821', 'Moina', 'Engineering', 821, '1995-08-13', 64478755);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('822', 'Janessa', 'Human Resources', 822, '2012-06-12', 26492297);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('823', 'Arlena', 'Services', 823, '1982-04-26', 56979415);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('824', 'Walker', 'Sales', 824, '2001-04-11', 75098823);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('825', 'Hally', 'Product Management', 825, '2007-11-22', 58628335);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('826', 'Ulrica', 'Business Development', 826, '1983-11-26', 16764548);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('827', 'Dalenna', 'Research and Development', 827, '2009-02-02', 6995026);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('828', 'Cynde', 'Sales', 828, '2000-01-08', 86473876);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('829', 'Vera', 'Accounting', 829, '1993-01-05', 70687476);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('83', 'Cherish', 'Sales', 83, '1977-10-13', 13107198);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('830', 'Griffie', 'Training', 830, '1972-12-11', 41950589);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('831', 'Saree', 'Support', 831, '2014-07-29', 11468037);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('832', 'Sula', 'Business Development', 832, '1972-05-15', 55961197);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('833', 'Mikkel', 'Marketing', 833, '1985-01-31', 2698333);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('834', 'Lissi', 'Engineering', 834, '1987-08-10', 8793663);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('835', 'Clair', 'Services', 835, '2008-07-10', 53580989);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('836', 'Samara', 'Support', 836, '1982-06-09', 74918331);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('837', 'Bonnie', 'Marketing', 837, '1983-01-04', 20326775);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('838', 'Nikola', 'Research and Development', 838, '2009-07-13', 77179460);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('839', 'Maxie', 'Human Resources', 839, '1982-01-03', 55404986);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('84', 'Marie-ann', 'Business Development', 84, '1978-12-28', 36290245);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('840', 'Sigmund', 'Engineering', 840, '1991-11-21', 38507566);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('841', 'Deane', 'Legal', 841, '1975-08-17', 65790736);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('842', 'Neala', 'Product Management', 842, '2007-02-02', 47917897);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('843', 'Audy', 'Human Resources', 843, '1996-03-16', 31804345);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('844', 'Greggory', 'Engineering', 844, '2015-12-19', 76059931);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('845', 'Babs', 'Training', 845, '1990-10-27', 52518590);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('846', 'Tobye', 'Services', 846, '1999-06-10', 95484261);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('847', 'Jandy', 'Sales', 847, '1973-11-10', 40101833);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('848', 'Georgi', 'Human Resources', 848, '1998-06-18', 19336515);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('849', 'Yolande', 'Engineering', 849, '2009-06-02', 18223422);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('85', 'Darbie', 'Research and Development', 85, '2002-07-27', 76483078);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('850', 'Aurea', 'Support', 850, '1994-04-08', 31919593);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('851', 'Nissie', 'Engineering', 851, '1998-12-24', 87256750);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('852', 'Emilee', 'Services', 852, '2017-12-22', 15005658);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('853', 'Beverlie', 'Engineering', 853, '1987-04-21', 55284167);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('854', 'Jerrilyn', 'Sales', 854, '1998-04-26', 92914759);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('855', 'Ham', 'Accounting', 855, '2008-07-09', 83151232);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('856', 'Theodoric', 'Marketing', 856, '2018-03-21', 94150913);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('857', 'Cristine', 'Legal', 857, '2010-12-22', 16045295);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('858', 'Danielle', 'Legal', 858, '1974-05-06', 22276882);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('859', 'Hamilton', 'Marketing', 859, '1985-01-10', 63777930);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('86', 'Trent', 'Marketing', 86, '2001-05-14', 22948517);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('860', 'Darci', 'Research and Development', 860, '2004-05-29', 42045797);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('861', 'Free', 'Sales', 861, '1972-06-08', 30757765);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('862', 'Tamqrah', 'Research and Development', 862, '1991-03-06', 87818703);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('863', 'Gale', 'Support', 863, '1986-03-03', 8811714);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('864', 'Eberto', 'Services', 864, '1991-01-14', 80181572);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('865', 'Celinka', 'Product Management', 865, '1985-02-12', 78377915);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('866', 'Sven', 'Legal', 866, '2004-08-09', 66143095);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('867', 'Kayley', 'Training', 867, '2000-09-10', 4969842);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('868', 'Margarita', 'Product Management', 868, '1973-03-20', 84728733);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('869', 'Romeo', 'Human Resources', 869, '2010-02-02', 90996991);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('87', 'Jedd', 'Marketing', 87, '1972-03-30', 24969121);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('870', 'Paxon', 'Legal', 870, '1983-08-10', 84014157);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('871', 'Delmor', 'Services', 871, '1991-12-31', 73163844);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('872', 'Costanza', 'Research and Development', 872, '1976-04-06', 58479824);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('873', 'Cammie', 'Marketing', 873, '1991-10-20', 11163463);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('874', 'Guenna', 'Services', 874, '1993-03-27', 85268471);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('875', 'Angelle', 'Sales', 875, '1998-07-16', 11780773);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('876', 'Mignon', 'Sales', 876, '1978-06-26', 51441057);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('877', 'Flor', 'Product Management', 877, '2000-01-28', 71141830);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('878', 'Querida', 'Support', 878, '2005-10-05', 19533120);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('879', 'Dukey', 'Sales', 879, '1997-07-17', 63637043);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('88', 'Goddard', 'Legal', 88, '1979-03-17', 20836574);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('880', 'Theodosia', 'Legal', 880, '1986-01-08', 28535351);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('881', 'Deanna', 'Business Development', 881, '1971-04-18', 50816024);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('882', 'Lucy', 'Research and Development', 882, '2011-02-08', 61623829);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('883', 'Danyette', 'Services', 883, '1988-01-16', 28925992);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('884', 'Artus', 'Training', 884, '2009-08-18', 63941831);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('885', 'Cyrill', 'Support', 885, '1999-04-14', 82287524);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('886', 'Prentice', 'Engineering', 886, '1994-06-15', 63299724);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('887', 'Lainey', 'Product Management', 887, '2004-10-07', 45633724);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('888', 'Edmon', 'Business Development', 888, '2002-08-05', 77889582);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('889', 'Melisandra', 'Marketing', 889, '1992-03-04', 35914658);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('89', 'Lucky', 'Product Management', 89, '2009-10-21', 48098862);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('890', 'Dorothea', 'Marketing', 890, '2001-10-03', 7205683);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('891', 'Waldemar', 'Business Development', 891, '2002-10-29', 44603799);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('892', 'Lyssa', 'Legal', 892, '1993-10-27', 93290360);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('893', 'Wash', 'Research and Development', 893, '1987-07-11', 6480907);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('894', 'Babs', 'Sales', 894, '1993-05-09', 50859610);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('895', 'Welsh', 'Sales', 895, '1992-08-08', 38098146);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('896', 'Blaine', 'Marketing', 896, '2001-07-16', 57202020);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('897', 'Osborne', 'Sales', 897, '2008-08-02', 39611334);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('898', 'Orly', 'Accounting', 898, '2003-07-01', 93772462);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('899', 'Tremayne', 'Business Development', 899, '1985-01-19', 7082704);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('9', 'Doy', 'Research and Development', 9, '1981-01-31', 46752720);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('90', 'Britteny', 'Marketing', 90, '1970-07-28', 52127876);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('900', 'Valentina', 'Business Development', 900, '1981-05-02', 22950896);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('901', 'Crissie', 'Engineering', 901, '1992-10-22', 18866900);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('902', 'Jaquelin', 'Engineering', 902, '1975-07-13', 86493272);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('903', 'Emlynn', 'Human Resources', 903, '1972-11-03', 9427725);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('904', 'Isaak', 'Sales', 904, '1978-08-26', 78629598);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('905', 'Garrek', 'Accounting', 905, '1990-09-02', 49101139);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('906', 'Karoline', 'Sales', 906, '2012-03-12', 24426108);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('907', 'Fielding', 'Accounting', 907, '1986-06-01', 4321088);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('908', 'Casey', 'Research and Development', 908, '1973-11-25', 36785224);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('909', 'Eberto', 'Sales', 909, '2018-06-12', 61603259);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('91', 'Mariele', 'Sales', 91, '1981-12-14', 49377524);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('910', 'Willard', 'Product Management', 910, '1993-01-05', 40931019);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('911', 'Anastasia', 'Research and Development', 911, '1993-11-14', 38444400);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('912', 'Sterne', 'Engineering', 912, '2017-07-17', 61452804);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('913', 'Marisa', 'Services', 913, '1983-11-27', 22999905);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('914', 'Chaddy', 'Services', 914, '1982-07-08', 82870773);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('915', 'Penni', 'Support', 915, '1978-04-21', 16238155);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('916', 'Doralyn', 'Marketing', 916, '1992-01-06', 15143347);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('917', 'Cesare', 'Accounting', 917, '2010-02-05', 95175534);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('918', 'Franciskus', 'Legal', 918, '2017-09-27', 78161929);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('919', 'Alic', 'Training', 919, '1989-10-29', 52900903);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('92', 'Bengt', 'Accounting', 92, '1994-03-22', 29871451);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('920', 'Sherwynd', 'Legal', 920, '2001-11-22', 82384732);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('921', 'Feodor', 'Product Management', 921, '1981-06-28', 86227287);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('922', 'Paxon', 'Services', 922, '1991-01-11', 53392357);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('923', 'Bellina', 'Business Development', 923, '2000-07-03', 95612436);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('924', 'Hal', 'Research and Development', 924, '1987-07-31', 86202213);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('925', 'Tyne', 'Services', 925, '2000-06-08', 66075592);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('926', 'Chet', 'Business Development', 926, '1994-06-20', 74635540);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('927', 'Barry', 'Support', 927, '1973-06-25', 91568151);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('928', 'Louisette', 'Accounting', 928, '1970-03-17', 21535416);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('929', 'Florina', 'Research and Development', 929, '1990-01-11', 39156154);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('93', 'Berenice', 'Services', 93, '2011-12-27', 84938832);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('930', 'Cart', 'Product Management', 930, '1977-11-10', 82474986);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('931', 'Elke', 'Human Resources', 931, '2005-09-24', 76483595);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('932', 'Ezri', 'Sales', 932, '1998-12-08', 49987192);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('933', 'Fidelio', 'Training', 933, '2001-05-12', 1212507);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('934', 'Nicko', 'Training', 934, '2018-01-22', 48289889);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('935', 'Romeo', 'Training', 935, '2011-12-12', 99503979);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('936', 'Kacie', 'Legal', 936, '1989-09-23', 3548167);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('937', 'Wandis', 'Legal', 937, '1994-12-06', 33576220);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('938', 'Richmound', 'Sales', 938, '1976-01-25', 70907713);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('939', 'Les', 'Engineering', 939, '2002-09-23', 95229631);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('94', 'Jake', 'Research and Development', 94, '1985-08-05', 20970212);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('940', 'Olympie', 'Marketing', 940, '1991-05-15', 81423466);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('941', 'Bernard', 'Engineering', 941, '1990-04-22', 38731161);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('942', 'Urbano', 'Legal', 942, '2016-09-24', 49105887);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('943', 'Ashley', 'Marketing', 943, '2018-03-22', 78499700);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('944', 'Lorain', 'Engineering', 944, '2013-02-12', 92502477);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('945', 'Karee', 'Product Management', 945, '2006-11-17', 61562672);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('946', 'Archy', 'Support', 946, '1986-12-24', 62900063);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('947', 'Goldina', 'Business Development', 947, '1978-02-15', 43865393);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('948', 'Ruby', 'Services', 948, '1977-06-21', 84484686);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('949', 'Halette', 'Accounting', 949, '2014-03-23', 76549374);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('95', 'Annnora', 'Sales', 95, '1991-06-08', 53285895);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('950', 'Allissa', 'Legal', 950, '1973-11-13', 53379087);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('951', 'Carlyle', 'Human Resources', 951, '2005-04-18', 64866219);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('952', 'Hakim', 'Accounting', 952, '2008-12-20', 72921847);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('953', 'Carly', 'Sales', 953, '2014-11-03', 91302674);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('954', 'Brandais', 'Training', 954, '1985-12-22', 97030471);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('955', 'Aurlie', 'Engineering', 955, '2016-07-16', 67625413);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('956', 'Vachel', 'Research and Development', 956, '2008-12-25', 73686466);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('957', 'Howey', 'Engineering', 957, '2004-11-23', 16650297);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('958', 'Ajay', 'Engineering', 958, '2008-08-12', 81644557);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('959', 'Mohammed', 'Legal', 959, '1995-03-21', 7158165);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('96', 'Cobby', 'Training', 96, '1997-10-17', 29505827);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('960', 'Leanna', 'Accounting', 960, '1972-11-14', 6850866);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('961', 'Pauline', 'Human Resources', 961, '1974-02-10', 9234923);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('962', 'Arleyne', 'Research and Development', 962, '2015-08-03', 94241624);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('963', 'Ardath', 'Engineering', 963, '1997-08-11', 47403394);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('964', 'Maury', 'Research and Development', 964, '2002-08-14', 72265917);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('965', 'Karlee', 'Sales', 965, '1995-07-30', 22331707);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('966', 'Bert', 'Human Resources', 966, '1972-05-08', 47131729);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('967', 'Gearalt', 'Product Management', 967, '1991-08-14', 42909602);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('968', 'Birdie', 'Research and Development', 968, '1993-12-02', 67145089);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('969', 'Hyacinthe', 'Sales', 969, '1996-11-10', 21593907);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('97', 'Whitman', 'Marketing', 97, '1974-10-31', 65663295);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('970', 'Aggie', 'Support', 970, '2012-12-23', 63566108);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('971', 'Dun', 'Training', 971, '2012-12-10', 11245468);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('972', 'Clint', 'Business Development', 972, '2014-03-19', 78847074);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('973', 'Kirk', 'Legal', 973, '2007-12-06', 16551390);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('974', 'Hildagard', 'Training', 974, '1974-03-26', 59496836);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('975', 'Steven', 'Sales', 975, '2016-03-15', 23080660);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('976', 'Obed', 'Marketing', 976, '1974-11-18', 76561787);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('977', 'Aurore', 'Legal', 977, '2013-05-01', 77506317);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('978', 'Hattie', 'Marketing', 978, '1995-01-12', 63743871);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('979', 'Mia', 'Business Development', 979, '2005-01-25', 98989296);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('98', 'Fredek', 'Human Resources', 98, '2002-02-22', 61334401);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('980', 'Emmi', 'Research and Development', 980, '2018-05-08', 34064643);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('981', 'Lilian', 'Training', 981, '1999-07-28', 48658929);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('982', 'Whitaker', 'Research and Development', 982, '1974-07-02', 28138994);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('983', 'Rickert', 'Research and Development', 983, '2016-05-10', 55739687);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('984', 'Timi', 'Research and Development', 984, '1986-08-01', 41673531);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('985', 'Wini', 'Services', 985, '1987-09-09', 57277984);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('986', 'Gardner', 'Support', 986, '2008-08-16', 58132920);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('987', 'Omero', 'Business Development', 987, '2009-07-15', 36232121);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('988', 'Wainwright', 'Legal', 988, '1985-01-19', 70219382);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('989', 'Melinda', 'Training', 989, '2000-08-03', 9835375);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('99', 'Carmita', 'Business Development', 99, '1972-07-04', 18994440);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('990', 'Towney', 'Training', 990, '1977-09-28', 64324931);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('991', 'Frederica', 'Accounting', 991, '1998-02-05', 1491886);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('992', 'Annice', 'Training', 992, '2008-11-01', 58740205);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('993', 'Wileen', 'Product Management', 993, '2011-07-04', 29558321);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('994', 'Egor', 'Services', 994, '1994-03-23', 82555677);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('995', 'Lindsey', 'Training', 995, '2011-05-23', 3239878);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('996', 'Ambrosi', 'Research and Development', 996, '2012-06-17', 22555848);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('997', 'Gare', 'Human Resources', 997, '2018-08-12', 7201683);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('998', 'Freemon', 'Engineering', 998, '1983-02-01', 88588842);
INSERT INTO `student` (`code`, `name`, `department`, `age`, `birthday`, `salary`) VALUES
	('999', 'Felizio', 'Sales', 999, '1983-11-15', 81676447);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- membuang struktur untuk table dblatihan.tbhal1
CREATE TABLE IF NOT EXISTS `tbhal1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isi` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel dblatihan.tbhal1: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `tbhal1` DISABLE KEYS */;
INSERT INTO `tbhal1` (`id`, `isi`) VALUES
	(1, 'bla bla bla bla bla bla bla bla bla bla bla bla bl');
INSERT INTO `tbhal1` (`id`, `isi`) VALUES
	(2, 'xa xa xa xa xa xa xa xa xa xa ');
INSERT INTO `tbhal1` (`id`, `isi`) VALUES
	(3, 'wa wa wa wa wa wa wa wa wa wa ');
/*!40000 ALTER TABLE `tbhal1` ENABLE KEYS */;

-- membuang struktur untuk table dblatihan.tbhal2
CREATE TABLE IF NOT EXISTS `tbhal2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isi` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Membuang data untuk tabel dblatihan.tbhal2: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `tbhal2` DISABLE KEYS */;
INSERT INTO `tbhal2` (`id`, `isi`) VALUES
	(1, 'aaaaaaaaa aaaaaa aaaaaaaa');
INSERT INTO `tbhal2` (`id`, `isi`) VALUES
	(2, 'bbbb bbbbbbb bbbbbbbbbbbbbbb');
INSERT INTO `tbhal2` (`id`, `isi`) VALUES
	(3, 'dd dddddd dddddd dddd ddddddddd');
/*!40000 ALTER TABLE `tbhal2` ENABLE KEYS */;

-- membuang struktur untuk table dblatihan.tbhal3
CREATE TABLE IF NOT EXISTS `tbhal3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isi` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Membuang data untuk tabel dblatihan.tbhal3: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `tbhal3` DISABLE KEYS */;
INSERT INTO `tbhal3` (`id`, `isi`) VALUES
	(1, 'xxxx xxxxxxxx xx');
INSERT INTO `tbhal3` (`id`, `isi`) VALUES
	(2, 'yy yyyyyyy yyy yyyyyyyy');
INSERT INTO `tbhal3` (`id`, `isi`) VALUES
	(3, 'zzzzzz zzzzzz zzzzzzzzzzzzzzzzzzzzzzzz');
/*!40000 ALTER TABLE `tbhal3` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
