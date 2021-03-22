SET NAMES UTF8;
DROP DATABASE IF EXISTS lyc;
CREATE DATABASE lyc CHARSET=UTF8;
USE lyc;

CREATE TABLE picture(
  id INT PRIMARY KEY AUTO_INCREMENT,
  router varchar(255),
  types varchar(255)
);

CREATE TABLE first_admin(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pic_id INT PRIMARY KEY AUTO_INCREMENT,
  username varchar(16),
  userpassword varchar(16),
  email varchar(32),
  foreign KEY(pic_id) references price(id) 
);

CREATE TABLE second_admin(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pic_id INT PRIMARY KEY AUTO_INCREMENT,
  sex boolen,
  username varchar(16),
  userpassword varchar(16),
  email varchar(32),
  head_portrait varchar(16),
  uname varchar(16),
  phone varchar(11),
  district varchar(16),
  foreign KEY(pic_id) references price(id)
);

CREATE TABLE comment_content(
  id INT PRIMARY KEY AUTO_INCREMENT,
  author varchar(32),
  content text,
  release_time datetime
);

CREATE TABLE user(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pic_id INT PRIMARY KEY AUTO_INCREMENT,
  sex boolen,
  username varchar(16),
  userpassword varchar(16),
  uname varchar(32),
  phone varchar(11),
  email varchar(32),
  head_portrait varchar(16),
  it varchar(64),
  foreign KEY(pic_id) references price(id)
);

CREATE TABLE ticket(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname_id INT PRIMARY KEY AUTO_INCREMENT,
  district varchar(16),
  types varchar(16),
  title varchar(16),
  time1 datetime,
  price declmal(6,2),
  locations varchar(32),
  identification_code varchar(16),
  duration varchar(16),
  foreign KEY(pic_id) references user(id),
  foreign KEY(pic_id) references vip_user(id)
);
CREATE TABLE vip_user(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pic_id INT,
  username VARCHAR(16),
  vip_password VARCHAR(16),      #密码
  email VARCHAR(32),        #邮箱
  head_portrait VARCHAR(32),  
  uname VARCHAR(16),         
  phone CHAR(11),
  sex tinyint,
  vipId INT,
  startTime DATETIME,
  endTime DATETIME,
  foreign KEY(pic_id) references price(id)
);

/**视频**/
CREATE TABLE video(
  id INT PRIMARY KEY AUTO_INCREMENT,
  vipId INT,         
  author VARCHAR(16),  
  uploadTime DATETIME, 
  type1 VARCHAR(128),
  type2 VARCHAR(128),
  foreign KEY(video) references vip_user(id);
);