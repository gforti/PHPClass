CREATE DATABASE webpage DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE webpage;

CREATE TABLE IF NOT EXISTS users (
	id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,	
	username VARCHAR(30) NOT NULL UNIQUE KEY,
	password VARCHAR(50) NOT NULL,
	active TINYINT(1) UNSIGNED NOT NULL DEFAULT '1'
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS page (
	id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
        usersid INT UNSIGNED NOT NULL,
	FOREIGN KEY (usersid) REFERENCES users(usersid),
	title VARCHAR(50) NOT NULL,
	theme VARCHAR(50) NOT NULL,
        address VARCHAR(200) NOT NULL,
        phone VARCHAR(9) NOT NULL,
        email VARCHAR(50) NOT NULL,
        about TEXT NOT NULL,
	active TINYINT(1) UNSIGNED NOT NULL DEFAULT '1'
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;