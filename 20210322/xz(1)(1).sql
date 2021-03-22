SET NAMES UTF8;
DROP DATABASE IF EXISTS lyc;
CREATE DATABASE lyc CHARSET=UTF8;
USE lyc;


/**vip用户**/
CREATE TABLE vip_user(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pic_id INT,
  username VARCHAR(16),
  vip_password VARCHAR(16),      #密码
  email VARCHAR(32),        #邮箱
  head_portrait VARCHAR(32),  
  uname VARCHAR(16),         
  phone CHAR(11),
  sex BOOLEAN,
  vipId INT,
  startTime DATETIME,
  endTime DATETIME,
);

/**视频**/
CREATE TABLE video(
  id INT PRIMARY KEY AUTO_INCREMENT,
  vipId INT,         
  author VARCHAR(16),  
  uploadTime DATETIME, 
  type1 VARCHAR(128),
  type2 VARCHAR(128),
);





