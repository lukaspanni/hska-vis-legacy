CREATE DATABASE webshop;

CREATE user 'webshopuser'@'%' IDENTIFIED BY '240b2c6d58ff2ce2f508b49f';
GRANT ALL on webshop.* to 'webshopuser'@'%';

USE webshop;

CREATE TABLE role (
	id INT NOT NULL AUTO_INCREMENT,
	level1 INT,
	type VARCHAR(255),
	PRIMARY KEY (id)
) ENGINE=InnoDB;


CREATE TABLE customer (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	lastname VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	username VARCHAR(255) NOT NULL,
	role INT NOT NULL,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE UNIQUE INDEX UK_mufchskagt7e1w4ksmt9lum5l ON customer (username ASC);
CREATE INDEX FK74aoh99stptslhotgf41fitt0 ON customer (role ASC);

insert into `role` (`level1`, `type`) values(0, 'admin');
insert into `role` (`level1`, `type`) values(1, 'user');

insert into `customer` (`name`, `lastname`, `password`, `username`, `role`) values('admin', 'admin', 'admin', 'admin', 1);


-- CREATE TABLE product (
-- 	id INT NOT NULL AUTO_INCREMENT,
-- 	details VARCHAR(255),
-- 	name VARCHAR(255),
-- 	price DOUBLE,
-- 	category_id INT,
-- 	PRIMARY KEY (id)
-- ) ENGINE=InnoDB;

-- CREATE TABLE category (
-- 	id INT NOT NULL AUTO_INCREMENT,
-- 	name VARCHAR(255) NOT NULL,
-- 	PRIMARY KEY (id)
-- ) ENGINE=InnoDB;

-- CREATE INDEX FK1mtsbur82frn64de7balymq9s ON product (category_id ASC);
