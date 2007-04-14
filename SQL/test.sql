INSERT INTO `usvn_users` (`users_id`, `users_login`, `users_password`, `users_lastname`, `users_firstname`, `users_email`)
VALUES
	(2, 'admin', ENCRYPT('admin'), 'Admin', NULL, NULL),
	(3, 'attal_m', ENCRYPT('attal_m'), 'Attal', 'Mathieu', NULL),
	(4, 'billar_m', ENCRYPT('billar_m'), 'Billard', 'Marie', NULL),
	(5, 'crivis_s', ENCRYPT('crivis_s'), 'Crivisier', 'St�phane', NULL),
	(6, 'dolean_j', ENCRYPT('dolean_j'), 'Doleans', 'Julien', NULL),
	(7, 'duponc_j', ENCRYPT('duponc_j'), 'Duponchelle', 'Julien', NULL),
	(8, 'guyoll_o', ENCRYPT('guyoll_o'), 'Guyollot', 'Olivier', NULL),
	(9, 'joanic_g', ENCRYPT('joanic_g'), 'Joanicot', 'Gabriel', NULL)
;

INSERT INTO `usvn_groups` (`groups_id`, `groups_name`)
VALUES
	('3', 'love-admin'),
	('4', 'love-user'),
	('5', 'usvn-admin'),
	('6', 'usvn-user')
;

INSERT INTO `usvn_users_to_groups` (`users_id`, `groups_id`)
	VALUES
		('2', '2'),
		('3', '6'),
		('3', '3'),
		('4', '6'),
		('4', '3'),
		('5', '6'),
		('5', '3'),
		('6', '6'),
		('6', '3'),
		('7', '5'),
		('7', '3'),
		('8', '6'),
		('8', '3'),
		('9', '6'),
		('9', '3')
;

INSERT INTO `usvn_projects` (`projects_id`, `projects_name`, `projects_start_date`, `projects_description`, `projects_auth`, `projects_url`)
VALUES
	('2', 'love', '2007-04-12 11:10:22', 'Site de musique similaire � last.fm', '007', NULL),
	('3', 'usvn', '2006-09-01 11:10:22', 'User Friendly SVN', '008', 'http://www.usvn.info')
;


INSERT INTO `usvn_revisions` (`projects_id`, `revisions_num`, `users_id`, `revisions_message`, `revisions_date`)
	VALUES
		#Projet USVN
		('3', '1', '7', 'First commit', '2007-04-12 12:14:26'),
		('3', '2', '5', 'Update build.xml
Add client', '2007-04-13 12:14:58'),
		('3', '3', '7', 'Change charset', '2007-04-13 13:14:58'),
		#Projet love
		('2', '1', '7', 'First commit', '2007-04-13 13:14:58')
;

INSERT INTO `usvn_files` (`projects_id`, `revisions_num`, `files_id`, `files_path`, `files_isdir`, `files_typ_rev`)
	VALUES
		#Rev 1 projet usvn
		('3', '1', '1', 'build.xml', '0', 'A'),
		('3', '1', '2', 'phpDocumentor.ini', '0', 'A'),
		('3', '1', '3', 'www', '1', 'A'),
		('3', '1', '4', 'www/index.php', '0', 'A'),
		#Rev 2 projet usvn
		('3', '2', '1', 'build.xml', '0', 'U'),
		('3', '2', '5', 'client', '1', 'A'),
		('3', '2', '6', 'client/usvn', '0', 'A'),
		#Rev 3 projet usvn
		('3', '3', '4', 'www/index.php', '0', 'U'),
		('3', '3', '2', 'phpDocumentor.ini', '0', 'D'),
		#Rev 1 projet love
		('2', '1', '7', 'index.php', '0', 'A'),
		('2', '1', '8', 'user.php', '0', 'A'),
		('2', '1', '9', 'css', '1', 'A'),
		('2', '1', '10', 'css/style.css', '0', 'A')
;