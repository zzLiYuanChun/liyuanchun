SET NAMES UTF8;
DROP DATABASE IF EXISTS lyc;
CREATE DATABASE lyc CHARSET=UTF8;
USE lyc;


/**笔记本电脑型号家族**/
CREATE TABLE first_admin(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pic_id INT PRIMARY KEY AUTO_INCREMENT,
  username varchar(16),
  password varchar(16),
  email varchar(32),
);


CREATE TABLE picture(
  id INT PRIMARY KEY AUTO_INCREMENT,
  router varchar(16),
  type varchar(16),
);

/**笔记本电脑图片**/
CREATE TABLE second_adm(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pic_id INT PRIMARY KEY AUTO_INCREMENT,
  sex INT,
  username varchar(16),
  password varchar(16),
  email varchar(32),
  head_portrait varchar(16),
  uname varchar(32),
  phone varchar(16),
  district varchar(16),
);

CREATE TABLE comment_content(
  id INT PRIMARY KEY AUTO_INCREMENT,
  author varchar(32),
  content ,
  release_time varchar(32)
);

CREATE TABLE user(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pic_id INT PRIMARY KEY AUTO_INCREMENT,
  sex INT,
  username varchar(16),
  password varchar(16),
  uname varchar(32),
  phone varchar(16),
  email varchar(32),
  head_portrait varchar(16),
  it varchar(64),
);

CREATE TABLE ticket(
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  district varchar(16),
  type varchar(16),
  title varchar(16),
  time varchar(32),
  price declmal(6,2),
  location varchar(32),
  identification_code varchar(16),
  duration varchar(16)
);