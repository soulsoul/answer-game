/*
Navicat MySQL Data Transfer

Source Server         : mysql57
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2018-03-05 15:28:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `annualmeetinggamequestion`
-- ----------------------------
DROP TABLE IF EXISTS `annualmeetinggamequestion`;
CREATE TABLE `annualmeetinggamequestion` (
  `id` int(11) NOT NULL,
  `topic` longtext,
  `answer_one` longtext,
  `answer_two` longtext,
  `answer_three` longtext,
  `answer_four` longtext,
  `right_answer` tinyint(4) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of annualmeetinggamequestion
-- ----------------------------
INSERT INTO `annualmeetinggamequestion` VALUES ('14', 'topic2', 'AnswerOne2', 'AnswerTwo2', 'AnswerThree2', 'AnswerFour2', '2', '2018-03-01');
INSERT INTO `annualmeetinggamequestion` VALUES ('15', 'topic3', 'AnswerOne3', 'AnswerTwo3', 'AnswerThree3', 'AnswerFour3', '1', '2018-03-01');
INSERT INTO `annualmeetinggamequestion` VALUES ('16', 'topic4', 'AnswerOne4', 'AnswerTwo4', 'AnswerThree4', 'AnswerFour4', '2', '2018-03-01');
INSERT INTO `annualmeetinggamequestion` VALUES ('17', 'topic5', 'AnswerOne5', 'AnswerTwo5', 'AnswerThree5', 'AnswerFour5', '1', '2018-03-01');
INSERT INTO `annualmeetinggamequestion` VALUES ('18', 'topic6', 'AnswerOne6', 'AnswerTwo6', 'AnswerThree6', 'AnswerFour6', '2', '2018-03-01');
INSERT INTO `annualmeetinggamequestion` VALUES ('19', 'topic7', 'AnswerOne7', 'AnswerTwo7', 'AnswerThree7', 'AnswerFour7', '1', '2018-03-01');
INSERT INTO `annualmeetinggamequestion` VALUES ('20', 'topic8', 'AnswerOne8', 'AnswerTwo8', 'AnswerThree8', 'AnswerFour8', '2', '2018-03-01');
INSERT INTO `annualmeetinggamequestion` VALUES ('21', 'topic9', 'AnswerOne9', 'AnswerTwo9', 'AnswerThree9', 'AnswerFour9', '1', '2018-03-01');
INSERT INTO `annualmeetinggamequestion` VALUES ('22', 'topic10', 'AnswerOne10', 'AnswerTwo10', 'AnswerThree10', 'AnswerFour10', '2', '2018-03-01');
INSERT INTO `annualmeetinggamequestion` VALUES ('23', 'topic11', 'AnswerOne11', 'AnswerTwo11', 'AnswerThree11', 'AnswerFour11', '1', '2018-03-01');
INSERT INTO `annualmeetinggamequestion` VALUES ('24', 'topic12', 'AnswerOne12', 'AnswerTwo12', 'AnswerThree12', 'AnswerFour12', '2', '2018-03-01');
INSERT INTO `annualmeetinggamequestion` VALUES ('25', 'topic13', 'AnswerOne13', 'AnswerTwo13', 'AnswerThree13', 'AnswerFour13', '1', '2018-03-01');
INSERT INTO `annualmeetinggamequestion` VALUES ('26', 'topic14', 'AnswerOne14', 'AnswerTwo14', 'AnswerThree14', 'AnswerFour14', '2', '2018-03-01');
