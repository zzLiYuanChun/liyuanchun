-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2021-03-22 20:37:01
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `lyc`
--

-- --------------------------------------------------------

--
-- 表的结构 `comment_content`
--

CREATE TABLE `comment_content` (
  `id` int(11) NOT NULL,
  `author` varchar(16) NOT NULL,
  `content` varchar(128) NOT NULL,
  `release_time` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `first_admin`
--

CREATE TABLE `first_admin` (
  `id` int(11) NOT NULL,
  `pic_id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(8) NOT NULL,
  `sex` int(2) NOT NULL DEFAULT '0',
  `phone` int(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  `uname` varchar(32) NOT NULL COMMENT '昵称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `picture`
--

CREATE TABLE `picture` (
  `id` int(11) NOT NULL,
  `router` varchar(32) NOT NULL COMMENT '图片路径',
  `type` int(2) NOT NULL COMMENT '图片类型：0表示头像，1表示文章图片'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `second_admin`
--

CREATE TABLE `second_admin` (
  `id` int(11) NOT NULL,
  `pic_id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(8) NOT NULL,
  `sex` int(2) NOT NULL DEFAULT '0',
  `phone` int(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  `uname` varchar(32) NOT NULL COMMENT '昵称',
  `district` varchar(32) NOT NULL COMMENT '地区'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `district` varchar(8) NOT NULL COMMENT '区域',
  `type` varchar(8) NOT NULL DEFAULT '豫剧' COMMENT '分类信息',
  `startTime` date NOT NULL,
  `endTime` date NOT NULL,
  `price` double NOT NULL,
  `location_shi` varchar(8) NOT NULL COMMENT '市级',
  `location_qu` varchar(8) NOT NULL COMMENT '地级区',
  `identification_code` varchar(16) NOT NULL COMMENT '识别码',
  `duration` int(11) NOT NULL COMMENT '节目时长'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `pic_id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(8) NOT NULL,
  `sex` int(2) NOT NULL DEFAULT '0',
  `phone` int(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  `uname` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `author` varchar(16) NOT NULL,
  `uploadTime` date NOT NULL,
  `type1` int(2) NOT NULL DEFAULT '1' COMMENT '普通视频',
  `type2` int(2) NOT NULL DEFAULT '2' COMMENT 'VIP视频'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `vip_user`
--

CREATE TABLE `vip_user` (
  `id` int(11) NOT NULL,
  `pic_id` int(11) NOT NULL,
  `vip_id` int(11) NOT NULL,
  `vip_vid` int(11) NOT NULL,
  `usename` varchar(32) NOT NULL,
  `password` varchar(8) NOT NULL,
  `sex` int(2) NOT NULL DEFAULT '0',
  `phone` int(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  `uname` varchar(32) NOT NULL,
  `startTime` date NOT NULL DEFAULT '2021-03-22'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转储表的索引
--

--
-- 表的索引 `comment_content`
--
ALTER TABLE `comment_content`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `first_admin`
--
ALTER TABLE `first_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fpicid` (`pic_id`);

--
-- 表的索引 `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `second_admin`
--
ALTER TABLE `second_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spicid` (`pic_id`);

--
-- 表的索引 `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `userid` (`user_id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upicid` (`pic_id`);

--
-- 表的索引 `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `vip_user`
--
ALTER TABLE `vip_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vpicid` (`pic_id`),
  ADD KEY `vipvid` (`vip_vid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `comment_content`
--
ALTER TABLE `comment_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `first_admin`
--
ALTER TABLE `first_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `picture`
--
ALTER TABLE `picture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `second_admin`
--
ALTER TABLE `second_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `vip_user`
--
ALTER TABLE `vip_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 限制导出的表
--

--
-- 限制表 `first_admin`
--
ALTER TABLE `first_admin`
  ADD CONSTRAINT `fpicid` FOREIGN KEY (`pic_id`) REFERENCES `picture` (`id`);

--
-- 限制表 `second_admin`
--
ALTER TABLE `second_admin`
  ADD CONSTRAINT `spicid` FOREIGN KEY (`pic_id`) REFERENCES `picture` (`id`);

--
-- 限制表 `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `use_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `userid` FOREIGN KEY (`user_id`) REFERENCES `vip_user` (`id`);

--
-- 限制表 `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `upicid` FOREIGN KEY (`pic_id`) REFERENCES `picture` (`id`);

--
-- 限制表 `vip_user`
--
ALTER TABLE `vip_user`
  ADD CONSTRAINT `vipvid` FOREIGN KEY (`vip_vid`) REFERENCES `video` (`id`),
  ADD CONSTRAINT `vpicid` FOREIGN KEY (`pic_id`) REFERENCES `picture` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
