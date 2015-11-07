
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-11-2015 a las 23:08:03
-- Versión del servidor: 10.0.20-MariaDB
-- Versión de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `u977901692_modle`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_assign`
--

CREATE TABLE IF NOT EXISTS `mdl_assign` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `alwaysshowdescription` tinyint(2) NOT NULL DEFAULT '0',
  `nosubmissions` tinyint(2) NOT NULL DEFAULT '0',
  `submissiondrafts` tinyint(2) NOT NULL DEFAULT '0',
  `sendnotifications` tinyint(2) NOT NULL DEFAULT '0',
  `sendlatenotifications` tinyint(2) NOT NULL DEFAULT '0',
  `duedate` bigint(10) NOT NULL DEFAULT '0',
  `allowsubmissionsfromdate` bigint(10) NOT NULL DEFAULT '0',
  `grade` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `requiresubmissionstatement` tinyint(2) NOT NULL DEFAULT '0',
  `completionsubmit` tinyint(2) NOT NULL DEFAULT '0',
  `cutoffdate` bigint(10) NOT NULL DEFAULT '0',
  `teamsubmission` tinyint(2) NOT NULL DEFAULT '0',
  `requireallteammemberssubmit` tinyint(2) NOT NULL DEFAULT '0',
  `teamsubmissiongroupingid` bigint(10) NOT NULL DEFAULT '0',
  `blindmarking` tinyint(2) NOT NULL DEFAULT '0',
  `revealidentities` tinyint(2) NOT NULL DEFAULT '0',
  `attemptreopenmethod` varchar(10) NOT NULL DEFAULT 'none',
  `maxattempts` mediumint(6) NOT NULL DEFAULT '-1',
  `markingworkflow` tinyint(2) NOT NULL DEFAULT '0',
  `markingallocation` tinyint(2) NOT NULL DEFAULT '0',
  `sendstudentnotifications` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_assi_cou_ix` (`course`),
  KEY `mdl_assi_tea_ix` (`teamsubmissiongroupingid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='This table saves information about an instance of mod_assign' AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `mdl_assign`
--

INSERT INTO `mdl_assign` (`id`, `course`, `name`, `intro`, `introformat`, `alwaysshowdescription`, `nosubmissions`, `submissiondrafts`, `sendnotifications`, `sendlatenotifications`, `duedate`, `allowsubmissionsfromdate`, `grade`, `timemodified`, `requiresubmissionstatement`, `completionsubmit`, `cutoffdate`, `teamsubmission`, `requireallteammemberssubmit`, `teamsubmissiongroupingid`, `blindmarking`, `revealidentities`, `attemptreopenmethod`, `maxattempts`, `markingworkflow`, `markingallocation`, `sendstudentnotifications`) VALUES
(1, 6, 'Tarea 1', '<p>Agregar sus archivos de tarea</p>', 1, 1, 0, 0, 0, 0, 1432440000, 1429243200, 100, 1430841471, 0, 0, 0, 0, 0, 0, 0, 0, 'none', -1, 0, 0, 1),
(2, 8, 'tarea 2.1', '<p>Descripcion de redes</p>', 1, 1, 0, 0, 0, 0, 1431993600, 1431388800, 100, 1431456310, 0, 0, 0, 0, 0, 0, 0, 0, 'none', -1, 0, 0, 1),
(3, 8, 'Monitoreo', '<p>Realizar un monitoreo</p>', 1, 1, 0, 0, 0, 0, 1443114000, 1442534400, 100, 1443110202, 0, 0, 0, 0, 0, 0, 0, 0, 'none', -1, 0, 0, 1),
(4, 6, 'Diseño', '<p>Diseño de la pagina anterior</p>', 1, 1, 0, 0, 0, 0, 1451692800, 1441152000, 100, 1443039117, 0, 0, 0, 0, 0, 0, 0, 0, 'none', -1, 0, 0, 1),
(5, 6, 'Css responsivo', 'Se tendrá que realizar el css para movil', 1, 1, 0, 0, 0, 0, 1444176000, 1441238400, 100, 1443035897, 0, 0, 0, 0, 0, 0, 0, 0, 'none', -1, 0, 0, 1),
(6, 8, 'Cuestionario de Protocolos', '<p>Crear 10 pregunas sobre los protocolos de redes.</p>', 1, 1, 0, 0, 0, 0, 1443193200, 1443052800, 100, 1443109714, 0, 0, 0, 0, 0, 0, 0, 0, 'none', -1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_assignfeedback_comments`
--

CREATE TABLE IF NOT EXISTS `mdl_assignfeedback_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `grade` bigint(10) NOT NULL DEFAULT '0',
  `commenttext` longtext,
  `commentformat` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assicomm_ass_ix` (`assignment`),
  KEY `mdl_assicomm_gra_ix` (`grade`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Text feedback for submitted assignments' AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `mdl_assignfeedback_comments`
--

INSERT INTO `mdl_assignfeedback_comments` (`id`, `assignment`, `grade`, `commenttext`, `commentformat`) VALUES
(1, 1, 1, '', 1),
(2, 1, 2, '', 1),
(3, 2, 3, 'esta muy mal', 0),
(4, 3, 4, '', 0),
(5, 3, 5, '', 0),
(6, 3, 6, '', 0),
(9, 3, 9, '', 0),
(7, 6, 7, 'NO Se Envia', 0),
(8, 3, 8, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_assignfeedback_editpdf_annot`
--

CREATE TABLE IF NOT EXISTS `mdl_assignfeedback_editpdf_annot` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `gradeid` bigint(10) NOT NULL DEFAULT '0',
  `pageno` bigint(10) NOT NULL DEFAULT '0',
  `x` bigint(10) DEFAULT '0',
  `y` bigint(10) DEFAULT '0',
  `endx` bigint(10) DEFAULT '0',
  `endy` bigint(10) DEFAULT '0',
  `path` longtext,
  `type` varchar(10) DEFAULT 'line',
  `colour` varchar(10) DEFAULT 'black',
  `draft` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_assieditanno_grapag_ix` (`gradeid`,`pageno`),
  KEY `mdl_assieditanno_gra_ix` (`gradeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='stores annotations added to pdfs submitted by students' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_assignfeedback_editpdf_cmnt`
--

CREATE TABLE IF NOT EXISTS `mdl_assignfeedback_editpdf_cmnt` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `gradeid` bigint(10) NOT NULL DEFAULT '0',
  `x` bigint(10) DEFAULT '0',
  `y` bigint(10) DEFAULT '0',
  `width` bigint(10) DEFAULT '120',
  `rawtext` longtext,
  `pageno` bigint(10) NOT NULL DEFAULT '0',
  `colour` varchar(10) DEFAULT 'black',
  `draft` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_assieditcmnt_grapag_ix` (`gradeid`,`pageno`),
  KEY `mdl_assieditcmnt_gra_ix` (`gradeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores comments added to pdfs' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_assignfeedback_editpdf_quick`
--

CREATE TABLE IF NOT EXISTS `mdl_assignfeedback_editpdf_quick` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `rawtext` longtext NOT NULL,
  `width` bigint(10) NOT NULL DEFAULT '120',
  `colour` varchar(10) DEFAULT 'yellow',
  PRIMARY KEY (`id`),
  KEY `mdl_assieditquic_use_ix` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores teacher specified quicklist comments' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_assignfeedback_file`
--

CREATE TABLE IF NOT EXISTS `mdl_assignfeedback_file` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `grade` bigint(10) NOT NULL DEFAULT '0',
  `numfiles` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assifile_ass2_ix` (`assignment`),
  KEY `mdl_assifile_gra_ix` (`grade`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores info about the number of files submitted by a student' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_assignment`
--

CREATE TABLE IF NOT EXISTS `mdl_assignment` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `assignmenttype` varchar(50) NOT NULL DEFAULT '',
  `resubmit` tinyint(2) NOT NULL DEFAULT '0',
  `preventlate` tinyint(2) NOT NULL DEFAULT '0',
  `emailteachers` tinyint(2) NOT NULL DEFAULT '0',
  `var1` bigint(10) DEFAULT '0',
  `var2` bigint(10) DEFAULT '0',
  `var3` bigint(10) DEFAULT '0',
  `var4` bigint(10) DEFAULT '0',
  `var5` bigint(10) DEFAULT '0',
  `maxbytes` bigint(10) NOT NULL DEFAULT '100000',
  `timedue` bigint(10) NOT NULL DEFAULT '0',
  `timeavailable` bigint(10) NOT NULL DEFAULT '0',
  `grade` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assi_cou2_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines assignments' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_assignment_submissions`
--

CREATE TABLE IF NOT EXISTS `mdl_assignment_submissions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `numfiles` bigint(10) NOT NULL DEFAULT '0',
  `data1` longtext,
  `data2` longtext,
  `grade` bigint(11) NOT NULL DEFAULT '0',
  `submissioncomment` longtext NOT NULL,
  `format` smallint(4) NOT NULL DEFAULT '0',
  `teacher` bigint(10) NOT NULL DEFAULT '0',
  `timemarked` bigint(10) NOT NULL DEFAULT '0',
  `mailed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assisubm_use2_ix` (`userid`),
  KEY `mdl_assisubm_mai_ix` (`mailed`),
  KEY `mdl_assisubm_tim_ix` (`timemarked`),
  KEY `mdl_assisubm_ass2_ix` (`assignment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about submitted assignments' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_assignment_upgrade`
--

CREATE TABLE IF NOT EXISTS `mdl_assignment_upgrade` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `oldcmid` bigint(10) NOT NULL DEFAULT '0',
  `oldinstance` bigint(10) NOT NULL DEFAULT '0',
  `newcmid` bigint(10) NOT NULL DEFAULT '0',
  `newinstance` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assiupgr_old_ix` (`oldcmid`),
  KEY `mdl_assiupgr_old2_ix` (`oldinstance`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about upgraded assignments' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_assignsubmission_file`
--

CREATE TABLE IF NOT EXISTS `mdl_assignsubmission_file` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `submission` bigint(10) NOT NULL DEFAULT '0',
  `numfiles` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assifile_ass_ix` (`assignment`),
  KEY `mdl_assifile_sub_ix` (`submission`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Info about file submissions for assignments' AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `mdl_assignsubmission_file`
--

INSERT INTO `mdl_assignsubmission_file` (`id`, `assignment`, `submission`, `numfiles`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 2, 3, 1),
(4, 3, 4, 0),
(5, 3, 5, 0),
(6, 6, 6, 0),
(7, 3, 7, 0),
(8, 3, 8, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_assignsubmission_onlinetext`
--

CREATE TABLE IF NOT EXISTS `mdl_assignsubmission_onlinetext` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `submission` bigint(10) NOT NULL DEFAULT '0',
  `onlinetext` longtext,
  `onlineformat` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assionli_ass_ix` (`assignment`),
  KEY `mdl_assionli_sub_ix` (`submission`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Info about onlinetext submission' AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `mdl_assignsubmission_onlinetext`
--

INSERT INTO `mdl_assignsubmission_onlinetext` (`id`, `assignment`, `submission`, `onlinetext`, `onlineformat`) VALUES
(1, 3, 4, '<p>Esta es mi tarea</p>', 1),
(2, 3, 5, '<p>Profe buenas noches, no he terminado mi tarea aún, se la envio a su correo, Gracias!!! :)</p>', 1),
(3, 6, 6, 'La tarea del Profe', 1),
(4, 3, 7, '<span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">El término Monitoreo de red</span><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;describe el uso de un sistema que constantemente monitoriza una&nbsp;</span><a href="https://es.wikipedia.org/wiki/Red_de_computadoras" title="Red de computadoras" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">r</a>ed de computadoras<span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;en busca de componentes defectuosos o lentos.</span>', 1),
(5, 3, 8, '<p>hola hola 7/10/2015</p>', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_assign_grades`
--

CREATE TABLE IF NOT EXISTS `mdl_assign_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `grader` bigint(10) NOT NULL DEFAULT '0',
  `grade` decimal(10,5) DEFAULT '0.00000',
  `attemptnumber` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_assigrad_assuseatt_uix` (`assignment`,`userid`,`attemptnumber`),
  KEY `mdl_assigrad_use_ix` (`userid`),
  KEY `mdl_assigrad_att_ix` (`attemptnumber`),
  KEY `mdl_assigrad_ass_ix` (`assignment`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Grading information about a single assignment submission.' AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `mdl_assign_grades`
--

INSERT INTO `mdl_assign_grades` (`id`, `assignment`, `userid`, `timecreated`, `timemodified`, `grader`, `grade`, `attemptnumber`) VALUES
(1, 1, 3, 1431014319, 1443469344, 3, '88.00000', 0),
(2, 1, 9, 1431014361, 1443469175, 3, '100.00000', 0),
(3, 2, 9, 1443110536, 1443547220, 3, '59.00000', 0),
(4, 3, 12, 1443467507, 1444747963, 3, '0.00000', 0),
(8, 3, 9, 1444242064, 1444747903, 3, '80.00000', 0),
(6, 3, 10, 1443559741, 1444748227, 3, '90.00000', 0),
(7, 6, 3, 1443800528, 1443800578, 3, '60.00000', 0),
(9, 3, 14, 1444319459, 1444322825, 3, '94.00000', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_assign_plugin_config`
--

CREATE TABLE IF NOT EXISTS `mdl_assign_plugin_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `plugin` varchar(28) NOT NULL DEFAULT '',
  `subtype` varchar(28) NOT NULL DEFAULT '',
  `name` varchar(28) NOT NULL DEFAULT '',
  `value` longtext,
  PRIMARY KEY (`id`),
  KEY `mdl_assiplugconf_plu_ix` (`plugin`),
  KEY `mdl_assiplugconf_sub_ix` (`subtype`),
  KEY `mdl_assiplugconf_nam_ix` (`name`),
  KEY `mdl_assiplugconf_ass_ix` (`assignment`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Config data for an instance of a plugin in an assignment.' AUTO_INCREMENT=65 ;

--
-- Volcado de datos para la tabla `mdl_assign_plugin_config`
--

INSERT INTO `mdl_assign_plugin_config` (`id`, `assignment`, `plugin`, `subtype`, `name`, `value`) VALUES
(1, 1, 'onlinetext', 'assignsubmission', 'enabled', '0'),
(2, 1, 'file', 'assignsubmission', 'enabled', '1'),
(3, 1, 'file', 'assignsubmission', 'maxfilesubmissions', '1'),
(4, 1, 'file', 'assignsubmission', 'maxsubmissionsizebytes', '0'),
(5, 1, 'comments', 'assignsubmission', 'enabled', '1'),
(6, 1, 'comments', 'assignfeedback', 'enabled', '1'),
(7, 1, 'comments', 'assignfeedback', 'commentinline', '0'),
(8, 1, 'editpdf', 'assignfeedback', 'enabled', '0'),
(9, 1, 'offline', 'assignfeedback', 'enabled', '0'),
(10, 1, 'file', 'assignfeedback', 'enabled', '0'),
(11, 2, 'onlinetext', 'assignsubmission', 'enabled', '0'),
(12, 2, 'file', 'assignsubmission', 'enabled', '1'),
(13, 2, 'file', 'assignsubmission', 'maxfilesubmissions', '1'),
(14, 2, 'file', 'assignsubmission', 'maxsubmissionsizebytes', '0'),
(15, 2, 'comments', 'assignsubmission', 'enabled', '1'),
(16, 2, 'comments', 'assignfeedback', 'enabled', '1'),
(17, 2, 'comments', 'assignfeedback', 'commentinline', '0'),
(18, 2, 'editpdf', 'assignfeedback', 'enabled', '0'),
(19, 2, 'offline', 'assignfeedback', 'enabled', '0'),
(20, 2, 'file', 'assignfeedback', 'enabled', '0'),
(21, 3, 'onlinetext', 'assignsubmission', 'enabled', '1'),
(22, 3, 'onlinetext', 'assignsubmission', 'wordlimit', '0'),
(23, 3, 'onlinetext', 'assignsubmission', 'wordlimitenabled', '0'),
(24, 3, 'file', 'assignsubmission', 'enabled', '1'),
(25, 3, 'file', 'assignsubmission', 'maxfilesubmissions', '1'),
(26, 3, 'file', 'assignsubmission', 'maxsubmissionsizebytes', '10240'),
(27, 3, 'comments', 'assignsubmission', 'enabled', '1'),
(28, 3, 'comments', 'assignfeedback', 'enabled', '1'),
(29, 3, 'comments', 'assignfeedback', 'commentinline', '0'),
(30, 3, 'editpdf', 'assignfeedback', 'enabled', '0'),
(31, 3, 'offline', 'assignfeedback', 'enabled', '0'),
(32, 3, 'file', 'assignfeedback', 'enabled', '0'),
(33, 4, 'onlinetext', 'assignsubmission', 'enabled', '0'),
(34, 4, 'file', 'assignsubmission', 'enabled', '1'),
(35, 4, 'file', 'assignsubmission', 'maxfilesubmissions', '1'),
(36, 4, 'file', 'assignsubmission', 'maxsubmissionsizebytes', '0'),
(37, 4, 'comments', 'assignsubmission', 'enabled', '1'),
(38, 4, 'comments', 'assignfeedback', 'enabled', '1'),
(39, 4, 'comments', 'assignfeedback', 'commentinline', '0'),
(40, 4, 'editpdf', 'assignfeedback', 'enabled', '0'),
(41, 4, 'offline', 'assignfeedback', 'enabled', '0'),
(42, 4, 'file', 'assignfeedback', 'enabled', '0'),
(43, 5, 'onlinetext', 'assignsubmission', 'enabled', '0'),
(44, 5, 'file', 'assignsubmission', 'enabled', '1'),
(45, 5, 'file', 'assignsubmission', 'maxfilesubmissions', '1'),
(46, 5, 'file', 'assignsubmission', 'maxsubmissionsizebytes', '0'),
(47, 5, 'comments', 'assignsubmission', 'enabled', '1'),
(48, 5, 'comments', 'assignfeedback', 'enabled', '1'),
(49, 5, 'comments', 'assignfeedback', 'commentinline', '0'),
(50, 5, 'editpdf', 'assignfeedback', 'enabled', '0'),
(51, 5, 'offline', 'assignfeedback', 'enabled', '0'),
(52, 5, 'file', 'assignfeedback', 'enabled', '0'),
(53, 6, 'onlinetext', 'assignsubmission', 'enabled', '1'),
(54, 6, 'onlinetext', 'assignsubmission', 'wordlimit', '0'),
(55, 6, 'onlinetext', 'assignsubmission', 'wordlimitenabled', '0'),
(56, 6, 'file', 'assignsubmission', 'enabled', '1'),
(57, 6, 'file', 'assignsubmission', 'maxfilesubmissions', '1'),
(58, 6, 'file', 'assignsubmission', 'maxsubmissionsizebytes', '0'),
(59, 6, 'comments', 'assignsubmission', 'enabled', '1'),
(60, 6, 'comments', 'assignfeedback', 'enabled', '1'),
(61, 6, 'comments', 'assignfeedback', 'commentinline', '0'),
(62, 6, 'editpdf', 'assignfeedback', 'enabled', '0'),
(63, 6, 'offline', 'assignfeedback', 'enabled', '0'),
(64, 6, 'file', 'assignfeedback', 'enabled', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_assign_submission`
--

CREATE TABLE IF NOT EXISTS `mdl_assign_submission` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `status` varchar(10) DEFAULT NULL,
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `attemptnumber` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_assisubm_assusegroatt_uix` (`assignment`,`userid`,`groupid`,`attemptnumber`),
  KEY `mdl_assisubm_use_ix` (`userid`),
  KEY `mdl_assisubm_att_ix` (`attemptnumber`),
  KEY `mdl_assisubm_ass_ix` (`assignment`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='This table keeps information about student interactions with' AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `mdl_assign_submission`
--

INSERT INTO `mdl_assign_submission` (`id`, `assignment`, `userid`, `timecreated`, `timemodified`, `status`, `groupid`, `attemptnumber`) VALUES
(1, 1, 3, 1430848060, 1430848060, 'submitted', 0, 0),
(2, 1, 9, 1430848183, 1430848183, 'submitted', 0, 0),
(3, 2, 9, 1441043360, 1441043360, 'submitted', 0, 0),
(4, 3, 10, 1443112088, 1443112088, 'submitted', 0, 0),
(5, 3, 12, 1443197416, 1443197417, 'submitted', 0, 0),
(6, 6, 3, 1443800411, 1443800411, 'submitted', 0, 0),
(7, 3, 9, 1444141380, 1444141380, 'submitted', 0, 0),
(8, 3, 14, 1444243575, 1444243575, 'submitted', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_assign_user_flags`
--

CREATE TABLE IF NOT EXISTS `mdl_assign_user_flags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `locked` bigint(10) NOT NULL DEFAULT '0',
  `mailed` smallint(4) NOT NULL DEFAULT '0',
  `extensionduedate` bigint(10) NOT NULL DEFAULT '0',
  `workflowstate` varchar(20) DEFAULT NULL,
  `allocatedmarker` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assiuserflag_mai_ix` (`mailed`),
  KEY `mdl_assiuserflag_use_ix` (`userid`),
  KEY `mdl_assiuserflag_ass_ix` (`assignment`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='List of flags that can be set for a single user in a single ' AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `mdl_assign_user_flags`
--

INSERT INTO `mdl_assign_user_flags` (`id`, `userid`, `assignment`, `locked`, `mailed`, `extensionduedate`, `workflowstate`, `allocatedmarker`) VALUES
(1, 3, 1, 0, 0, 0, '', 0),
(2, 9, 1, 0, 0, 0, '', 0),
(3, 9, 2, 0, 0, 0, 'graded', 0),
(4, 12, 3, 0, 0, 0, 'graded', 0),
(5, 11, 3, 0, 0, 0, 'graded', 0),
(6, 10, 3, 0, 0, 0, 'graded', 0),
(7, 3, 6, 0, 0, 0, 'graded', 0),
(8, 9, 3, 0, 0, 0, 'graded', 0),
(9, 14, 3, 0, 0, 0, 'graded', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_assign_user_mapping`
--

CREATE TABLE IF NOT EXISTS `mdl_assign_user_mapping` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assiusermapp_ass_ix` (`assignment`),
  KEY `mdl_assiusermapp_use_ix` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Map an assignment specific id number to a user' AUTO_INCREMENT=44 ;

--
-- Volcado de datos para la tabla `mdl_assign_user_mapping`
--

INSERT INTO `mdl_assign_user_mapping` (`id`, `assignment`, `userid`) VALUES
(1, 0, 3),
(2, 0, 9),
(3, 0, 6),
(4, 0, 7),
(5, 1, -10),
(6, 0, 6),
(7, 0, 9),
(8, 0, 3),
(9, 0, 7),
(10, 1, 9),
(11, 0, 6),
(12, 0, 7),
(13, 0, 3),
(14, 1, 3),
(15, 0, 7),
(16, 0, 6),
(17, 1, 6),
(18, 0, 3),
(19, 0, 9),
(20, 2, -10),
(21, 0, 9),
(22, 0, 3),
(23, 2, 9),
(24, 0, 3),
(25, 0, 10),
(26, 0, 9),
(27, 3, -10),
(28, 0, 9),
(29, 0, 12),
(30, 0, 10),
(31, 0, 3),
(32, 6, -10),
(33, 0, 3),
(34, 0, 9),
(35, 0, 12),
(36, 0, 10),
(37, 6, 3),
(38, 0, 12),
(39, 0, 9),
(40, 0, 3),
(41, 0, 10),
(42, 0, 14),
(43, 3, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_context`
--

CREATE TABLE IF NOT EXISTS `mdl_context` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextlevel` bigint(10) NOT NULL DEFAULT '0',
  `instanceid` bigint(10) NOT NULL DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  `depth` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_cont_conins_uix` (`contextlevel`,`instanceid`),
  KEY `mdl_cont_ins_ix` (`instanceid`),
  KEY `mdl_cont_pat_ix` (`path`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='one of these must be set' AUTO_INCREMENT=132 ;

--
-- Volcado de datos para la tabla `mdl_context`
--

INSERT INTO `mdl_context` (`id`, `contextlevel`, `instanceid`, `path`, `depth`) VALUES
(1, 10, 0, '/1', 1),
(2, 50, 1, '/1/2', 2),
(4, 30, 1, '/1/4', 2),
(5, 30, 2, '/1/5', 2),
(6, 80, 1, '/1/2/6', 3),
(7, 80, 2, '/1/2/7', 3),
(8, 80, 3, '/1/2/8', 3),
(9, 80, 4, '/1/9', 2),
(10, 80, 5, '/1/10', 2),
(11, 80, 6, '/1/11', 2),
(12, 80, 7, '/1/12', 2),
(13, 80, 8, '/1/13', 2),
(14, 80, 9, '/1/14', 2),
(60, 50, 6, '/1/31/60', 3),
(61, 80, 29, '/1/31/60/61', 4),
(62, 80, 30, '/1/31/60/62', 4),
(63, 80, 31, '/1/31/60/63', 4),
(64, 80, 32, '/1/31/60/64', 4),
(119, 70, 22, '/1/31/60/119', 4),
(21, 80, 14, '/1/5/21', 3),
(22, 80, 15, '/1/5/22', 3),
(23, 80, 16, '/1/5/23', 3),
(24, 30, 3, '/1/24', 2),
(31, 40, 2, '/1/31', 2),
(83, 30, 10, '/1/83', 2),
(123, 80, 61, '/1/84/123', 3),
(124, 80, 62, '/1/84/124', 3),
(125, 70, 25, '/1/31/75/125', 4),
(121, 70, 24, '/1/31/75/121', 4),
(120, 70, 23, '/1/31/60/120', 4),
(71, 70, 6, '/1/31/60/71', 4),
(72, 80, 37, '/1/24/72', 3),
(73, 80, 38, '/1/24/73', 3),
(74, 80, 39, '/1/24/74', 3),
(75, 50, 8, '/1/31/75', 3),
(76, 80, 40, '/1/31/75/76', 4),
(77, 80, 41, '/1/31/75/77', 4),
(78, 80, 42, '/1/31/75/78', 4),
(79, 80, 43, '/1/31/75/79', 4),
(95, 70, 14, '/1/31/75/95', 4),
(81, 30, 9, '/1/81', 2),
(82, 70, 8, '/1/31/60/82', 4),
(122, 80, 60, '/1/84/122', 3),
(84, 30, 11, '/1/84', 2),
(85, 50, 9, '/1/31/85', 3),
(86, 80, 44, '/1/31/85/86', 4),
(87, 80, 45, '/1/31/85/87', 4),
(88, 80, 46, '/1/31/85/88', 4),
(89, 80, 47, '/1/31/85/89', 4),
(90, 70, 9, '/1/31/85/90', 4),
(91, 70, 10, '/1/31/75/91', 4),
(92, 70, 11, '/1/31/85/92', 4),
(93, 70, 12, '/1/31/85/93', 4),
(94, 70, 13, '/1/31/75/94', 4),
(97, 70, 16, '/1/31/75/97', 4),
(98, 70, 17, '/1/31/75/98', 4),
(99, 70, 18, '/1/31/60/99', 4),
(100, 70, 19, '/1/31/60/100', 4),
(101, 30, 12, '/1/101', 2),
(102, 50, 10, '/1/31/102', 3),
(103, 80, 48, '/1/31/102/103', 4),
(104, 80, 49, '/1/31/102/104', 4),
(105, 80, 50, '/1/31/102/105', 4),
(106, 80, 51, '/1/31/102/106', 4),
(107, 70, 20, '/1/31/102/107', 4),
(108, 50, 11, '/1/31/108', 3),
(109, 80, 52, '/1/31/108/109', 4),
(110, 80, 53, '/1/31/108/110', 4),
(111, 80, 54, '/1/31/108/111', 4),
(112, 80, 55, '/1/31/108/112', 4),
(113, 70, 21, '/1/31/108/113', 4),
(126, 70, 26, '/1/31/75/126', 4),
(128, 70, 27, '/1/31/75/128', 4),
(130, 70, 29, '/1/31/75/130', 4),
(131, 30, 14, '/1/131', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_context_temp`
--

CREATE TABLE IF NOT EXISTS `mdl_context_temp` (
  `id` bigint(10) NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `depth` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used by build_context_path() in upgrade and cron to keep con';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_course`
--

CREATE TABLE IF NOT EXISTS `mdl_course` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `category` bigint(10) NOT NULL DEFAULT '0',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `fullname` varchar(254) NOT NULL DEFAULT '',
  `shortname` varchar(255) NOT NULL DEFAULT '',
  `idnumber` varchar(100) NOT NULL DEFAULT '',
  `summary` longtext,
  `summaryformat` tinyint(2) NOT NULL DEFAULT '0',
  `format` varchar(21) NOT NULL DEFAULT 'topics',
  `showgrades` tinyint(2) NOT NULL DEFAULT '1',
  `newsitems` mediumint(5) NOT NULL DEFAULT '1',
  `startdate` bigint(10) NOT NULL DEFAULT '0',
  `marker` bigint(10) NOT NULL DEFAULT '0',
  `maxbytes` bigint(10) NOT NULL DEFAULT '0',
  `legacyfiles` smallint(4) NOT NULL DEFAULT '0',
  `showreports` smallint(4) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `visibleold` tinyint(1) NOT NULL DEFAULT '1',
  `groupmode` smallint(4) NOT NULL DEFAULT '0',
  `groupmodeforce` smallint(4) NOT NULL DEFAULT '0',
  `defaultgroupingid` bigint(10) NOT NULL DEFAULT '0',
  `lang` varchar(30) NOT NULL DEFAULT '',
  `calendartype` varchar(30) NOT NULL DEFAULT '',
  `theme` varchar(50) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `requested` tinyint(1) NOT NULL DEFAULT '0',
  `enablecompletion` tinyint(1) NOT NULL DEFAULT '0',
  `completionnotify` tinyint(1) NOT NULL DEFAULT '0',
  `cacherev` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_cour_cat_ix` (`category`),
  KEY `mdl_cour_idn_ix` (`idnumber`),
  KEY `mdl_cour_sho_ix` (`shortname`),
  KEY `mdl_cour_sor_ix` (`sortorder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Central course table' AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `mdl_course`
--

INSERT INTO `mdl_course` (`id`, `category`, `sortorder`, `fullname`, `shortname`, `idnumber`, `summary`, `summaryformat`, `format`, `showgrades`, `newsitems`, `startdate`, `marker`, `maxbytes`, `legacyfiles`, `showreports`, `visible`, `visibleold`, `groupmode`, `groupmodeforce`, `defaultgroupingid`, `lang`, `calendartype`, `theme`, `timecreated`, `timemodified`, `requested`, `enablecompletion`, `completionnotify`, `cacherev`) VALUES
(1, 0, 1, 'Moodle', 'Moodle', '', '', 0, 'site', 1, 3, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, '', '', '', 1422298878, 1422381351, 0, 0, 0, 1445887621),
(6, 2, 10005, 'HTML y CSS', 'HTML', '', '', 1, 'topics', 1, 5, 1422853200, 1, 0, 0, 0, 1, 1, 0, 0, 0, '', '', '', 1428945098, 1428945098, 0, 0, 0, 1445887621),
(8, 2, 10004, 'Administración de Redes', 'Admon Redes', '', '', 1, 'topics', 1, 4, 1422853200, 0, 0, 0, 0, 1, 1, 0, 0, 0, '', '', '', 1429032626, 1429032626, 0, 0, 0, 1445887621),
(9, 2, 10003, 'Sistemas Programables II', 'Sistemas', '', '', 1, 'topics', 1, 5, 1431489600, 0, 0, 0, 0, 1, 1, 0, 0, 0, '', '', '', 1431444697, 1431444697, 0, 0, 0, 1445887621),
(10, 2, 10002, 'Identificación de la biodiversidad chetumaleña', 'Identificación de la biodiversidad', '', '<p>En este curso aprenderemos los conceptos básicos relacionados con la biología y su relación con el medio ambiente.<br></p>', 1, 'topics', 1, 5, 1442620800, 0, 0, 0, 0, 1, 1, 0, 0, 0, '', '', '', 1442597198, 1442597766, 0, 0, 0, 1445887621),
(11, 2, 10001, 'Mantenimientos a equipo de cómputo', 'Mantenimiento', '', '', 1, 'topics', 1, 5, 1442620800, 0, 0, 0, 0, 1, 1, 0, 0, 0, '', '', '', 1442598957, 1442599649, 0, 0, 0, 1445887621);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_course_categories`
--

CREATE TABLE IF NOT EXISTS `mdl_course_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `idnumber` varchar(100) DEFAULT NULL,
  `description` longtext,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `parent` bigint(10) NOT NULL DEFAULT '0',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `coursecount` bigint(10) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `visibleold` tinyint(1) NOT NULL DEFAULT '1',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `depth` bigint(10) NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `theme` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courcate_par_ix` (`parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Course categories' AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `mdl_course_categories`
--

INSERT INTO `mdl_course_categories` (`id`, `name`, `idnumber`, `description`, `descriptionformat`, `parent`, `sortorder`, `coursecount`, `visible`, `visibleold`, `timemodified`, `depth`, `path`, `theme`) VALUES
(2, 'Sistemas y Computacion', '', '<p>Materias de la ingenieria en sistemas computacionales</p>', 1, 0, 10000, 5, 1, 1, 1425927433, 1, '/2', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_course_completions`
--

CREATE TABLE IF NOT EXISTS `mdl_course_completions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `course` bigint(10) NOT NULL DEFAULT '0',
  `timeenrolled` bigint(10) NOT NULL DEFAULT '0',
  `timestarted` bigint(10) NOT NULL DEFAULT '0',
  `timecompleted` bigint(10) DEFAULT NULL,
  `reaggregate` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcomp_usecou_uix` (`userid`,`course`),
  KEY `mdl_courcomp_use_ix` (`userid`),
  KEY `mdl_courcomp_cou_ix` (`course`),
  KEY `mdl_courcomp_tim_ix` (`timecompleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Course completion records' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_course_completion_aggr_methd`
--

CREATE TABLE IF NOT EXISTS `mdl_course_completion_aggr_methd` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `criteriatype` bigint(10) DEFAULT NULL,
  `method` tinyint(1) NOT NULL DEFAULT '0',
  `value` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcompaggrmeth_coucr_uix` (`course`,`criteriatype`),
  KEY `mdl_courcompaggrmeth_cou_ix` (`course`),
  KEY `mdl_courcompaggrmeth_cri_ix` (`criteriatype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Course completion aggregation methods for criteria' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_course_completion_criteria`
--

CREATE TABLE IF NOT EXISTS `mdl_course_completion_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `criteriatype` bigint(10) NOT NULL DEFAULT '0',
  `module` varchar(100) DEFAULT NULL,
  `moduleinstance` bigint(10) DEFAULT NULL,
  `courseinstance` bigint(10) DEFAULT NULL,
  `enrolperiod` bigint(10) DEFAULT NULL,
  `timeend` bigint(10) DEFAULT NULL,
  `gradepass` decimal(10,5) DEFAULT NULL,
  `role` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courcompcrit_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Course completion criteria' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_course_completion_crit_compl`
--

CREATE TABLE IF NOT EXISTS `mdl_course_completion_crit_compl` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `course` bigint(10) NOT NULL DEFAULT '0',
  `criteriaid` bigint(10) NOT NULL DEFAULT '0',
  `gradefinal` decimal(10,5) DEFAULT NULL,
  `unenroled` bigint(10) DEFAULT NULL,
  `timecompleted` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcompcritcomp_useco_uix` (`userid`,`course`,`criteriaid`),
  KEY `mdl_courcompcritcomp_use_ix` (`userid`),
  KEY `mdl_courcompcritcomp_cou_ix` (`course`),
  KEY `mdl_courcompcritcomp_cri_ix` (`criteriaid`),
  KEY `mdl_courcompcritcomp_tim_ix` (`timecompleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Course completion user records' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_course_format_options`
--

CREATE TABLE IF NOT EXISTS `mdl_course_format_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `format` varchar(21) NOT NULL DEFAULT '',
  `sectionid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courformopti_couforsec_uix` (`courseid`,`format`,`sectionid`,`name`),
  KEY `mdl_courformopti_cou_ix` (`courseid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Stores format-specific options for the course or course sect' AUTO_INCREMENT=35 ;

--
-- Volcado de datos para la tabla `mdl_course_format_options`
--

INSERT INTO `mdl_course_format_options` (`id`, `courseid`, `format`, `sectionid`, `name`, `value`) VALUES
(1, 1, 'site', 0, 'numsections', '1'),
(14, 6, 'topics', 0, 'numsections', '5'),
(15, 6, 'topics', 0, 'hiddensections', '0'),
(16, 6, 'topics', 0, 'coursedisplay', '0'),
(20, 8, 'topics', 0, 'numsections', '4'),
(21, 8, 'topics', 0, 'hiddensections', '0'),
(22, 8, 'topics', 0, 'coursedisplay', '0'),
(23, 9, 'topics', 0, 'numsections', '10'),
(24, 9, 'topics', 0, 'hiddensections', '0'),
(25, 9, 'topics', 0, 'coursedisplay', '0'),
(26, 10, 'topics', 0, 'numsections', '10'),
(27, 10, 'topics', 0, 'hiddensections', '0'),
(28, 10, 'topics', 0, 'coursedisplay', '0'),
(29, 11, 'topics', 0, 'numsections', '10'),
(30, 11, 'topics', 0, 'hiddensections', '0'),
(31, 11, 'topics', 0, 'coursedisplay', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_course_modules`
--

CREATE TABLE IF NOT EXISTS `mdl_course_modules` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `module` bigint(10) NOT NULL DEFAULT '0',
  `instance` bigint(10) NOT NULL DEFAULT '0',
  `section` bigint(10) NOT NULL DEFAULT '0',
  `idnumber` varchar(100) DEFAULT NULL,
  `added` bigint(10) NOT NULL DEFAULT '0',
  `score` smallint(4) NOT NULL DEFAULT '0',
  `indent` mediumint(5) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `visibleold` tinyint(1) NOT NULL DEFAULT '1',
  `groupmode` smallint(4) NOT NULL DEFAULT '0',
  `groupingid` bigint(10) NOT NULL DEFAULT '0',
  `groupmembersonly` smallint(4) NOT NULL DEFAULT '0',
  `completion` tinyint(1) NOT NULL DEFAULT '0',
  `completiongradeitemnumber` bigint(10) DEFAULT NULL,
  `completionview` tinyint(1) NOT NULL DEFAULT '0',
  `completionexpected` bigint(10) NOT NULL DEFAULT '0',
  `showdescription` tinyint(1) NOT NULL DEFAULT '0',
  `availability` longtext,
  PRIMARY KEY (`id`),
  KEY `mdl_courmodu_vis_ix` (`visible`),
  KEY `mdl_courmodu_cou_ix` (`course`),
  KEY `mdl_courmodu_mod_ix` (`module`),
  KEY `mdl_courmodu_ins_ix` (`instance`),
  KEY `mdl_courmodu_idncou_ix` (`idnumber`,`course`),
  KEY `mdl_courmodu_gro_ix` (`groupingid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='course_modules table retrofitted from MySQL' AUTO_INCREMENT=30 ;

--
-- Volcado de datos para la tabla `mdl_course_modules`
--

INSERT INTO `mdl_course_modules` (`id`, `course`, `module`, `instance`, `section`, `idnumber`, `added`, `score`, `indent`, `visible`, `visibleold`, `groupmode`, `groupingid`, `groupmembersonly`, `completion`, `completiongradeitemnumber`, `completionview`, `completionexpected`, `showdescription`, `availability`) VALUES
(22, 6, 1, 5, 62, '', 1443035848, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(6, 6, 9, 6, 47, NULL, 1428945323, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(14, 8, 3, 1, 70, '', 1432057782, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(8, 6, 1, 1, 59, '', 1429290119, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(9, 9, 9, 8, 75, NULL, 1431444768, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(10, 8, 20, 1, 71, '', 1431454223, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(11, 9, 20, 2, 76, '', 1431454608, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(12, 9, 9, 9, 76, '', 1431454953, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(13, 8, 1, 2, 72, '', 1431456310, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(16, 8, 9, 11, 70, NULL, 1432057850, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(17, 8, 1, 3, 73, '', 1442594706, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(18, 6, 16, 1, 60, '', 1442594963, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(19, 6, 1, 4, 61, '', 1442595077, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(20, 10, 9, 12, 86, NULL, 1442597301, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(21, 11, 9, 13, 97, NULL, 1442599113, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(23, 6, 16, 2, 61, '', 1443040466, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(24, 8, 1, 6, 73, '', 1443109591, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(25, 8, 9, 14, 70, '', 1443719375, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(26, 8, 9, 15, 71, '', 1443719503, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(27, 8, 8, 1, 70, '', 1443855310, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(29, 8, 9, 16, 72, '', 1444143115, 0, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_course_modules_completion`
--

CREATE TABLE IF NOT EXISTS `mdl_course_modules_completion` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `coursemoduleid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `completionstate` tinyint(1) NOT NULL,
  `viewed` tinyint(1) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courmoducomp_usecou_uix` (`userid`,`coursemoduleid`),
  KEY `mdl_courmoducomp_cou_ix` (`coursemoduleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores the completion state (completed or not completed, etc' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_course_published`
--

CREATE TABLE IF NOT EXISTS `mdl_course_published` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `huburl` varchar(255) DEFAULT NULL,
  `courseid` bigint(10) NOT NULL,
  `timepublished` bigint(10) NOT NULL,
  `enrollable` tinyint(1) NOT NULL DEFAULT '1',
  `hubcourseid` bigint(10) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `timechecked` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Information about how and when an local courses were publish' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_course_request`
--

CREATE TABLE IF NOT EXISTS `mdl_course_request` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(254) NOT NULL DEFAULT '',
  `shortname` varchar(100) NOT NULL DEFAULT '',
  `summary` longtext NOT NULL,
  `summaryformat` tinyint(2) NOT NULL DEFAULT '0',
  `category` bigint(10) NOT NULL DEFAULT '0',
  `reason` longtext NOT NULL,
  `requester` bigint(10) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_courrequ_sho_ix` (`shortname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='course requests' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_course_sections`
--

CREATE TABLE IF NOT EXISTS `mdl_course_sections` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `section` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `summary` longtext,
  `summaryformat` tinyint(2) NOT NULL DEFAULT '0',
  `sequence` longtext,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `availability` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_coursect_cousec_uix` (`course`,`section`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='to define the sections for each course' AUTO_INCREMENT=109 ;

--
-- Volcado de datos para la tabla `mdl_course_sections`
--

INSERT INTO `mdl_course_sections` (`id`, `course`, `section`, `name`, `summary`, `summaryformat`, `sequence`, `visible`, `availability`) VALUES
(47, 6, 0, NULL, '', 1, '6', 1, NULL),
(12, 1, 0, NULL, '', 1, '', 1, NULL),
(13, 1, 1, NULL, '', 1, '', 1, NULL),
(68, 6, 10, NULL, '', 1, '', 1, NULL),
(67, 6, 9, NULL, '', 1, '', 1, NULL),
(66, 6, 8, NULL, '', 1, '', 1, NULL),
(65, 6, 7, NULL, '', 1, '', 1, NULL),
(64, 6, 6, NULL, '', 1, '', 1, NULL),
(63, 6, 5, 'Unidad 5 HTML5 avanzado', '<p>1. Introducción</p><p>2. Gráficas escalables de vector (SVG)</p><p>3. Canvas</p><p>4. Audio y video</p>', 1, '', 1, NULL),
(62, 6, 4, 'Unidad 4 CSS avanzado', '<p>1. Introducción al layout en CSS</p><p>2. Layouts basados en flotación</p><p>3. Diseño web receptivo o sensible</p><p>4. Posicionamiento de elementos en una página web.</p><p>5. Hojas de estilo para impresión</p><p>6. Contenido generado</p>', 1, '22', 1, NULL),
(61, 6, 3, 'Unidad 3 CSS básico', '<p>1. Introducción</p><p>2. Creación de estilos y hojas de estilo</p><p>3. Aplicación de estilos a texto</p><p>4. Colores y fondos</p><p>5. Márgenes, rellenos y bordes</p><p>6. Imágenes</p><p>7. Ligas o vinculaciones</p><p>8. Estilización de tablas y formas</p><p>9. Transiciones, transformadas y animación<br></p>', 1, '19,23', 1, NULL),
(60, 6, 2, 'Unidad 2 HTML estándar y HTML5', '<p><em style="color: rgb(0, 0, 0); font-family: ''Trebuchet MS'', Helvetica, Arial, sans-serif; font-size: 14.039999961853px; line-height: normal;">Crear sitios web apegados a los elementos básicos de html estándar y html5 para poseer conocimientos y habilidades fundamentales que le permitan la construcción de sitios web complejos que satisfagan las necesidades de sus clientes.</em><br></p><p><span style="font-size: 14.039999961853px; line-height: normal;"><i>1. Introducción a HTML</i></span></p><p><span style="font-size: 14.039999961853px; line-height: normal;"><i>2. Estructura de la página</i></span></p><p><span style="font-size: 14.039999961853px; line-height: normal;"><i>3. Etiquetas HTML</i></span></p><p><span style="font-size: 14.039999961853px; line-height: normal;"><i>4. Documento HTML</i></span></p><p><span style="font-size: 14.039999961853px; line-height: normal;"><i>5. Marcado de texto</i></span></p><p><span style="font-size: 14.039999961853px; line-height: normal;"><i>6. Agrupado de contenido</i></span></p><p><span style="font-size: 14.039999961853px; line-height: normal;"><i>7. Creación de secciones</i></span></p><p><span style="font-size: 14.039999961853px; line-height: normal;"><i>8. Listas</i></span></p><p><span style="font-size: 14.039999961853px; line-height: normal;"><i>9. Ligas</i></span></p><p><span style="font-size: 14.039999961853px; line-height: normal;"><i>10. Imágenes</i></span></p><p><span style="font-size: 14.039999961853px; line-height: normal;"><i>11. Tablas</i></span></p><p></p><p><span style="font-size: 14.039999961853px; line-height: normal;"><i>12. Formas</i></span></p>', 1, '18', 1, NULL),
(59, 6, 1, 'Unidad 1 Conceptos Básicos', '<p><span style="color: rgb(0, 0, 0); font-family: ''Trebuchet MS'', Helvetica, Arial, sans-serif; font-size: 14.039999961853px; line-height: normal;">Resumir</span></p>', 1, '8', 1, NULL),
(75, 9, 0, NULL, '', 1, '9', 1, NULL),
(76, 9, 1, NULL, '', 1, '11,12', 1, NULL),
(77, 9, 2, NULL, '', 1, '', 1, NULL),
(78, 9, 3, NULL, '', 1, '', 1, NULL),
(79, 9, 4, NULL, '', 1, '', 1, NULL),
(80, 9, 5, NULL, '', 1, '', 1, NULL),
(81, 9, 6, NULL, '', 1, '', 1, NULL),
(82, 9, 7, NULL, '', 1, '', 1, NULL),
(83, 9, 8, NULL, '', 1, '', 1, NULL),
(84, 9, 9, NULL, '', 1, '', 1, NULL),
(85, 9, 10, NULL, '', 1, '', 1, NULL),
(69, 6, 11, NULL, '', 1, '', 1, NULL),
(70, 8, 0, NULL, '', 1, '14,16,25,27', 1, NULL),
(71, 8, 1, 'Unidad 1 Funciones de la administración de redes ', '<p>Comprender las funciones de la\r\nadministración de redes para\r\naplicarlas en el aseguramiento y\r\noptimización del desempeño de\r\nlas mismas<br></p><p>1.1 Configuración&nbsp;</p><p>1.2 Fallas&nbsp;</p><p>1.3 Contabilidad&nbsp;</p><p>1.4 Desempeño&nbsp;</p><p>1.5 Seguridad&nbsp;<br></p>', 1, '10,26', 1, NULL),
(72, 8, 2, 'Unidad 2 Servicios de Red', '<p>Instalar, configurar y administrar\r\ndiferentes servicios de red para\r\nsatisfacer las necesidades de las\r\norganizaciones<br></p><p>2.1 DHCP&nbsp;</p><p>2.2 DNS&nbsp;</p><p>2.3 Telnet</p><p>2.4 SSH&nbsp;</p><p>2.5 FTP y TFTP&nbsp;</p><p>2.6 WWW:\r\nHTTP y\r\nHTTPS&nbsp;</p><p>2.7 NFS&nbsp;</p><p>2.8 CIFS&nbsp;</p><p>2.9 e-mail:\r\nSMTP,\r\nPOP,\r\nIMAP y\r\nSASL&nbsp;<br></p>', 1, '13,29', 1, NULL),
(73, 8, 3, 'Unidad 3 Análisis y monitoreo ', '<p>Dominar el manejo de\r\nherramientas de análisis y\r\nmonitoreo de red para medir su\r\ndesempeño y fiabilidad.&nbsp;<br></p><p>3.1 Protocolos de administración de red\r\n (SNMP)&nbsp;</p><p>3.2 Bitácoras&nbsp;</p><p>3.3 Analizadores de protocolos&nbsp;</p><p>3.4 Planificadores&nbsp;</p><p>3.5 Análisis de desempeño de la red:\r\nTráfico y Servicios&nbsp;<br></p>', 1, '17,24', 1, NULL),
(74, 8, 4, 'Unidad 4 Seguridad básica', '<p>Aplicar herramientas y políticas de\r\nseguridad para mejorar la\r\nintegridad, disponibilidad y\r\nconfidencialidad de los recursos de\r\nuna red.&nbsp;<br></p><p>4.1 Elementos de la seguridad&nbsp;</p><p>4.2 Elementos a proteger&nbsp;</p><p>4.3 Tipos de riesgos&nbsp;</p><p>4.4 Mecanismos de seguridad física y\r\nlógica:\r\nControl de acceso, respaldos,\r\nautenticación y elementos de protección\r\nperimetral&nbsp;<br></p>', 1, '', 1, NULL),
(86, 10, 0, NULL, '', 1, '20', 1, NULL),
(87, 10, 1, NULL, '', 1, '', 1, NULL),
(88, 10, 2, NULL, '', 1, '', 1, NULL),
(89, 10, 3, NULL, '', 1, '', 1, NULL),
(90, 10, 4, NULL, '', 1, '', 1, NULL),
(91, 10, 5, NULL, '', 1, '', 1, NULL),
(92, 10, 6, NULL, '', 1, '', 1, NULL),
(93, 10, 7, NULL, '', 1, '', 1, NULL),
(94, 10, 8, NULL, '', 1, '', 1, NULL),
(95, 10, 9, NULL, '', 1, '', 1, NULL),
(96, 10, 10, NULL, '', 1, '', 1, NULL),
(97, 11, 0, NULL, '', 1, '21', 1, NULL),
(98, 11, 1, NULL, '', 1, '', 1, NULL),
(99, 11, 2, NULL, '', 1, '', 1, NULL),
(100, 11, 3, NULL, '', 1, '', 1, NULL),
(101, 11, 4, NULL, '', 1, '', 1, NULL),
(102, 11, 5, NULL, '', 1, '', 1, NULL),
(103, 11, 6, NULL, '', 1, '', 1, NULL),
(104, 11, 7, NULL, '', 1, '', 1, NULL),
(105, 11, 8, NULL, '', 1, '', 1, NULL),
(106, 11, 9, NULL, '', 1, '', 1, NULL),
(107, 11, 10, NULL, '', 1, '', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_data`
--

CREATE TABLE IF NOT EXISTS `mdl_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `comments` smallint(4) NOT NULL DEFAULT '0',
  `timeavailablefrom` bigint(10) NOT NULL DEFAULT '0',
  `timeavailableto` bigint(10) NOT NULL DEFAULT '0',
  `timeviewfrom` bigint(10) NOT NULL DEFAULT '0',
  `timeviewto` bigint(10) NOT NULL DEFAULT '0',
  `requiredentries` int(8) NOT NULL DEFAULT '0',
  `requiredentriestoview` int(8) NOT NULL DEFAULT '0',
  `maxentries` int(8) NOT NULL DEFAULT '0',
  `rssarticles` smallint(4) NOT NULL DEFAULT '0',
  `singletemplate` longtext,
  `listtemplate` longtext,
  `listtemplateheader` longtext,
  `listtemplatefooter` longtext,
  `addtemplate` longtext,
  `rsstemplate` longtext,
  `rsstitletemplate` longtext,
  `csstemplate` longtext,
  `jstemplate` longtext,
  `asearchtemplate` longtext,
  `approval` smallint(4) NOT NULL DEFAULT '0',
  `scale` bigint(10) NOT NULL DEFAULT '0',
  `assessed` bigint(10) NOT NULL DEFAULT '0',
  `assesstimestart` bigint(10) NOT NULL DEFAULT '0',
  `assesstimefinish` bigint(10) NOT NULL DEFAULT '0',
  `defaultsort` bigint(10) NOT NULL DEFAULT '0',
  `defaultsortdir` smallint(4) NOT NULL DEFAULT '0',
  `editany` smallint(4) NOT NULL DEFAULT '0',
  `notification` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_data_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='all database activities' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_data_content`
--

CREATE TABLE IF NOT EXISTS `mdl_data_content` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `fieldid` bigint(10) NOT NULL DEFAULT '0',
  `recordid` bigint(10) NOT NULL DEFAULT '0',
  `content` longtext,
  `content1` longtext,
  `content2` longtext,
  `content3` longtext,
  `content4` longtext,
  PRIMARY KEY (`id`),
  KEY `mdl_datacont_rec_ix` (`recordid`),
  KEY `mdl_datacont_fie_ix` (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='the content introduced in each record/fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_data_fields`
--

CREATE TABLE IF NOT EXISTS `mdl_data_fields` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `dataid` bigint(10) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `param1` longtext,
  `param2` longtext,
  `param3` longtext,
  `param4` longtext,
  `param5` longtext,
  `param6` longtext,
  `param7` longtext,
  `param8` longtext,
  `param9` longtext,
  `param10` longtext,
  PRIMARY KEY (`id`),
  KEY `mdl_datafiel_typdat_ix` (`type`,`dataid`),
  KEY `mdl_datafiel_dat_ix` (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='every field available' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_data_records`
--

CREATE TABLE IF NOT EXISTS `mdl_data_records` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `dataid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `approved` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_datareco_dat_ix` (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='every record introduced' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_enrol`
--

CREATE TABLE IF NOT EXISTS `mdl_enrol` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `enrol` varchar(20) NOT NULL DEFAULT '',
  `status` bigint(10) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `enrolperiod` bigint(10) DEFAULT '0',
  `enrolstartdate` bigint(10) DEFAULT '0',
  `enrolenddate` bigint(10) DEFAULT '0',
  `expirynotify` tinyint(1) DEFAULT '0',
  `expirythreshold` bigint(10) DEFAULT '0',
  `notifyall` tinyint(1) DEFAULT '0',
  `password` varchar(50) DEFAULT NULL,
  `cost` varchar(20) DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `roleid` bigint(10) DEFAULT '0',
  `customint1` bigint(10) DEFAULT NULL,
  `customint2` bigint(10) DEFAULT NULL,
  `customint3` bigint(10) DEFAULT NULL,
  `customint4` bigint(10) DEFAULT NULL,
  `customint5` bigint(10) DEFAULT NULL,
  `customint6` bigint(10) DEFAULT NULL,
  `customint7` bigint(10) DEFAULT NULL,
  `customint8` bigint(10) DEFAULT NULL,
  `customchar1` varchar(255) DEFAULT NULL,
  `customchar2` varchar(255) DEFAULT NULL,
  `customchar3` varchar(1333) DEFAULT NULL,
  `customdec1` decimal(12,7) DEFAULT NULL,
  `customdec2` decimal(12,7) DEFAULT NULL,
  `customtext1` longtext,
  `customtext2` longtext,
  `customtext3` longtext,
  `customtext4` longtext,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_enro_enr_ix` (`enrol`),
  KEY `mdl_enro_cou_ix` (`courseid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Instances of enrolment plugins used in courses, fields marke' AUTO_INCREMENT=34 ;

--
-- Volcado de datos para la tabla `mdl_enrol`
--

INSERT INTO `mdl_enrol` (`id`, `enrol`, `status`, `courseid`, `sortorder`, `name`, `enrolperiod`, `enrolstartdate`, `enrolenddate`, `expirynotify`, `expirythreshold`, `notifyall`, `password`, `cost`, `currency`, `roleid`, `customint1`, `customint2`, `customint3`, `customint4`, `customint5`, `customint6`, `customint7`, `customint8`, `customchar1`, `customchar2`, `customchar3`, `customdec1`, `customdec2`, `customtext1`, `customtext2`, `customtext3`, `customtext4`, `timecreated`, `timemodified`) VALUES
(23, 'guest', 1, 9, 1, NULL, 0, 0, 0, 0, 0, 0, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1431444697, 1431444697),
(22, 'manual', 0, 9, 0, NULL, 0, 0, 0, 0, 86400, 0, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1431444697, 1431444697),
(13, 'manual', 0, 6, 1, NULL, 0, 0, 0, 0, 86400, 0, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1428945099, 1428945099),
(14, 'guest', 1, 6, 2, NULL, 0, 0, 0, 0, 0, 0, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1428945099, 1428945099),
(15, 'self', 0, 6, 0, NULL, 0, 0, 0, 0, 86400, 0, NULL, NULL, NULL, 5, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1428945099, 1428945099),
(19, 'manual', 0, 8, 2, NULL, 0, 0, 0, 0, 86400, 0, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1429032627, 1429032627),
(20, 'guest', 1, 8, 1, NULL, 0, 0, 0, 0, 0, 0, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1429032627, 1429032627),
(21, 'self', 0, 8, 0, NULL, 0, 0, 0, 0, 86400, 0, NULL, NULL, NULL, 5, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1429032628, 1429032628),
(24, 'self', 1, 9, 2, NULL, 0, 0, 0, 0, 86400, 0, NULL, NULL, NULL, 5, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1431444697, 1431444697),
(25, 'manual', 0, 10, 0, NULL, 0, 0, 0, 0, 86400, 0, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442597198, 1442597198),
(26, 'guest', 1, 10, 1, NULL, 0, 0, 0, 0, 0, 0, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442597198, 1442597766),
(27, 'self', 1, 10, 2, NULL, 0, 0, 0, 0, 86400, 0, NULL, NULL, NULL, 5, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442597198, 1442597198),
(28, 'manual', 0, 11, 0, NULL, 0, 0, 0, 0, 86400, 0, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442598958, 1442598958),
(29, 'guest', 1, 11, 1, NULL, 0, 0, 0, 0, 0, 0, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442598958, 1442599649),
(30, 'self', 1, 11, 2, NULL, 0, 0, 0, 0, 86400, 0, NULL, NULL, NULL, 5, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442598958, 1442598958);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_enrol_flatfile`
--

CREATE TABLE IF NOT EXISTS `mdl_enrol_flatfile` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` varchar(30) NOT NULL DEFAULT '',
  `roleid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `courseid` bigint(10) NOT NULL,
  `timestart` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_enroflat_cou_ix` (`courseid`),
  KEY `mdl_enroflat_use_ix` (`userid`),
  KEY `mdl_enroflat_rol_ix` (`roleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='enrol_flatfile table retrofitted from MySQL' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_enrol_paypal`
--

CREATE TABLE IF NOT EXISTS `mdl_enrol_paypal` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `business` varchar(255) NOT NULL DEFAULT '',
  `receiver_email` varchar(255) NOT NULL DEFAULT '',
  `receiver_id` varchar(255) NOT NULL DEFAULT '',
  `item_name` varchar(255) NOT NULL DEFAULT '',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `instanceid` bigint(10) NOT NULL DEFAULT '0',
  `memo` varchar(255) NOT NULL DEFAULT '',
  `tax` varchar(255) NOT NULL DEFAULT '',
  `option_name1` varchar(255) NOT NULL DEFAULT '',
  `option_selection1_x` varchar(255) NOT NULL DEFAULT '',
  `option_name2` varchar(255) NOT NULL DEFAULT '',
  `option_selection2_x` varchar(255) NOT NULL DEFAULT '',
  `payment_status` varchar(255) NOT NULL DEFAULT '',
  `pending_reason` varchar(255) NOT NULL DEFAULT '',
  `reason_code` varchar(30) NOT NULL DEFAULT '',
  `txn_id` varchar(255) NOT NULL DEFAULT '',
  `parent_txn_id` varchar(255) NOT NULL DEFAULT '',
  `payment_type` varchar(30) NOT NULL DEFAULT '',
  `timeupdated` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds all known information about PayPal transactions' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_event`
--

CREATE TABLE IF NOT EXISTS `mdl_event` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `description` longtext NOT NULL,
  `format` smallint(4) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `repeatid` bigint(10) NOT NULL DEFAULT '0',
  `modulename` varchar(20) NOT NULL DEFAULT '',
  `instance` bigint(10) NOT NULL DEFAULT '0',
  `eventtype` varchar(20) NOT NULL DEFAULT '',
  `timestart` bigint(10) NOT NULL DEFAULT '0',
  `timeduration` bigint(10) NOT NULL DEFAULT '0',
  `visible` smallint(4) NOT NULL DEFAULT '1',
  `uuid` varchar(255) NOT NULL DEFAULT '',
  `sequence` bigint(10) NOT NULL DEFAULT '1',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `subscriptionid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_even_cou_ix` (`courseid`),
  KEY `mdl_even_use_ix` (`userid`),
  KEY `mdl_even_tim_ix` (`timestart`),
  KEY `mdl_even_tim2_ix` (`timeduration`),
  KEY `mdl_even_grocouvisuse_ix` (`groupid`,`courseid`,`visible`,`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='For everything with a time associated to it' AUTO_INCREMENT=30 ;

--
-- Volcado de datos para la tabla `mdl_event`
--

INSERT INTO `mdl_event` (`id`, `name`, `description`, `format`, `courseid`, `groupid`, `userid`, `repeatid`, `modulename`, `instance`, `eventtype`, `timestart`, `timeduration`, `visible`, `uuid`, `sequence`, `timemodified`, `subscriptionid`) VALUES
(7, 'Tarea 1', '<p>Agregar sus archivos de tarea</p>', 1, 6, 0, 3, 0, 'assign', 1, 'due', 1432440000, 0, 1, '', 1, 1430841471, NULL),
(8, 'Tarea Vacacional', 'Tendrán que subir la tarea ', 1, 0, 0, 2, 0, '0', 0, 'user', 1428506100, 3456000, 1, '', 1, 1430321105, NULL),
(5, 'Saludo', '<p>Hola a todos</p>', 1, 1, 0, 3, 0, '0', 0, 'site', 1426174800, 0, 1, '', 1, 1426174981, NULL),
(6, 'Hola', '<p>Tarea 1</p>', 1, 0, 0, 3, 0, '0', 0, 'user', 1426261200, 0, 1, '', 1, 1426175792, NULL),
(9, 'Tarea2', 'Rsumen2', 1, 6, 0, 3, 0, '0', 0, 'course', 1431272700, 0, 1, '', 1, 1430840977, NULL),
(10, 'Preguntas1', 'Realizar las preguntas de la unidad', 1, 6, 0, 3, 0, '0', 0, 'course', 1431272700, 0, 1, '', 1, 1430841058, NULL),
(11, 'tarea 2.1', '<p>Descripcion de redes</p>', 1, 8, 0, 3, 0, 'assign', 2, 'due', 1431993600, 0, 1, '', 1, 1431456310, NULL),
(12, 'Tarea de la unidad', '<p>Resumen de Redes</p>', 1, 8, 0, 3, 0, '0', 0, 'course', 1442594400, 0, 1, '', 1, 1442594510, NULL),
(13, 'Monitoreo', '<p>Realizar un monitoreo</p>', 1, 8, 0, 3, 0, 'assign', 3, 'due', 1443114000, 0, 1, '', 1, 1443110202, NULL),
(14, 'Examen de la unidad (Examen abierto)', '<div class="no-overflow">Examen</div>', 1, 6, 0, 3, 0, 'quiz', 1, 'open', 1442594820, 0, 1, '', 1, 1442594963, NULL),
(15, 'Examen de la unidad (Examen cerrado)', '<div class="no-overflow">Examen</div>', 1, 6, 0, 3, 0, 'quiz', 1, 'close', 1451148420, 0, 1, '', 1, 1442594963, NULL),
(16, 'Diseño', '<p>Diseño de la pagina anterior</p>', 1, 6, 0, 3, 0, 'assign', 4, 'due', 1451692800, 0, 1, '', 1, 1443039117, NULL),
(17, 'Css responsivo', 'Se tendrá que realizar el css para movil', 1, 6, 0, 2, 0, 'assign', 5, 'due', 1444176000, 0, 1, '', 1, 1443035897, NULL),
(18, 'Examen (Examen abierto)', '<div class="no-overflow"><p><a class="autolink" title="Examen de la unidad" href="http://naynweb.16mb.com/moodle/mod/quiz/view.php?id=18">Examen de la unidad</a></p></div>', 1, 6, 0, 2, 0, 'quiz', 2, 'open', 1443040320, 0, 1, '', 1, 1443040467, NULL),
(19, 'Examen (Examen cerrado)', '<div class="no-overflow"><p><a class="autolink" title="Examen de la unidad" href="http://naynweb.16mb.com/moodle/mod/quiz/view.php?id=18">Examen de la unidad</a></p></div>', 1, 6, 0, 2, 0, 'quiz', 2, 'close', 1444163520, 0, 1, '', 1, 1443040467, NULL),
(20, 'Cuestionario de Protocolos', '<p>Crear 10 pregunas sobre los protocolos de redes.</p>', 1, 8, 0, 3, 0, 'assign', 6, 'due', 1443193200, 0, 1, '', 1, 1443109714, NULL),
(21, 'Evento', 'hey Arnold', 1, 0, 0, 3, 0, '', 0, 'user', 1444760420, 0, 1, '', 1, 1444760420, NULL),
(28, 'Evento8', 'hey Arnold', 1, 8, 0, 3, 0, 'assign', 3, 'course', 1444921200, 1445817600, 1, '', 1, 1444921200, NULL),
(29, 'eventodecurso', '<p>Evento de curso desde moodle</p>', 1, 8, 0, 3, 0, '0', 0, 'course', 1445289900, 0, 1, '', 1, 1445290076, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_events_handlers`
--

CREATE TABLE IF NOT EXISTS `mdl_events_handlers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(166) NOT NULL DEFAULT '',
  `component` varchar(166) NOT NULL DEFAULT '',
  `handlerfile` varchar(255) NOT NULL DEFAULT '',
  `handlerfunction` longtext,
  `schedule` varchar(255) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT '0',
  `internal` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_evenhand_evecom_uix` (`eventname`,`component`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table is for storing which components requests what typ' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_events_queue`
--

CREATE TABLE IF NOT EXISTS `mdl_events_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventdata` longtext NOT NULL,
  `stackdump` longtext,
  `userid` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_evenqueu_use_ix` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table is for storing queued events. It stores only one ' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_events_queue_handlers`
--

CREATE TABLE IF NOT EXISTS `mdl_events_queue_handlers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `queuedeventid` bigint(10) NOT NULL,
  `handlerid` bigint(10) NOT NULL,
  `status` bigint(10) DEFAULT NULL,
  `errormessage` longtext,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_evenqueuhand_que_ix` (`queuedeventid`),
  KEY `mdl_evenqueuhand_han_ix` (`handlerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This is the list of queued handlers for processing. The even' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_event_subscriptions`
--

CREATE TABLE IF NOT EXISTS `mdl_event_subscriptions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `eventtype` varchar(20) NOT NULL DEFAULT '',
  `pollinterval` bigint(10) NOT NULL DEFAULT '0',
  `lastupdated` bigint(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tracks subscriptions to remote calendars.' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_external_functions`
--

CREATE TABLE IF NOT EXISTS `mdl_external_functions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `classname` varchar(100) NOT NULL DEFAULT '',
  `methodname` varchar(100) NOT NULL DEFAULT '',
  `classpath` varchar(255) DEFAULT NULL,
  `component` varchar(100) NOT NULL DEFAULT '',
  `capabilities` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_extefunc_nam_uix` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='list of all external functions' AUTO_INCREMENT=154 ;

--
-- Volcado de datos para la tabla `mdl_external_functions`
--

INSERT INTO `mdl_external_functions` (`id`, `name`, `classname`, `methodname`, `classpath`, `component`, `capabilities`) VALUES
(1, 'core_cohort_create_cohorts', 'core_cohort_external', 'create_cohorts', 'cohort/externallib.php', 'moodle', 'moodle/cohort:manage'),
(2, 'core_cohort_delete_cohorts', 'core_cohort_external', 'delete_cohorts', 'cohort/externallib.php', 'moodle', 'moodle/cohort:manage'),
(3, 'core_cohort_get_cohorts', 'core_cohort_external', 'get_cohorts', 'cohort/externallib.php', 'moodle', 'moodle/cohort:view'),
(4, 'core_cohort_update_cohorts', 'core_cohort_external', 'update_cohorts', 'cohort/externallib.php', 'moodle', 'moodle/cohort:manage'),
(5, 'core_cohort_add_cohort_members', 'core_cohort_external', 'add_cohort_members', 'cohort/externallib.php', 'moodle', 'moodle/cohort:assign'),
(6, 'core_cohort_delete_cohort_members', 'core_cohort_external', 'delete_cohort_members', 'cohort/externallib.php', 'moodle', 'moodle/cohort:assign'),
(7, 'core_cohort_get_cohort_members', 'core_cohort_external', 'get_cohort_members', 'cohort/externallib.php', 'moodle', 'moodle/cohort:view'),
(8, 'core_grades_get_grades', 'core_grades_external', 'get_grades', NULL, 'moodle', 'moodle/grade:view, moodle/grade:viewall'),
(9, 'core_grades_update_grades', 'core_grades_external', 'update_grades', NULL, 'moodle', ''),
(10, 'moodle_group_create_groups', 'core_group_external', 'create_groups', 'group/externallib.php', 'moodle', 'moodle/course:managegroups'),
(11, 'core_group_create_groups', 'core_group_external', 'create_groups', 'group/externallib.php', 'moodle', 'moodle/course:managegroups'),
(12, 'moodle_group_get_groups', 'core_group_external', 'get_groups', 'group/externallib.php', 'moodle', 'moodle/course:managegroups'),
(13, 'core_group_get_groups', 'core_group_external', 'get_groups', 'group/externallib.php', 'moodle', 'moodle/course:managegroups'),
(14, 'moodle_group_get_course_groups', 'core_group_external', 'get_course_groups', 'group/externallib.php', 'moodle', 'moodle/course:managegroups'),
(15, 'core_group_get_course_groups', 'core_group_external', 'get_course_groups', 'group/externallib.php', 'moodle', 'moodle/course:managegroups'),
(16, 'moodle_group_delete_groups', 'core_group_external', 'delete_groups', 'group/externallib.php', 'moodle', 'moodle/course:managegroups'),
(17, 'core_group_delete_groups', 'core_group_external', 'delete_groups', 'group/externallib.php', 'moodle', 'moodle/course:managegroups'),
(18, 'moodle_group_get_groupmembers', 'core_group_external', 'get_group_members', 'group/externallib.php', 'moodle', 'moodle/course:managegroups'),
(19, 'core_group_get_group_members', 'core_group_external', 'get_group_members', 'group/externallib.php', 'moodle', 'moodle/course:managegroups'),
(20, 'moodle_group_add_groupmembers', 'core_group_external', 'add_group_members', 'group/externallib.php', 'moodle', 'moodle/course:managegroups'),
(21, 'core_group_add_group_members', 'core_group_external', 'add_group_members', 'group/externallib.php', 'moodle', 'moodle/course:managegroups'),
(22, 'moodle_group_delete_groupmembers', 'core_group_external', 'delete_group_members', 'group/externallib.php', 'moodle', 'moodle/course:managegroups'),
(23, 'core_group_delete_group_members', 'core_group_external', 'delete_group_members', 'group/externallib.php', 'moodle', 'moodle/course:managegroups'),
(24, 'core_group_create_groupings', 'core_group_external', 'create_groupings', 'group/externallib.php', 'moodle', ''),
(25, 'core_group_update_groupings', 'core_group_external', 'update_groupings', 'group/externallib.php', 'moodle', ''),
(26, 'core_group_get_groupings', 'core_group_external', 'get_groupings', 'group/externallib.php', 'moodle', ''),
(27, 'core_group_get_course_groupings', 'core_group_external', 'get_course_groupings', 'group/externallib.php', 'moodle', ''),
(28, 'core_group_delete_groupings', 'core_group_external', 'delete_groupings', 'group/externallib.php', 'moodle', ''),
(29, 'core_group_assign_grouping', 'core_group_external', 'assign_grouping', 'group/externallib.php', 'moodle', ''),
(30, 'core_group_unassign_grouping', 'core_group_external', 'unassign_grouping', 'group/externallib.php', 'moodle', ''),
(31, 'moodle_file_get_files', 'core_files_external', 'get_files', 'files/externallib.php', 'moodle', ''),
(32, 'core_files_get_files', 'core_files_external', 'get_files', 'files/externallib.php', 'moodle', ''),
(33, 'moodle_file_upload', 'core_files_external', 'upload', 'files/externallib.php', 'moodle', ''),
(34, 'core_files_upload', 'core_files_external', 'upload', 'files/externallib.php', 'moodle', ''),
(35, 'moodle_user_create_users', 'core_user_external', 'create_users', 'user/externallib.php', 'moodle', 'moodle/user:create'),
(36, 'core_user_create_users', 'core_user_external', 'create_users', 'user/externallib.php', 'moodle', 'moodle/user:create'),
(37, 'core_user_get_users', 'core_user_external', 'get_users', 'user/externallib.php', 'moodle', 'moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update'),
(38, 'moodle_user_get_users_by_id', 'core_user_external', 'get_users_by_id', 'user/externallib.php', 'moodle', 'moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update'),
(39, 'core_user_get_users_by_field', 'core_user_external', 'get_users_by_field', 'user/externallib.php', 'moodle', 'moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update'),
(40, 'core_user_get_users_by_id', 'core_user_external', 'get_users_by_id', 'user/externallib.php', 'moodle', 'moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update'),
(41, 'moodle_user_get_users_by_courseid', 'core_enrol_external', 'get_enrolled_users', 'enrol/externallib.php', 'moodle', 'moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update, moodle/site:accessallgroups'),
(42, 'moodle_user_get_course_participants_by_id', 'core_user_external', 'get_course_user_profiles', 'user/externallib.php', 'moodle', 'moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update, moodle/site:accessallgroups'),
(43, 'core_user_get_course_user_profiles', 'core_user_external', 'get_course_user_profiles', 'user/externallib.php', 'moodle', 'moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update, moodle/site:accessallgroups'),
(44, 'moodle_user_delete_users', 'core_user_external', 'delete_users', 'user/externallib.php', 'moodle', 'moodle/user:delete'),
(45, 'core_user_delete_users', 'core_user_external', 'delete_users', 'user/externallib.php', 'moodle', 'moodle/user:delete'),
(46, 'moodle_user_update_users', 'core_user_external', 'update_users', 'user/externallib.php', 'moodle', 'moodle/user:update'),
(47, 'core_user_update_users', 'core_user_external', 'update_users', 'user/externallib.php', 'moodle', 'moodle/user:update'),
(48, 'core_user_add_user_device', 'core_user_external', 'add_user_device', 'user/externallib.php', 'moodle', ''),
(49, 'core_enrol_get_enrolled_users_with_capability', 'core_enrol_external', 'get_enrolled_users_with_capability', 'enrol/externallib.php', 'moodle', ''),
(50, 'moodle_enrol_get_enrolled_users', 'moodle_enrol_external', 'get_enrolled_users', 'enrol/externallib.php', 'moodle', 'moodle/site:viewparticipants, moodle/course:viewparticipants,\n            moodle/role:review, moodle/site:accessallgroups, moodle/course:enrolreview'),
(51, 'core_enrol_get_enrolled_users', 'core_enrol_external', 'get_enrolled_users', 'enrol/externallib.php', 'moodle', 'moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update, moodle/site:accessallgroups'),
(52, 'moodle_enrol_get_users_courses', 'core_enrol_external', 'get_users_courses', 'enrol/externallib.php', 'moodle', 'moodle/course:viewparticipants'),
(53, 'core_enrol_get_users_courses', 'core_enrol_external', 'get_users_courses', 'enrol/externallib.php', 'moodle', 'moodle/course:viewparticipants'),
(54, 'core_enrol_get_course_enrolment_methods', 'core_enrol_external', 'get_course_enrolment_methods', 'enrol/externallib.php', 'moodle', ''),
(55, 'moodle_role_assign', 'core_role_external', 'assign_roles', 'enrol/externallib.php', 'moodle', 'moodle/role:assign'),
(56, 'core_role_assign_roles', 'core_role_external', 'assign_roles', 'enrol/externallib.php', 'moodle', 'moodle/role:assign'),
(57, 'moodle_role_unassign', 'core_role_external', 'unassign_roles', 'enrol/externallib.php', 'moodle', 'moodle/role:assign'),
(58, 'core_role_unassign_roles', 'core_role_external', 'unassign_roles', 'enrol/externallib.php', 'moodle', 'moodle/role:assign'),
(59, 'core_course_get_contents', 'core_course_external', 'get_course_contents', 'course/externallib.php', 'moodle', 'moodle/course:update,moodle/course:viewhiddencourses'),
(60, 'moodle_course_get_courses', 'core_course_external', 'get_courses', 'course/externallib.php', 'moodle', 'moodle/course:view,moodle/course:update,moodle/course:viewhiddencourses'),
(61, 'core_course_get_courses', 'core_course_external', 'get_courses', 'course/externallib.php', 'moodle', 'moodle/course:view,moodle/course:update,moodle/course:viewhiddencourses'),
(62, 'moodle_course_create_courses', 'core_course_external', 'create_courses', 'course/externallib.php', 'moodle', 'moodle/course:create,moodle/course:visibility'),
(63, 'core_course_create_courses', 'core_course_external', 'create_courses', 'course/externallib.php', 'moodle', 'moodle/course:create,moodle/course:visibility'),
(64, 'core_course_delete_courses', 'core_course_external', 'delete_courses', 'course/externallib.php', 'moodle', 'moodle/course:delete'),
(65, 'core_course_delete_modules', 'core_course_external', 'delete_modules', 'course/externallib.php', 'moodle', 'moodle/course:manageactivities'),
(66, 'core_course_duplicate_course', 'core_course_external', 'duplicate_course', 'course/externallib.php', 'moodle', 'moodle/backup:backupcourse,moodle/restore:restorecourse,moodle/course:create'),
(67, 'core_course_update_courses', 'core_course_external', 'update_courses', 'course/externallib.php', 'moodle', 'moodle/course:update,moodle/course:changecategory,moodle/course:changefullname,moodle/course:changeshortname,moodle/course:changeidnumber,moodle/course:changesummary,moodle/course:visibility'),
(68, 'core_course_get_categories', 'core_course_external', 'get_categories', 'course/externallib.php', 'moodle', 'moodle/category:viewhiddencategories'),
(69, 'core_course_create_categories', 'core_course_external', 'create_categories', 'course/externallib.php', 'moodle', 'moodle/category:manage'),
(70, 'core_course_update_categories', 'core_course_external', 'update_categories', 'course/externallib.php', 'moodle', 'moodle/category:manage'),
(71, 'core_course_delete_categories', 'core_course_external', 'delete_categories', 'course/externallib.php', 'moodle', 'moodle/category:manage'),
(72, 'core_course_import_course', 'core_course_external', 'import_course', 'course/externallib.php', 'moodle', 'moodle/backup:backuptargetimport, moodle/restore:restoretargetimport'),
(73, 'moodle_message_send_instantmessages', 'core_message_external', 'send_instant_messages', 'message/externallib.php', 'moodle', 'moodle/site:sendmessage'),
(74, 'core_message_send_instant_messages', 'core_message_external', 'send_instant_messages', 'message/externallib.php', 'moodle', 'moodle/site:sendmessage'),
(75, 'core_message_create_contacts', 'core_message_external', 'create_contacts', 'message/externallib.php', 'moodle', ''),
(76, 'core_message_delete_contacts', 'core_message_external', 'delete_contacts', 'message/externallib.php', 'moodle', ''),
(77, 'core_message_block_contacts', 'core_message_external', 'block_contacts', 'message/externallib.php', 'moodle', ''),
(78, 'core_message_unblock_contacts', 'core_message_external', 'unblock_contacts', 'message/externallib.php', 'moodle', ''),
(79, 'core_message_get_contacts', 'core_message_external', 'get_contacts', 'message/externallib.php', 'moodle', ''),
(80, 'core_message_search_contacts', 'core_message_external', 'search_contacts', 'message/externallib.php', 'moodle', ''),
(81, 'moodle_notes_create_notes', 'core_notes_external', 'create_notes', 'notes/externallib.php', 'moodle', 'moodle/notes:manage'),
(82, 'core_notes_create_notes', 'core_notes_external', 'create_notes', 'notes/externallib.php', 'moodle', 'moodle/notes:manage'),
(83, 'core_notes_delete_notes', 'core_notes_external', 'delete_notes', 'notes/externallib.php', 'moodle', 'moodle/notes:manage'),
(84, 'core_notes_get_notes', 'core_notes_external', 'get_notes', 'notes/externallib.php', 'moodle', 'moodle/notes:view'),
(85, 'core_notes_update_notes', 'core_notes_external', 'update_notes', 'notes/externallib.php', 'moodle', 'moodle/notes:manage'),
(86, 'core_grading_get_definitions', 'core_grading_external', 'get_definitions', NULL, 'moodle', ''),
(87, 'core_grade_get_definitions', 'core_grade_external', 'get_definitions', 'grade/externallib.php', 'moodle', ''),
(88, 'core_grading_get_gradingform_instances', 'core_grading_external', 'get_gradingform_instances', NULL, 'moodle', ''),
(89, 'moodle_webservice_get_siteinfo', 'core_webservice_external', 'get_site_info', 'webservice/externallib.php', 'moodle', ''),
(90, 'core_webservice_get_site_info', 'core_webservice_external', 'get_site_info', 'webservice/externallib.php', 'moodle', ''),
(91, 'core_get_string', 'core_external', 'get_string', 'lib/external/externallib.php', 'moodle', ''),
(92, 'core_get_strings', 'core_external', 'get_strings', 'lib/external/externallib.php', 'moodle', ''),
(93, 'core_get_component_strings', 'core_external', 'get_component_strings', 'lib/external/externallib.php', 'moodle', ''),
(94, 'core_calendar_delete_calendar_events', 'core_calendar_external', 'delete_calendar_events', 'calendar/externallib.php', 'moodle', 'moodle/calendar:manageentries'),
(95, 'core_calendar_get_calendar_events', 'core_calendar_external', 'get_calendar_events', 'calendar/externallib.php', 'moodle', 'moodle/calendar:manageentries'),
(96, 'core_calendar_create_calendar_events', 'core_calendar_external', 'create_calendar_events', 'calendar/externallib.php', 'moodle', 'moodle/calendar:manageentries'),
(97, 'mod_assign_get_grades', 'mod_assign_external', 'get_grades', 'mod/assign/externallib.php', 'mod_assign', ''),
(98, 'mod_assign_get_assignments', 'mod_assign_external', 'get_assignments', 'mod/assign/externallib.php', 'mod_assign', ''),
(99, 'mod_assign_get_submissions', 'mod_assign_external', 'get_submissions', 'mod/assign/externallib.php', 'mod_assign', ''),
(100, 'mod_assign_get_user_flags', 'mod_assign_external', 'get_user_flags', 'mod/assign/externallib.php', 'mod_assign', ''),
(101, 'mod_assign_set_user_flags', 'mod_assign_external', 'set_user_flags', 'mod/assign/externallib.php', 'mod_assign', 'mod/assign:grade'),
(102, 'mod_assign_get_user_mappings', 'mod_assign_external', 'get_user_mappings', 'mod/assign/externallib.php', 'mod_assign', ''),
(103, 'mod_assign_revert_submissions_to_draft', 'mod_assign_external', 'revert_submissions_to_draft', 'mod/assign/externallib.php', 'mod_assign', ''),
(104, 'mod_assign_lock_submissions', 'mod_assign_external', 'lock_submissions', 'mod/assign/externallib.php', 'mod_assign', ''),
(105, 'mod_assign_unlock_submissions', 'mod_assign_external', 'unlock_submissions', 'mod/assign/externallib.php', 'mod_assign', ''),
(106, 'mod_assign_save_submission', 'mod_assign_external', 'save_submission', 'mod/assign/externallib.php', 'mod_assign', ''),
(107, 'mod_assign_submit_for_grading', 'mod_assign_external', 'submit_for_grading', 'mod/assign/externallib.php', 'mod_assign', ''),
(108, 'mod_assign_save_grade', 'mod_assign_external', 'save_grade', 'mod/assign/externallib.php', 'mod_assign', ''),
(109, 'mod_assign_save_grades', 'mod_assign_external', 'save_grades', 'mod/assign/externallib.php', 'mod_assign', ''),
(110, 'mod_assign_save_user_extensions', 'mod_assign_external', 'save_user_extensions', 'mod/assign/externallib.php', 'mod_assign', ''),
(111, 'mod_assign_reveal_identities', 'mod_assign_external', 'reveal_identities', 'mod/assign/externallib.php', 'mod_assign', ''),
(112, 'mod_forum_get_forums_by_courses', 'mod_forum_external', 'get_forums_by_courses', 'mod/forum/externallib.php', 'mod_forum', 'mod/forum:viewdiscussion'),
(113, 'mod_forum_get_forum_discussions', 'mod_forum_external', 'get_forum_discussions', 'mod/forum/externallib.php', 'mod_forum', 'mod/forum:viewdiscussion, mod/forum:viewqandawithoutposting'),
(114, 'mod_forum_get_forum_discussion_posts', 'mod_forum_external', 'get_forum_discussion_posts', 'mod/forum/externallib.php', 'mod_forum', 'mod/forum:viewdiscussion, mod/forum:viewqandawithoutposting'),
(115, 'moodle_enrol_manual_enrol_users', 'enrol_manual_external', 'enrol_users', 'enrol/manual/externallib.php', 'enrol_manual', 'enrol/manual:enrol'),
(116, 'enrol_manual_enrol_users', 'enrol_manual_external', 'enrol_users', 'enrol/manual/externallib.php', 'enrol_manual', 'enrol/manual:enrol'),
(117, 'enrol_self_get_instance_info', 'enrol_self_external', 'get_instance_info', 'enrol/self/externallib.php', 'enrol_self', ''),
(118, 'message_airnotifier_is_system_configured', 'message_airnotifier_external', 'is_system_configured', 'message/output/airnotifier/externallib.php', 'message_airnotifier', ''),
(119, 'message_airnotifier_are_notification_preferences_configured', 'message_airnotifier_external', 'are_notification_preferences_configured', 'message/output/airnotifier/externallib.php', 'message_airnotifier', ''),
(120, 'local_mobile_core_message_get_messages', 'local_mobile_external', 'core_message_get_messages', 'local/mobile/externallib.php', 'local_mobile', ''),
(121, 'local_mobile_core_user_remove_user_device', 'local_mobile_external', 'core_user_remove_user_device', 'local/mobile/externallib.php', 'local_mobile', ''),
(122, 'local_mobile_core_grades_get_grades', 'local_mobile_external', 'core_grades_get_grades', 'local/mobile/externallib.php', 'local_mobile', 'moodle/grade:view, moodle/grade:viewall'),
(123, 'local_mobile_core_files_get_files', 'local_mobile_external', 'core_files_get_files', 'local/mobile/externallib.php', 'local_mobile', ''),
(124, 'local_mobile_mod_forum_get_forums_by_courses', 'local_mobile_external', 'mod_forum_get_forums_by_courses', 'local/mobile/externallib.php', 'local_mobile', 'mod/forum:viewdiscussion'),
(125, 'local_mobile_mod_forum_get_forum_discussions_paginated', 'local_mobile_external', 'mod_forum_get_forum_discussions_paginated', 'local/mobile/externallib.php', 'local_mobile', 'mod/forum:viewdiscussion, mod/forum:viewqandawithoutposting'),
(126, 'local_mobile_mod_forum_get_forum_discussion_posts', 'local_mobile_external', 'mod_forum_get_forum_discussion_posts', 'local/mobile/externallib.php', 'local_mobile', 'mod/forum:viewdiscussion, mod/forum:viewqandawithoutposting'),
(127, 'local_mobile_gradereport_user_get_grades_table', 'local_mobile_external', 'gradereport_user_get_grades_table', 'local/mobile/externallib.php', 'local_mobile', ''),
(128, 'local_mobile_core_message_search_contacts', 'local_mobile_external', 'core_message_search_contacts', 'local/mobile/externallib.php', 'local_mobile', ''),
(129, 'local_mobile_core_message_get_blocked_users', 'local_mobile_external', 'core_message_get_blocked_users', 'local/mobile/externallib.php', 'local_mobile', ''),
(130, 'local_mobile_core_group_get_course_user_groups', 'local_mobile_external', 'core_group_get_course_user_groups', 'local/mobile/externallib.php', 'local_mobile', 'moodle/course:managegroups'),
(131, 'local_wstemplate_hello_world', 'local_wstemplate_external', 'hello_world', 'local/wstemplate/externallib.php', 'local_wstemplate', ''),
(133, 'local_mobile_core_completion_update_activity_completion_status_manually', 'local_mobile_external', 'core_completion_update_activity_completion_status_manually', 'local/mobile/externallib.php', 'local_mobile', ''),
(134, 'local_mobile_core_completion_get_activities_completion_status', 'local_mobile_external', 'core_completion_get_activities_completion_status', 'local/mobile/externallib.php', 'local_mobile', ''),
(135, 'local_mobile_core_completion_get_course_completion_status', 'local_mobile_external', 'core_completion_get_course_completion_status', 'local/mobile/externallib.php', 'local_mobile', 'report/completion:view'),
(136, 'local_mobile_core_rating_get_item_ratings', 'local_mobile_external', 'core_rating_get_item_ratings', 'local/mobile/externallib.php', 'local_mobile', 'moodle/rating:view'),
(137, 'local_mobile_core_comment_get_comments', 'local_mobile_external', 'core_comment_get_comments', 'local/mobile/externallib.php', 'local_mobile', 'moodle/comment:view'),
(138, 'local_mobile_core_notes_get_course_notes', 'local_mobile_external', 'core_notes_get_course_notes', 'local/mobile/externallib.php', 'local_mobile', 'moodle/notes:view'),
(139, 'local_mobile_core_course_view_course', 'local_mobile_external', 'core_course_view_course', 'local/mobile/externallib.php', 'local_mobile', ''),
(140, 'local_mobile_core_user_view_user_list', 'local_mobile_external', 'core_user_view_user_list', 'local/mobile/externallib.php', 'local_mobile', 'moodle/course:viewparticipants'),
(141, 'local_mobile_core_user_view_user_profile', 'local_mobile_external', 'core_user_view_user_profile', 'local/mobile/externallib.php', 'local_mobile', 'moodle/user:viewdetails'),
(142, 'local_mobile_mod_forum_view_forum', 'local_mobile_external', 'mod_forum_view_forum', 'local/mobile/externallib.php', 'local_mobile', 'mod/forum:viewdiscussion'),
(143, 'local_mobile_mod_forum_view_forum_discussion', 'local_mobile_external', 'mod_forum_view_forum_discussion', 'local/mobile/externallib.php', 'local_mobile', 'mod/forum:viewdiscussion'),
(144, 'local_mobile_core_message_mark_message_read', 'local_mobile_external', 'core_message_mark_message_read', 'local/mobile/externallib.php', 'local_mobile', ''),
(145, 'local_mobile_core_notes_view_notes', 'local_mobile_external', 'core_notes_view_notes', 'local/mobile/externallib.php', 'local_mobile', 'moodle/notes:view'),
(146, 'local_mobile_mod_resource_view_resource', 'local_mobile_external', 'mod_resource_view_resource', 'local/mobile/externallib.php', 'local_mobile', 'mod/resource:view'),
(147, 'local_mobile_mod_url_view_url', 'local_mobile_external', 'mod_url_view_url', 'local/mobile/externallib.php', 'local_mobile', 'mod/url:view'),
(148, 'local_mobile_mod_page_view_page', 'local_mobile_external', 'mod_page_view_page', 'local/mobile/externallib.php', 'local_mobile', 'mod/page:view'),
(149, 'local_mobile_mod_assign_view_grading_table', 'local_mobile_external', 'mod_assign_view_grading_table', 'local/mobile/externallib.php', 'local_mobile', 'mmod/assign:view, mod/assign:viewgrades'),
(150, 'local_mobile_mod_folder_view_folder', 'local_mobile_external', 'mod_folder_view_folder', 'local/mobile/externallib.php', 'local_mobile', 'mod/folder:view'),
(151, 'local_mobile_hello_world', 'local_mobile_external', 'hello_world', 'local/mobile/externallib.php', 'local_mobile', ''),
(153, 'local_mobile_create_assign', 'local_mobile_external', 'create_assign', 'local/mobile/externallib.php', 'local_mobile', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_external_services`
--

CREATE TABLE IF NOT EXISTS `mdl_external_services` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL,
  `requiredcapability` varchar(150) DEFAULT NULL,
  `restrictedusers` tinyint(1) NOT NULL,
  `component` varchar(100) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `shortname` varchar(255) DEFAULT NULL,
  `downloadfiles` tinyint(1) NOT NULL DEFAULT '0',
  `uploadfiles` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_exteserv_nam_uix` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='built in and custom external services' AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `mdl_external_services`
--

INSERT INTO `mdl_external_services` (`id`, `name`, `enabled`, `requiredcapability`, `restrictedusers`, `component`, `timecreated`, `timemodified`, `shortname`, `downloadfiles`, `uploadfiles`) VALUES
(1, 'Moodle mobile web service', 1, NULL, 0, 'moodle', 1422298959, 1422464903, 'moodle_mobile_app', 1, 1),
(3, 'mobileV1', 1, 'moodle/webservice:createtoken', 0, NULL, 1425488168, NULL, 'mobv1', 0, 0),
(4, 'Moodle Mobile additional features service', 1, '', 0, 'local_mobile', 1429716058, 1429716313, 'local_mobile', 1, 1),
(5, 'My service', 1, NULL, 0, 'local_wstemplate', 1429895247, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_external_services_functions`
--

CREATE TABLE IF NOT EXISTS `mdl_external_services_functions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `externalserviceid` bigint(10) NOT NULL,
  `functionname` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_exteservfunc_ext_ix` (`externalserviceid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='lists functions available in each service group' AUTO_INCREMENT=160 ;

--
-- Volcado de datos para la tabla `mdl_external_services_functions`
--

INSERT INTO `mdl_external_services_functions` (`id`, `externalserviceid`, `functionname`) VALUES
(1, 1, 'moodle_enrol_get_users_courses'),
(2, 1, 'moodle_enrol_get_enrolled_users'),
(3, 1, 'moodle_user_get_users_by_id'),
(4, 1, 'moodle_webservice_get_siteinfo'),
(5, 1, 'moodle_notes_create_notes'),
(6, 1, 'moodle_user_get_course_participants_by_id'),
(7, 1, 'moodle_user_get_users_by_courseid'),
(8, 1, 'moodle_message_send_instantmessages'),
(9, 1, 'core_course_get_contents'),
(10, 1, 'core_get_component_strings'),
(11, 1, 'core_user_add_user_device'),
(12, 1, 'core_calendar_get_calendar_events'),
(13, 1, 'core_enrol_get_users_courses'),
(14, 1, 'core_enrol_get_enrolled_users'),
(15, 1, 'core_user_get_users_by_id'),
(16, 1, 'core_webservice_get_site_info'),
(17, 1, 'core_notes_create_notes'),
(18, 1, 'core_user_get_course_user_profiles'),
(19, 1, 'core_enrol_get_enrolled_users'),
(20, 1, 'core_message_send_instant_messages'),
(21, 1, 'mod_assign_get_grades'),
(22, 1, 'mod_assign_get_assignments'),
(23, 1, 'mod_assign_get_submissions'),
(24, 1, 'mod_assign_get_user_flags'),
(25, 1, 'mod_assign_set_user_flags'),
(26, 1, 'mod_assign_get_user_mappings'),
(27, 1, 'mod_assign_revert_submissions_to_draft'),
(28, 1, 'mod_assign_lock_submissions'),
(29, 1, 'mod_assign_unlock_submissions'),
(30, 1, 'mod_assign_save_submission'),
(31, 1, 'mod_assign_submit_for_grading'),
(32, 1, 'mod_assign_save_grade'),
(33, 1, 'mod_assign_save_user_extensions'),
(34, 1, 'mod_assign_reveal_identities'),
(35, 1, 'message_airnotifier_is_system_configured'),
(36, 1, 'message_airnotifier_are_notification_preferences_configured'),
(37, 1, 'core_grades_get_grades'),
(38, 1, 'core_grades_update_grades'),
(39, 1, 'mod_forum_get_forums_by_courses'),
(40, 1, 'mod_forum_get_forum_discussions'),
(41, 1, 'mod_forum_get_forum_discussion_posts'),
(56, 3, 'core_user_get_users_by_field'),
(57, 3, 'core_enrol_get_users_courses'),
(58, 3, 'core_grades_get_grades'),
(59, 3, 'moodle_enrol_get_users_courses'),
(60, 3, 'moodle_enrol_get_enrolled_users'),
(61, 3, 'moodle_user_get_users_by_id'),
(62, 3, 'moodle_webservice_get_siteinfo'),
(63, 3, 'moodle_notes_create_notes'),
(64, 3, 'moodle_user_get_course_participants_by_id'),
(65, 3, 'moodle_user_get_users_by_courseid'),
(66, 3, 'moodle_message_send_instantmessages'),
(67, 3, 'core_course_get_contents'),
(68, 3, 'core_get_component_strings'),
(69, 3, 'core_user_add_user_device'),
(70, 3, 'core_calendar_get_calendar_events'),
(71, 3, 'core_enrol_get_enrolled_users'),
(72, 3, 'core_message_send_instant_messages'),
(73, 3, 'core_notes_create_notes'),
(74, 3, 'core_user_get_course_user_profiles'),
(75, 3, 'core_user_get_users_by_id'),
(76, 3, 'core_webservice_get_site_info'),
(77, 3, 'mod_assign_get_assignments'),
(78, 3, 'mod_assign_get_grades'),
(79, 3, 'mod_assign_get_submissions'),
(80, 3, 'mod_assign_get_user_flags'),
(81, 3, 'mod_assign_get_user_mappings'),
(82, 3, 'mod_assign_lock_submissions'),
(83, 3, 'mod_assign_revert_submissions_to_draft'),
(84, 3, 'mod_assign_set_user_flags'),
(85, 3, 'mod_assign_save_grades'),
(86, 3, 'mod_assign_save_submission'),
(87, 3, 'mod_assign_save_user_extensions'),
(88, 3, 'mod_assign_submit_for_grading'),
(89, 3, 'mod_assign_unlock_submissions'),
(90, 3, 'message_airnotifier_is_system_configured'),
(91, 3, 'mod_assign_reveal_identities'),
(92, 3, 'message_airnotifier_are_notification_preferences_configured'),
(93, 4, 'core_webservice_get_site_info'),
(94, 4, 'core_enrol_get_users_courses'),
(95, 4, 'core_notes_create_notes'),
(96, 4, 'core_message_send_instant_messages'),
(97, 4, 'core_enrol_get_enrolled_users'),
(98, 4, 'core_user_get_course_user_profiles'),
(99, 4, 'moodle_enrol_get_users_courses'),
(100, 4, 'moodle_enrol_get_enrolled_users'),
(101, 4, 'moodle_user_get_users_by_id'),
(102, 4, 'moodle_webservice_get_siteinfo'),
(103, 4, 'moodle_notes_create_notes'),
(104, 4, 'moodle_user_get_course_participants_by_id'),
(105, 4, 'moodle_user_get_users_by_courseid'),
(106, 4, 'moodle_message_send_instantmessages'),
(107, 4, 'core_course_get_contents'),
(108, 4, 'core_get_component_strings'),
(109, 4, 'local_mobile_core_message_get_messages'),
(110, 4, 'core_calendar_get_calendar_events'),
(111, 4, 'core_user_add_user_device'),
(112, 4, 'local_mobile_core_grades_get_grades'),
(113, 4, 'message_airnotifier_is_system_configured'),
(114, 4, 'message_airnotifier_are_notification_preferences_configured'),
(115, 4, 'local_mobile_mod_forum_get_forums_by_courses'),
(116, 4, 'local_mobile_mod_forum_get_forum_discussions_paginated'),
(117, 4, 'local_mobile_mod_forum_get_forum_discussion_posts'),
(118, 4, 'local_mobile_core_files_get_files'),
(119, 4, 'core_message_create_contacts'),
(120, 4, 'core_message_delete_contacts'),
(121, 4, 'core_message_block_contacts'),
(122, 4, 'core_message_unblock_contacts'),
(123, 4, 'core_message_get_contacts'),
(124, 4, 'core_message_search_contacts'),
(125, 4, 'local_mobile_core_message_search_contacts'),
(126, 4, 'local_mobile_gradereport_user_get_grades_table'),
(127, 4, 'local_mobile_core_message_get_blocked_users'),
(128, 4, 'local_mobile_core_group_get_course_user_groups'),
(129, 4, 'local_mobile_core_user_remove_user_device'),
(130, 4, 'mod_assign_get_assignments'),
(131, 4, 'mod_assign_get_submissions'),
(132, 5, 'local_wstemplate_hello_world'),
(134, 4, 'local_mobile_core_completion_update_activity_completion_status_manually'),
(135, 4, 'local_mobile_core_completion_get_course_completion_status'),
(136, 4, 'local_mobile_core_completion_get_activities_completion_status'),
(137, 4, 'local_mobile_core_comment_get_comments'),
(138, 4, 'local_mobile_core_notes_get_course_notes'),
(139, 4, 'local_mobile_core_rating_get_item_ratings'),
(140, 4, 'local_mobile_core_course_view_course'),
(141, 4, 'local_mobile_core_user_view_user_list'),
(142, 4, 'local_mobile_core_user_view_user_profile'),
(143, 4, 'local_mobile_core_message_mark_message_read'),
(144, 4, 'local_mobile_core_notes_view_notes'),
(145, 4, 'local_mobile_mod_forum_view_forum'),
(146, 4, 'local_mobile_mod_forum_view_forum_discussion'),
(147, 4, 'local_mobile_mod_resource_view_resource'),
(148, 4, 'local_mobile_mod_url_view_url'),
(149, 4, 'local_mobile_mod_page_view_page'),
(150, 4, 'local_mobile_mod_assign_view_grading_table'),
(151, 4, 'local_mobile_mod_folder_view_folder'),
(152, 4, 'local_mobile_hello_world'),
(153, 4, 'mod_assign_save_grade'),
(154, 4, 'mod_assign_get_grades'),
(155, 4, 'mod_forum_get_forum_discussions'),
(156, 4, 'mod_forum_get_forum_discussion_posts'),
(157, 4, 'core_calendar_create_calendar_events'),
(159, 4, 'local_mobile_create_assign');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_external_services_users`
--

CREATE TABLE IF NOT EXISTS `mdl_external_services_users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `externalserviceid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `iprestriction` varchar(255) DEFAULT NULL,
  `validuntil` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_exteservuser_ext_ix` (`externalserviceid`),
  KEY `mdl_exteservuser_use_ix` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='users allowed to use services with restricted users flag' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_external_tokens`
--

CREATE TABLE IF NOT EXISTS `mdl_external_tokens` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(128) NOT NULL DEFAULT '',
  `tokentype` smallint(4) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `externalserviceid` bigint(10) NOT NULL,
  `sid` varchar(128) DEFAULT NULL,
  `contextid` bigint(10) NOT NULL,
  `creatorid` bigint(10) NOT NULL DEFAULT '1',
  `iprestriction` varchar(255) DEFAULT NULL,
  `validuntil` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `lastaccess` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_extetoke_use_ix` (`userid`),
  KEY `mdl_extetoke_ext_ix` (`externalserviceid`),
  KEY `mdl_extetoke_con_ix` (`contextid`),
  KEY `mdl_extetoke_cre_ix` (`creatorid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Security tokens for accessing of external services' AUTO_INCREMENT=34 ;

--
-- Volcado de datos para la tabla `mdl_external_tokens`
--

INSERT INTO `mdl_external_tokens` (`id`, `token`, `tokentype`, `userid`, `externalserviceid`, `sid`, `contextid`, `creatorid`, `iprestriction`, `validuntil`, `timecreated`, `lastaccess`) VALUES
(24, '36191c07ad0aaa191fcea286f5adda3e', 0, 2, 1, NULL, 1, 2, NULL, 1449855018, 1442597418, 1442844654),
(10, '2d50d5dfeb12d71e03e0242522b86ca1', 0, 16, 1, NULL, 1, 16, NULL, 1432666617, 1425409017, 1425409591),
(11, '6d4f7c7e2960fa91021fe210634376fc', 0, 3, 3, NULL, 1, 3, NULL, 1432746010, 1425488410, 1429896446),
(30, '84ad87522c7f8ba7df29c2b50bca3951', 0, 12, 1, NULL, 1, 12, NULL, 1450725338, 1443467738, 1443469835),
(31, 'b3f3118d41b0014ba334bb8c4b7a74c7', 0, 11, 1, NULL, 1, 11, NULL, 1450727210, 1443469610, 1443469964),
(32, '98c2833a3c01483037ba40d5774b0bbe', 0, 3, 4, NULL, 1, 2, NULL, 0, 1443724792, 1446868847),
(15, '70613bbcca63b9bd7765c13cfd8d3014', 0, 9, 1, NULL, 1, 9, NULL, 1436468382, 1429210782, 1429210782),
(22, 'e8825c07d6e9bcca9a55c93cbfff040f', 0, 3, 4, NULL, 1, 3, NULL, 1448298567, 1441040967, 1446662964),
(27, 'cbf328967e00b4e755a75c4f1e28fa5d', 0, 10, 4, NULL, 1, 10, NULL, 1450369713, 1443112113, 1446868253),
(28, 'dfbeb1a3b061b95ce60f953449a56683', 0, 10, 1, NULL, 1, 10, NULL, 1450374925, 1443117325, 1443720578),
(29, '7c04cafbadfa16d5eeb9444e512a56d5', 0, 3, 1, NULL, 1, 2, NULL, 0, 1443464933, 1446762531),
(23, '25ae6bbe00f8326dfbe0792af472bc00', 0, 9, 4, NULL, 1, 9, NULL, 1448299537, 1441041937, 1446662649),
(21, 'ffbb8173912b313c5010a9f37a8d22e5', 0, 3, 5, NULL, 1, 2, NULL, 0, 1429896930, 1443720435),
(25, 'b68e78d8ad713ce4e7f39d1348f56236', 0, 12, 4, NULL, 1, 12, NULL, 1449855973, 1442598373, 1443115325),
(26, 'a79b678ba841146bf5d46453e31cff76', 0, 3, 1, NULL, 1, 3, NULL, 1449859482, 1442601882, 1443200449),
(33, '03e8fd13cc0bd9c22c3be9da728d6805', 0, 14, 4, NULL, 1, 14, NULL, 1451522819, 1444265219, 1444785224);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_files`
--

CREATE TABLE IF NOT EXISTS `mdl_files` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contenthash` varchar(40) NOT NULL DEFAULT '',
  `pathnamehash` varchar(40) NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `component` varchar(100) NOT NULL DEFAULT '',
  `filearea` varchar(50) NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `userid` bigint(10) DEFAULT NULL,
  `filesize` bigint(10) NOT NULL,
  `mimetype` varchar(100) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT '0',
  `source` longtext,
  `author` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `referencefileid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_file_pat_uix` (`pathnamehash`),
  KEY `mdl_file_comfilconite_ix` (`component`,`filearea`,`contextid`,`itemid`),
  KEY `mdl_file_con_ix` (`contenthash`),
  KEY `mdl_file_con2_ix` (`contextid`),
  KEY `mdl_file_use_ix` (`userid`),
  KEY `mdl_file_ref_ix` (`referencefileid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='description of files, content is stored in sha1 file pool' AUTO_INCREMENT=137 ;

--
-- Volcado de datos para la tabla `mdl_files`
--

INSERT INTO `mdl_files` (`id`, `contenthash`, `pathnamehash`, `contextid`, `component`, `filearea`, `itemid`, `filepath`, `filename`, `userid`, `filesize`, `mimetype`, `status`, `source`, `author`, `license`, `timecreated`, `timemodified`, `sortorder`, `referencefileid`) VALUES
(1, '41cfeee5884a43a4650a851f4f85e7b28316fcc9', 'a48e186a2cc853a9e94e9305f4e9bc086391212d', 1, 'theme_more', 'backgroundimage', 0, '/', 'background.jpg', 2, 4451, 'image/jpeg', 0, NULL, NULL, NULL, 1422299427, 1422299427, 0, NULL),
(2, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'd1da7ab1bb9c08a926037367bf8ce9a838034ead', 1, 'theme_more', 'backgroundimage', 0, '/', '.', 2, 0, NULL, 0, NULL, NULL, NULL, 1422299428, 1422299428, 0, NULL),
(3, 'fb262df98d67c4e2a5c9802403821e00cf2992af', '508e674d49c30d4fde325fe6c7f6fd3d56b247e1', 1, 'assignfeedback_editpdf', 'stamps', 0, '/', 'smile.png', 2, 1600, 'image/png', 0, NULL, NULL, NULL, 1422299436, 1422299436, 0, NULL),
(4, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '70b7cdade7b4e27d4e83f0cdaad10d6a3c0cccb5', 1, 'assignfeedback_editpdf', 'stamps', 0, '/', '.', 2, 0, NULL, 0, NULL, NULL, NULL, 1422299436, 1422299436, 0, NULL),
(5, 'a4f146f120e7e00d21291b924e26aaabe9f4297a', '68317eab56c67d32aeaee5acf509a0c4aa828b6b', 1, 'assignfeedback_editpdf', 'stamps', 0, '/', 'sad.png', 2, 1702, 'image/png', 0, NULL, NULL, NULL, 1422299436, 1422299436, 0, NULL),
(6, '33957e31ba9c763a74638b825f0a9154acf475e1', '695a55ff780e61c9e59428aa425430b0d6bde53b', 1, 'assignfeedback_editpdf', 'stamps', 0, '/', 'tick.png', 2, 1187, 'image/png', 0, NULL, NULL, NULL, 1422299436, 1422299436, 0, NULL),
(7, 'd613d55f37bb76d38d4ffb4b7b83e6c694778c30', '373e63af262a9b8466ba8632551520be793c37ff', 1, 'assignfeedback_editpdf', 'stamps', 0, '/', 'cross.png', 2, 1230, 'image/png', 0, NULL, NULL, NULL, 1422299436, 1422299436, 0, NULL),
(9, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '359a7cde148afec1d8f27fd69d94aeb52a5ee3a3', 24, 'user', 'private', 0, '/', '.', 3, 0, 'document/unknown', 0, NULL, NULL, NULL, 1422465337, 1426093550, 0, NULL),
(13, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '74c104d54c05b5f8c633a36da516d37e6c5279e4', 1, 'core', 'preview', 0, '/thumb/', '.', NULL, 0, NULL, 0, NULL, NULL, NULL, 1425406775, 1425406775, 0, NULL),
(14, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '884555719c50529b9df662a38619d04b5b11e25c', 1, 'core', 'preview', 0, '/', '.', NULL, 0, NULL, 0, NULL, NULL, NULL, 1425406775, 1425406775, 0, NULL),
(17, '993fe7209d3bfc280bb9f5e6c8c7c95cd4be5b44', '1c43628aa186dc380c301b3250a3afbd74e62c2b', 5, 'user', 'icon', 0, '/', 'f1.png', NULL, 22662, 'image/png', 0, NULL, NULL, NULL, 1425406780, 1425406780, 0, NULL),
(18, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '535824e8097c2aef8aa81b506a392b2bc65f58f0', 5, 'user', 'icon', 0, '/', '.', NULL, 0, NULL, 0, NULL, NULL, NULL, 1425406780, 1425406780, 0, NULL),
(19, '67e6d2ed3e175112af5d7eed45e20c02b9ba3de7', '0e935ee776b28b0546bf5bcd8b81d65a4dd888f8', 5, 'user', 'icon', 0, '/', 'f2.png', NULL, 2972, 'image/png', 0, NULL, NULL, NULL, 1425406780, 1425406780, 0, NULL),
(20, '9ea1089d69a8c5fea729081255c69bbeb8ebb555', '1486473a480bed8006fce8a14aed94a11246a0f7', 5, 'user', 'icon', 0, '/', 'f3.png', NULL, 209809, 'image/png', 0, NULL, NULL, NULL, 1425406780, 1425406780, 0, NULL),
(57, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'ffcadb7013234427f430d4be12b0be97ff49ba71', 82, 'assignsubmission_file', 'submission_files', 2, '/', '.', 9, 0, NULL, 0, NULL, NULL, NULL, 1430848181, 1430848183, 0, NULL),
(55, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '72a3e29819b6d13ef2f844cde2cae8fa692da113', 81, 'user', 'draft', 481398077, '/', '.', 9, 0, NULL, 0, NULL, NULL, NULL, 1430848181, 1430848181, 0, NULL),
(56, 'a779e7d2daa1322ff947f6392b704120776c7dcc', '5ac26915e4ce619557d6de3cb4a80c95d8c65adc', 82, 'assignsubmission_file', 'submission_files', 2, '/', 'cocina.html', 9, 2775, 'text/html', 0, 'cocina.html', 'Alan Blanco', 'allrightsreserved', 1430848181, 1430848183, 0, NULL),
(66, 'abbee92a42facd3c16d77f1403a295310eed5336', 'd3ddfc8c49e245776eeb7d43e5fb2d2048359ef8', 24, 'user', 'icon', 0, '/', 'f3.png', NULL, 261253, 'image/png', 0, NULL, NULL, NULL, 1432644376, 1432644376, 0, NULL),
(65, '02e8cff310d85a33245a91f7180c7b2978021288', '1ec83f2c7cf128a99771a95e817349f2a8e46851', 24, 'user', 'icon', 0, '/', 'f2.png', NULL, 3566, 'image/png', 0, NULL, NULL, NULL, 1432644376, 1432644376, 0, NULL),
(64, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '601143bd3ae9604ce884ce0cbef1d78f5cbc4a76', 24, 'user', 'icon', 0, '/', '.', NULL, 0, NULL, 0, NULL, NULL, NULL, 1432644376, 1432644376, 0, NULL),
(63, 'a60328a95161f182d106fdb40eec6e11fe92d6ca', '569d61073988a8c3f6d331ca394711941f3a03cc', 24, 'user', 'icon', 0, '/', 'f1.png', NULL, 26333, 'image/png', 0, NULL, NULL, NULL, 1432644376, 1432644376, 0, NULL),
(54, 'a779e7d2daa1322ff947f6392b704120776c7dcc', '8f7a29c239c64f7cd7ffe18a27ce28f167fad106', 81, 'user', 'draft', 481398077, '/', 'cocina.html', 9, 2775, 'text/html', 0, 'O:8:"stdClass":1:{s:6:"source";s:11:"cocina.html";}', 'Alan Blanco', 'allrightsreserved', 1430848181, 1430848181, 0, NULL),
(53, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'f848b4081c31bf2e426df7a470005029c3ccd826', 82, 'assignsubmission_file', 'submission_files', 1, '/', '.', 3, 0, NULL, 0, NULL, NULL, NULL, 1430848058, 1430848060, 0, NULL),
(50, 'a779e7d2daa1322ff947f6392b704120776c7dcc', 'fb2b74b7b43d82d3ed4032d0b10310342eb33644', 24, 'user', 'draft', 196142163, '/', 'cocina.html', 3, 2775, 'text/html', 0, 'O:8:"stdClass":1:{s:6:"source";s:11:"cocina.html";}', 'Nayn Ek', 'allrightsreserved', 1430848058, 1430848058, 0, NULL),
(51, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '1f96e9ca9ab6f73397ebfccf1cdf44f476188d2e', 24, 'user', 'draft', 196142163, '/', '.', 3, 0, NULL, 0, NULL, NULL, NULL, 1430848058, 1430848058, 0, NULL),
(52, 'a779e7d2daa1322ff947f6392b704120776c7dcc', 'b57e0dff24dfc9bf61075a4bc1e638fb0df5e135', 82, 'assignsubmission_file', 'submission_files', 1, '/', 'cocina.html', 3, 2775, 'text/html', 0, 'cocina.html', 'Nayn Ek', 'allrightsreserved', 1430848058, 1430848060, 0, NULL),
(86, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '8242636d7d80afad186475801005d21201b64b5c', 81, 'user', 'draft', 537554101, '/', '.', 9, 0, NULL, 0, NULL, NULL, NULL, 1441990065, 1441990065, 0, NULL),
(87, 'c25f82e1e10f13047886e62f1f31659c729a8d38', '726d49e0dd40dd14f806f4ee1e3e1780bdcf65e4', 1, 'core', 'preview', 0, '/thumb/', '7a0fdc05736aa6e9ecea510c0e078f936c23ecb8', NULL, 12594, 'image/png', 0, NULL, NULL, NULL, 1441990065, 1441990065, 0, NULL),
(85, '7a0fdc05736aa6e9ecea510c0e078f936c23ecb8', 'd231f051ad4b604d826079bfa7abb3c1f92feb61', 81, 'user', 'draft', 537554101, '/', '11052431_811730928920915_8102293039703864766_n.png', 9, 243142, 'image/png', 0, 'O:8:"stdClass":1:{s:6:"source";s:50:"11052431_811730928920915_8102293039703864766_n.png";}', 'Alan Blanco', 'allrightsreserved', 1441990065, 1441990065, 0, NULL),
(58, '18bc6292fc0d34248977b324a799f6e5032c9000', '34697cea11be828fecf3360d5bcfac897ea89f68', 24, 'user', 'draft', 568531488, '/', 'FB_IMG_1432644218599.jpg', 3, 5034, 'image/jpeg', 0, 'O:8:"stdClass":1:{s:6:"source";s:24:"FB_IMG_1432644218599.jpg";}', 'Nayn Ek', 'allrightsreserved', 1432644368, 1432644368, 0, NULL),
(59, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '98987d54b28b16c2da6f57358b945eec17a69be3', 24, 'user', 'draft', 568531488, '/', '.', 3, 0, NULL, 0, NULL, NULL, NULL, 1432644368, 1432644368, 0, NULL),
(60, '6bac4e88e2816cd86de1110da0952ea2883e27c0', 'a68fc393c877c37bc4153e6dbd55e73712b80b26', 1, 'core', 'preview', 0, '/thumb/', '18bc6292fc0d34248977b324a799f6e5032c9000', NULL, 23612, 'image/png', 0, NULL, NULL, NULL, 1432644369, 1432644369, 0, NULL),
(68, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'd378dc39602eb31d85e81d53dbd2ee980be1065e', 81, 'user', 'draft', 908816184, '/', '.', 9, 0, NULL, 0, NULL, NULL, NULL, 1432644557, 1432644557, 0, NULL),
(67, '3b9ccc6a207afe2a6a794e1b8fee63c35ed59c9c', 'a8602e760ff24813b27d4789e135e87f0ab73a20', 81, 'user', 'draft', 908816184, '/', 'FB_IMG_1432644431761.jpg', 9, 24344, 'image/jpeg', 0, 'O:8:"stdClass":1:{s:6:"source";s:24:"FB_IMG_1432644431761.jpg";}', 'Alan Blanco', 'allrightsreserved', 1432644557, 1432644557, 0, NULL),
(69, 'daba3569eed32311def52a9c868d676d97396e13', 'e9288dca10156293f403ee361f752386ebe92099', 1, 'core', 'preview', 0, '/thumb/', '3b9ccc6a207afe2a6a794e1b8fee63c35ed59c9c', NULL, 11565, 'image/png', 0, NULL, NULL, NULL, 1432644558, 1432644558, 0, NULL),
(77, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '35a773b0c46278eca558b7f072dbbdfdb10328ea', 81, 'user', 'private', 0, '/', '.', 9, 0, NULL, 0, NULL, NULL, NULL, 1441042297, 1441042297, 0, NULL),
(76, '4f7b39595f41b90740c40de8f4b56c32c65f01f8', 'c6b03b7f0409230ec46157bc6e1458b992510552', 81, 'user', 'private', 0, '/', 'cc.txt', 9, 20933, 'text/plain', 0, NULL, 'Alan Blanco', 'allrightsreserved', 1441042297, 1441042297, 0, NULL),
(78, '83927b747bac798a20ab7e3305a9fd45228c6725', '387be69ace963b25d3ccfad8a4d38ee3d304e3fa', 81, 'user', 'draft', 198066907, '/', 'README.TXT', 9, 1331, 'text/plain', 0, 'O:8:"stdClass":1:{s:6:"source";s:10:"README.TXT";}', 'Alan Blanco', 'allrightsreserved', 1441043358, 1441043358, 0, NULL),
(79, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '7693831c9399c0d46bc86265362941d5a6193f7a', 81, 'user', 'draft', 198066907, '/', '.', 9, 0, NULL, 0, NULL, NULL, NULL, 1441043358, 1441043358, 0, NULL),
(80, '83927b747bac798a20ab7e3305a9fd45228c6725', '96eac9396f1b8740bd2fb7fc64ef8f94344a5de1', 94, 'assignsubmission_file', 'submission_files', 3, '/', 'README.TXT', 9, 1331, 'text/plain', 0, 'README.TXT', 'Alan Blanco', 'allrightsreserved', 1441043358, 1441043360, 0, NULL),
(81, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'b7dacfd5103f6b0a2acddb16a6d0d9e6d68b5113', 94, 'assignsubmission_file', 'submission_files', 3, '/', '.', 9, 0, NULL, 0, NULL, NULL, NULL, 1441043358, 1441043360, 0, NULL),
(82, '1339435b15e2ed9e16402b055ea4655f16fec13c', '32e61d00c552e744dcc4fe508a1319c3e35e5f4c', 81, 'user', 'draft', 875481265, '/', '10053_605256729523522_113049056_n.jpg', 9, 27698, 'image/jpeg', 0, 'O:8:"stdClass":1:{s:6:"source";s:37:"10053_605256729523522_113049056_n.jpg";}', 'Alan Blanco', 'allrightsreserved', 1441989969, 1441989969, 0, NULL),
(83, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '68066f2979999c69754bfa2df43bac77720c053b', 81, 'user', 'draft', 875481265, '/', '.', 9, 0, NULL, 0, NULL, NULL, NULL, 1441989969, 1441989969, 0, NULL),
(84, '5be328d5c0d817ebe6b3c0f6104cdf6e13d5ebf2', 'ffbf06132a5354d801cfca77edb3f6b1c930b957', 1, 'core', 'preview', 0, '/thumb/', '1339435b15e2ed9e16402b055ea4655f16fec13c', NULL, 11438, 'image/png', 0, NULL, NULL, NULL, 1441989970, 1441989970, 0, NULL),
(95, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '6f89d9214a59c3b0d20bbc03f8c7dc76caf489ec', 5, 'user', 'draft', 48161826, '/', '.', 2, 0, NULL, 0, NULL, NULL, NULL, 1442596674, 1442596674, 0, NULL),
(94, '3c2c1f6a86b8d9b4218688fed552ed11d3ef84a7', '45875b6240eece9f3b5ae348b4686979fbee1438', 5, 'user', 'draft', 48161826, '/', 'perfe.png', 2, 42273, 'image/png', 0, 'O:8:"stdClass":1:{s:6:"source";s:9:"perfe.png";}', 'Admin User', 'allrightsreserved', 1442596674, 1442596674, 0, NULL),
(90, 'dec278a178bf2ef619e1e47819681b7dc4b18052', 'a27cc3284e080e19bc960b7a0b3235f797352dca', 81, 'user', 'icon', 0, '/', 'f1.png', NULL, 15217, 'image/png', 0, NULL, NULL, NULL, 1441990070, 1441990070, 0, NULL),
(91, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '506a5b07e2c6401a390e07ed21879e6fbcb266a2', 81, 'user', 'icon', 0, '/', '.', NULL, 0, NULL, 0, NULL, NULL, NULL, 1441990070, 1441990070, 0, NULL),
(92, 'e275dea8bd8c93402282fbd18115209701eb1e40', '75ea825a6c63531863107e72cbeede2dc9788ba2', 81, 'user', 'icon', 0, '/', 'f2.png', NULL, 2481, 'image/png', 0, NULL, NULL, NULL, 1441990070, 1441990070, 0, NULL),
(93, '6d8c0fc69d7c0f83a76dd0ff38b80a963628ca6b', '6e448b59ac853ce5f95c566b6db7fd8493d3c25a', 81, 'user', 'icon', 0, '/', 'f3.png', NULL, 337517, 'image/png', 0, NULL, NULL, NULL, 1441990070, 1441990070, 0, NULL),
(96, '2f1e82a33ffb7ad99fb4614cd48834a504de7274', '5f3895d540106f1c0829a9aa9d4903d6933b2488', 1, 'core', 'preview', 0, '/thumb/', '3c2c1f6a86b8d9b4218688fed552ed11d3ef84a7', NULL, 23460, 'image/png', 0, NULL, NULL, NULL, 1442596675, 1442596675, 0, NULL),
(104, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'ed59bcdaa86b36ee9e0c4fd0b9ebc6a5e6780965', 24, 'user', 'draft', 985890530, '/', '.', 3, 0, NULL, 0, NULL, NULL, NULL, 1443855408, 1443855408, 0, NULL),
(103, 'df7be9dc4f467187783aca68c7ce98e4df2172d0', 'f8e5cd1baf7deaf9c6464f5531298e22117f40d4', 24, 'user', 'draft', 985890530, '/', 'Penguins.jpg', 3, 777835, 'image/jpeg', 0, 'O:8:"stdClass":1:{s:6:"source";s:12:"Penguins.jpg";}', 'Nayn Ek', 'allrightsreserved', 1443855408, 1443855408, 0, NULL),
(99, '1a2642f6b3072f6847fdbc78b9e425bb2c80cf71', '4c3922a2c222933e9460a2f7fcd41392ca3498b0', 101, 'user', 'icon', 0, '/', 'f1.png', NULL, 28452, 'image/png', 0, NULL, NULL, NULL, 1442596682, 1442596682, 0, NULL),
(100, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '41fa8bc7c6cb8b9f43f23a6177262bdd684b4465', 101, 'user', 'icon', 0, '/', '.', NULL, 0, NULL, 0, NULL, NULL, NULL, 1442596682, 1442596682, 0, NULL),
(101, '529b28d9462e3849015db58ce9e48be0b0bdc4c8', '86c9e933fbff47c8e7f3f6ca1ebc35dda27b849f', 101, 'user', 'icon', 0, '/', 'f2.png', NULL, 3969, 'image/png', 0, NULL, NULL, NULL, 1442596682, 1442596682, 0, NULL),
(102, 'ff46ce2d5452a63f148d07d1e289faa4d273e20a', '57c29f7bd09363008067654934401843b3a9d638', 101, 'user', 'icon', 0, '/', 'f3.png', NULL, 201163, 'image/png', 0, NULL, NULL, NULL, 1442596682, 1442596682, 0, NULL),
(105, 'f89b24bceceab05ececd816c45a92b3eb627f075', 'ad143caceaee4d78a142b0cf49440b41949c4626', 1, 'core', 'preview', 0, '/thumb/', 'df7be9dc4f467187783aca68c7ce98e4df2172d0', NULL, 17698, 'image/png', 0, NULL, NULL, NULL, 1443855409, 1443855409, 0, NULL),
(106, 'df7be9dc4f467187783aca68c7ce98e4df2172d0', 'a07a4e7e732b18f1196a6def2d40bf5d8580b12d', 128, 'mod_folder', 'content', 0, '/', 'Penguins.jpg', 3, 777835, 'image/jpeg', 0, 'Penguins.jpg', 'Nayn Ek', 'allrightsreserved', 1443855408, 1443855411, 0, NULL),
(107, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'f61ae6f526ba2a7db6e485da011c75ad6f31b7e0', 128, 'mod_folder', 'content', 0, '/', '.', 3, 0, NULL, 0, NULL, NULL, NULL, 1443855408, 1443855411, 0, NULL),
(108, '6d779dd4c1b731ee14838f088c9ab23f9710e4b4', 'fb21177efea4b5e956923cbfe91147142248f9ea', 1, 'core', 'preview', 0, '/tinyicon/', 'df7be9dc4f467187783aca68c7ce98e4df2172d0', NULL, 1585, 'image/png', 0, NULL, NULL, NULL, 1443855411, 1443855411, 0, NULL),
(109, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'ab101fa6f3b2950a1981dcefd153fd11d65ca6a0', 1, 'core', 'preview', 0, '/tinyicon/', '.', NULL, 0, NULL, 0, NULL, NULL, NULL, 1443855411, 1443855411, 0, NULL),
(110, 'b84aa317503a20a4e3e80af03c35690f28b836a6', '79139ef70dad0b35e3b98045d71db18e0b3232e2', 24, 'user', 'draft', 242666361, '/', '961274_620560694686342_1152345330_n.jpg', 3, 112413, 'image/jpeg', 0, 'O:8:"stdClass":1:{s:6:"source";s:39:"961274_620560694686342_1152345330_n.jpg";}', 'Nayn Ek', 'allrightsreserved', 1444143392, 1444143392, 0, NULL),
(111, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'd5a17ef9286fd80b7a2b98c517ab54bb5b03467b', 24, 'user', 'draft', 242666361, '/', '.', 3, 0, NULL, 0, NULL, NULL, NULL, 1444143392, 1444143392, 0, NULL),
(112, 'b673adf48f45c37c3a8d8ca5e9f9cd6109909861', 'd613d3108f8677e296b0df7fcf0e2ae209dcc749', 1, 'core', 'preview', 0, '/thumb/', 'b84aa317503a20a4e3e80af03c35690f28b836a6', NULL, 13762, 'image/png', 0, NULL, NULL, NULL, 1444143393, 1444143393, 0, NULL),
(113, 'b84aa317503a20a4e3e80af03c35690f28b836a6', '3aede687a12a15233c3a4c33fc449773bf2e6e3f', 130, 'mod_forum', 'attachment', 11, '/', '961274_620560694686342_1152345330_n.jpg', 3, 112413, 'image/jpeg', 0, '961274_620560694686342_1152345330_n.jpg', 'Nayn Ek', 'allrightsreserved', 1444143392, 1444143401, 0, NULL),
(114, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '30fcaad15c6b878010c3db7b2bc3112f610f4d09', 130, 'mod_forum', 'attachment', 11, '/', '.', 3, 0, NULL, 0, NULL, NULL, NULL, 1444143392, 1444143401, 0, NULL),
(115, '3bd249f746a286edf8e86fcf4031b97537aa38a7', '207e47b2e4e74678dc38ab9bd0013eaafdd71b4f', 24, 'user', 'private', 0, '/', 'tag.html', 3, 65634, 'text/html', 0, NULL, 'Nayn Ek', 'allrightsreserved', 1446662898, 1446662898, 0, NULL),
(116, '3bd249f746a286edf8e86fcf4031b97537aa38a7', '78a3eb4e3fb31cd9ee0c9ecc85c09f3de1c47728', 24, 'user', 'draft', 175170685, '/', 'tag.html', 3, 65634, 'text/html', 0, 'O:8:"stdClass":2:{s:6:"source";N;s:8:"original";s:204:"YTo2OntzOjk6ImNvbnRleHRpZCI7aToyNDtzOjk6ImNvbXBvbmVudCI7czo0OiJ1c2VyIjtzOjY6Iml0ZW1pZCI7aTowO3M6ODoiZmlsZWFyZWEiO3M6NzoicHJpdmF0ZSI7czo4OiJmaWxlcGF0aCI7czoxOiIvIjtzOjg6ImZpbGVuYW1lIjtzOjg6InRhZy5odG1sIjt9";}', 'Nayn Ek', 'allrightsreserved', 1446662898, 1446662898, 0, NULL),
(117, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '695eb52fe810774474575e44bef070d092f6b095', 24, 'user', 'draft', 175170685, '/', '.', 3, 0, NULL, 0, NULL, NULL, NULL, 1446662983, 1446662983, 0, NULL),
(118, '3bd249f746a286edf8e86fcf4031b97537aa38a7', '894490f54120afdd9a9ab1fb38ec49c49bf75853', 24, 'user', 'draft', 602866714, '/', 'tag.html', 3, 65634, 'text/html', 0, 'O:8:"stdClass":2:{s:6:"source";N;s:8:"original";s:204:"YTo2OntzOjk6ImNvbnRleHRpZCI7aToyNDtzOjk6ImNvbXBvbmVudCI7czo0OiJ1c2VyIjtzOjY6Iml0ZW1pZCI7aTowO3M6ODoiZmlsZWFyZWEiO3M6NzoicHJpdmF0ZSI7czo4OiJmaWxlcGF0aCI7czoxOiIvIjtzOjg6ImZpbGVuYW1lIjtzOjg6InRhZy5odG1sIjt9";}', 'Nayn Ek', 'allrightsreserved', 1446662898, 1446662898, 0, NULL),
(119, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'ebae7eb1331ce7d85739c198fd5600b828065836', 24, 'user', 'draft', 602866714, '/', '.', 3, 0, NULL, 0, NULL, NULL, NULL, 1446764178, 1446764178, 0, NULL),
(120, '3bd249f746a286edf8e86fcf4031b97537aa38a7', 'e2f9f9318ff1fcb500fd1c1f321ebdba5ec3ea5a', 24, 'user', 'draft', 560971864, '/', 'tag.html', 3, 65634, 'text/html', 0, 'O:8:"stdClass":2:{s:6:"source";N;s:8:"original";s:204:"YTo2OntzOjk6ImNvbnRleHRpZCI7aToyNDtzOjk6ImNvbXBvbmVudCI7czo0OiJ1c2VyIjtzOjY6Iml0ZW1pZCI7aTowO3M6ODoiZmlsZWFyZWEiO3M6NzoicHJpdmF0ZSI7czo4OiJmaWxlcGF0aCI7czoxOiIvIjtzOjg6ImZpbGVuYW1lIjtzOjg6InRhZy5odG1sIjt9";}', 'Nayn Ek', 'allrightsreserved', 1446662898, 1446662898, 0, NULL),
(121, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '4903c5ed541f03f3dfcfc02988807bfd15668404', 24, 'user', 'draft', 560971864, '/', '.', 3, 0, NULL, 0, NULL, NULL, NULL, 1446764221, 1446764221, 0, NULL),
(122, '96cfb055f8f1e3a48b2edf2d31c0b6f80984ee87', '85977cdda5e342fa744b5a68a36c94418ac084d6', 24, 'user', 'private', 0, '/', 'image_1446764130237.jpg', 3, 86741, 'image/jpeg', 0, NULL, 'Nayn Ek', 'allrightsreserved', 1446764250, 1446764250, 0, NULL),
(123, '96cfb055f8f1e3a48b2edf2d31c0b6f80984ee87', '4f968c0a5e51c3604850259e1beb5bf09d2f1020', 24, 'user', 'draft', 875528886, '/', 'image_1446764130237.jpg', 3, 86741, 'image/jpeg', 0, 'O:8:"stdClass":2:{s:6:"source";N;s:8:"original";s:228:"YTo2OntzOjk6ImNvbnRleHRpZCI7aToyNDtzOjk6ImNvbXBvbmVudCI7czo0OiJ1c2VyIjtzOjY6Iml0ZW1pZCI7aTowO3M6ODoiZmlsZWFyZWEiO3M6NzoicHJpdmF0ZSI7czo4OiJmaWxlcGF0aCI7czoxOiIvIjtzOjg6ImZpbGVuYW1lIjtzOjIzOiJpbWFnZV8xNDQ2NzY0MTMwMjM3LmpwZyI7fQ==";}', 'Nayn Ek', 'allrightsreserved', 1446764250, 1446764250, 0, NULL),
(124, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '3304b9b6d14e7b4089e4ec90ae9405b89ed7745e', 24, 'user', 'draft', 875528886, '/', '.', 3, 0, NULL, 0, NULL, NULL, NULL, 1446764263, 1446764263, 0, NULL),
(125, '3bd249f746a286edf8e86fcf4031b97537aa38a7', 'aac9f8c5a1fb5dc9a42a12462f2e379f47bd083e', 24, 'user', 'draft', 875528886, '/', 'tag.html', 3, 65634, 'text/html', 0, 'O:8:"stdClass":2:{s:6:"source";N;s:8:"original";s:204:"YTo2OntzOjk6ImNvbnRleHRpZCI7aToyNDtzOjk6ImNvbXBvbmVudCI7czo0OiJ1c2VyIjtzOjY6Iml0ZW1pZCI7aTowO3M6ODoiZmlsZWFyZWEiO3M6NzoicHJpdmF0ZSI7czo4OiJmaWxlcGF0aCI7czoxOiIvIjtzOjg6ImZpbGVuYW1lIjtzOjg6InRhZy5odG1sIjt9";}', 'Nayn Ek', 'allrightsreserved', 1446662898, 1446662898, 0, NULL),
(126, 'c61eed551a0ccc12f27898ea54b9468b2059fdda', 'f17d0bbdcfe43574a9f059d497c70422500a04be', 1, 'core', 'preview', 0, '/thumb/', '96cfb055f8f1e3a48b2edf2d31c0b6f80984ee87', NULL, 17632, 'image/png', 0, NULL, NULL, NULL, 1446764267, 1446764267, 0, NULL),
(127, '96cfb055f8f1e3a48b2edf2d31c0b6f80984ee87', '2c2feddae0cb72cffc511ceba0c4b152ec87d11b', 24, 'user', 'draft', 989873871, '/', 'image_1446764130237.jpg', 3, 86741, 'image/jpeg', 0, 'O:8:"stdClass":2:{s:6:"source";N;s:8:"original";s:228:"YTo2OntzOjk6ImNvbnRleHRpZCI7aToyNDtzOjk6ImNvbXBvbmVudCI7czo0OiJ1c2VyIjtzOjY6Iml0ZW1pZCI7aTowO3M6ODoiZmlsZWFyZWEiO3M6NzoicHJpdmF0ZSI7czo4OiJmaWxlcGF0aCI7czoxOiIvIjtzOjg6ImZpbGVuYW1lIjtzOjIzOiJpbWFnZV8xNDQ2NzY0MTMwMjM3LmpwZyI7fQ==";}', 'Nayn Ek', 'allrightsreserved', 1446764250, 1446764250, 0, NULL),
(128, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '6bf1ffb06ad344bdefa9e870fa959837efedd0e1', 24, 'user', 'draft', 989873871, '/', '.', 3, 0, NULL, 0, NULL, NULL, NULL, 1446764335, 1446764335, 0, NULL),
(129, '3bd249f746a286edf8e86fcf4031b97537aa38a7', '08e2ec204253a00774c5ff096a3021fb9560aa6e', 24, 'user', 'draft', 989873871, '/', 'tag.html', 3, 65634, 'text/html', 0, 'O:8:"stdClass":2:{s:6:"source";N;s:8:"original";s:204:"YTo2OntzOjk6ImNvbnRleHRpZCI7aToyNDtzOjk6ImNvbXBvbmVudCI7czo0OiJ1c2VyIjtzOjY6Iml0ZW1pZCI7aTowO3M6ODoiZmlsZWFyZWEiO3M6NzoicHJpdmF0ZSI7czo4OiJmaWxlcGF0aCI7czoxOiIvIjtzOjg6ImZpbGVuYW1lIjtzOjg6InRhZy5odG1sIjt9";}', 'Nayn Ek', 'allrightsreserved', 1446662898, 1446662898, 0, NULL),
(130, 'a9df1c08d403b1ada2d49b459b380cd4bd462766', 'c8d7c8a816c9d9eb3ce20cb302a9834f2f3f07b6', 24, 'user', 'private', 0, '/', 'image_1446787315784.jpg', 3, 1156363, 'image/jpeg', 0, NULL, 'Nayn Ek', 'allrightsreserved', 1446787445, 1446787445, 0, NULL),
(131, '96cfb055f8f1e3a48b2edf2d31c0b6f80984ee87', 'af739b61dc8dd9e47f5e26a552fc1e5daaf8a9f6', 24, 'user', 'draft', 252836527, '/', 'image_1446764130237.jpg', 3, 86741, 'image/jpeg', 0, 'O:8:"stdClass":2:{s:6:"source";N;s:8:"original";s:228:"YTo2OntzOjk6ImNvbnRleHRpZCI7aToyNDtzOjk6ImNvbXBvbmVudCI7czo0OiJ1c2VyIjtzOjY6Iml0ZW1pZCI7aTowO3M6ODoiZmlsZWFyZWEiO3M6NzoicHJpdmF0ZSI7czo4OiJmaWxlcGF0aCI7czoxOiIvIjtzOjg6ImZpbGVuYW1lIjtzOjIzOiJpbWFnZV8xNDQ2NzY0MTMwMjM3LmpwZyI7fQ==";}', 'Nayn Ek', 'allrightsreserved', 1446764250, 1446764250, 0, NULL),
(132, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '09dbb9b53a5febdc241852a208cd280226982918', 24, 'user', 'draft', 252836527, '/', '.', 3, 0, NULL, 0, NULL, NULL, NULL, 1446839215, 1446839215, 0, NULL),
(133, 'a9df1c08d403b1ada2d49b459b380cd4bd462766', 'ffd00dfd9a17b6784352391f4a2ac64df9546e57', 24, 'user', 'draft', 252836527, '/', 'image_1446787315784.jpg', 3, 1156363, 'image/jpeg', 0, 'O:8:"stdClass":2:{s:6:"source";N;s:8:"original";s:228:"YTo2OntzOjk6ImNvbnRleHRpZCI7aToyNDtzOjk6ImNvbXBvbmVudCI7czo0OiJ1c2VyIjtzOjY6Iml0ZW1pZCI7aTowO3M6ODoiZmlsZWFyZWEiO3M6NzoicHJpdmF0ZSI7czo4OiJmaWxlcGF0aCI7czoxOiIvIjtzOjg6ImZpbGVuYW1lIjtzOjIzOiJpbWFnZV8xNDQ2Nzg3MzE1Nzg0LmpwZyI7fQ==";}', 'Nayn Ek', 'allrightsreserved', 1446787445, 1446787445, 0, NULL),
(134, '3bd249f746a286edf8e86fcf4031b97537aa38a7', '1b0380a6cbb29c27878eab2c6fc286b6deb1268d', 24, 'user', 'draft', 252836527, '/', 'tag.html', 3, 65634, 'text/html', 0, 'O:8:"stdClass":2:{s:6:"source";N;s:8:"original";s:204:"YTo2OntzOjk6ImNvbnRleHRpZCI7aToyNDtzOjk6ImNvbXBvbmVudCI7czo0OiJ1c2VyIjtzOjY6Iml0ZW1pZCI7aTowO3M6ODoiZmlsZWFyZWEiO3M6NzoicHJpdmF0ZSI7czo4OiJmaWxlcGF0aCI7czoxOiIvIjtzOjg6ImZpbGVuYW1lIjtzOjg6InRhZy5odG1sIjt9";}', 'Nayn Ek', 'allrightsreserved', 1446662898, 1446662898, 0, NULL),
(135, '4385b23d9096e1eaf8414ada27f38340fde7a8ab', '70de2830b5317f9723edf54253123f1487083bbc', 1, 'core', 'preview', 0, '/thumb/', 'a9df1c08d403b1ada2d49b459b380cd4bd462766', NULL, 16990, 'image/png', 0, NULL, NULL, NULL, 1446839217, 1446839217, 0, NULL),
(136, '5085eae0029e257dc05da7381680cd4dec02b386', '711d10fec7c01c71aae643c79c09fa7e88d80d81', 24, 'user', 'private', 0, '/', 'image_1446868718109.jpg', 3, 338971, 'image/jpeg', 0, NULL, 'Nayn Ek', 'allrightsreserved', 1446868840, 1446868840, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_files_reference`
--

CREATE TABLE IF NOT EXISTS `mdl_files_reference` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `repositoryid` bigint(10) NOT NULL,
  `lastsync` bigint(10) DEFAULT NULL,
  `reference` longtext,
  `referencehash` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_filerefe_repref_uix` (`repositoryid`,`referencehash`),
  KEY `mdl_filerefe_rep_ix` (`repositoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Store files references' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_filter_active`
--

CREATE TABLE IF NOT EXISTS `mdl_filter_active` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `active` smallint(4) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_filtacti_confil_uix` (`contextid`,`filter`),
  KEY `mdl_filtacti_con_ix` (`contextid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Stores information about which filters are active in which c' AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `mdl_filter_active`
--

INSERT INTO `mdl_filter_active` (`id`, `filter`, `contextid`, `active`, `sortorder`) VALUES
(1, 'activitynames', 1, 1, 2),
(2, 'mathjaxloader', 1, 1, 1),
(3, 'mediaplugin', 1, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_filter_config`
--

CREATE TABLE IF NOT EXISTS `mdl_filter_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_filtconf_confilnam_uix` (`contextid`,`filter`,`name`),
  KEY `mdl_filtconf_con_ix` (`contextid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores per-context configuration settings for filters which ' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_folder`
--

CREATE TABLE IF NOT EXISTS `mdl_folder` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `revision` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `display` smallint(4) NOT NULL DEFAULT '0',
  `showexpanded` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_fold_cou_ix` (`course`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='each record is one folder resource' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `mdl_folder`
--

INSERT INTO `mdl_folder` (`id`, `course`, `name`, `intro`, `introformat`, `revision`, `timemodified`, `display`, `showexpanded`) VALUES
(1, 8, 'Carpeta de imagenes', '<p>Imágenes de dispositivos de redes</p>', 1, 2, 1443855310, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_grading_areas`
--

CREATE TABLE IF NOT EXISTS `mdl_grading_areas` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(100) NOT NULL DEFAULT '',
  `areaname` varchar(100) NOT NULL DEFAULT '',
  `activemethod` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradarea_concomare_uix` (`contextid`,`component`,`areaname`),
  KEY `mdl_gradarea_con_ix` (`contextid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Identifies gradable areas where advanced grading can happen.' AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `mdl_grading_areas`
--

INSERT INTO `mdl_grading_areas` (`id`, `contextid`, `component`, `areaname`, `activemethod`) VALUES
(1, 82, 'mod_assign', 'submissions', NULL),
(2, 94, 'mod_assign', 'submissions', NULL),
(3, 98, 'mod_assign', 'submissions', NULL),
(4, 100, 'mod_assign', 'submissions', NULL),
(5, 119, 'mod_assign', 'submissions', NULL),
(6, 121, 'mod_assign', 'submissions', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_grading_definitions`
--

CREATE TABLE IF NOT EXISTS `mdl_grading_definitions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `areaid` bigint(10) NOT NULL,
  `method` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT '0',
  `copiedfromid` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `usercreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `timecopied` bigint(10) DEFAULT '0',
  `options` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_graddefi_aremet_uix` (`areaid`,`method`),
  KEY `mdl_graddefi_are_ix` (`areaid`),
  KEY `mdl_graddefi_use_ix` (`usermodified`),
  KEY `mdl_graddefi_use2_ix` (`usercreated`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains the basic information about an advanced grading for' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_grading_instances`
--

CREATE TABLE IF NOT EXISTS `mdl_grading_instances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `raterid` bigint(10) NOT NULL,
  `itemid` bigint(10) DEFAULT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT '0',
  `feedback` longtext,
  `feedbackformat` tinyint(2) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradinst_def_ix` (`definitionid`),
  KEY `mdl_gradinst_rat_ix` (`raterid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Grading form instance is an assessment record for one gradab' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_groupings`
--

CREATE TABLE IF NOT EXISTS `mdl_groupings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `idnumber` varchar(100) NOT NULL DEFAULT '',
  `description` longtext,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `configdata` longtext,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_grou_idn2_ix` (`idnumber`),
  KEY `mdl_grou_cou2_ix` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='A grouping is a collection of groups. WAS: groups_groupings' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_groupings_groups`
--

CREATE TABLE IF NOT EXISTS `mdl_groupings_groups` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `groupingid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `timeadded` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_grougrou_gro_ix` (`groupingid`),
  KEY `mdl_grougrou_gro2_ix` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Link a grouping to a group (note, groups can be in multiple ' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_groups`
--

CREATE TABLE IF NOT EXISTS `mdl_groups` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `idnumber` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(254) NOT NULL DEFAULT '',
  `description` longtext,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `enrolmentkey` varchar(50) DEFAULT NULL,
  `picture` bigint(10) NOT NULL DEFAULT '0',
  `hidepicture` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_grou_idn_ix` (`idnumber`),
  KEY `mdl_grou_cou_ix` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Each record represents a group.' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_groups_members`
--

CREATE TABLE IF NOT EXISTS `mdl_groups_members` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timeadded` bigint(10) NOT NULL DEFAULT '0',
  `component` varchar(100) NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_groumemb_gro_ix` (`groupid`),
  KEY `mdl_groumemb_use_ix` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Link a user to a group.' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_imscp`
--

CREATE TABLE IF NOT EXISTS `mdl_imscp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `revision` bigint(10) NOT NULL DEFAULT '0',
  `keepold` bigint(10) NOT NULL DEFAULT '-1',
  `structure` longtext,
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_imsc_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='each record is one imscp resource' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_label`
--

CREATE TABLE IF NOT EXISTS `mdl_label` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_labe_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines labels' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_lti`
--

CREATE TABLE IF NOT EXISTS `mdl_lti` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext,
  `introformat` smallint(4) DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `typeid` bigint(10) DEFAULT NULL,
  `toolurl` longtext NOT NULL,
  `securetoolurl` longtext,
  `instructorchoicesendname` tinyint(1) DEFAULT NULL,
  `instructorchoicesendemailaddr` tinyint(1) DEFAULT NULL,
  `instructorchoiceallowroster` tinyint(1) DEFAULT NULL,
  `instructorchoiceallowsetting` tinyint(1) DEFAULT NULL,
  `instructorcustomparameters` varchar(255) DEFAULT NULL,
  `instructorchoiceacceptgrades` tinyint(1) DEFAULT NULL,
  `grade` decimal(10,5) NOT NULL DEFAULT '100.00000',
  `launchcontainer` tinyint(2) NOT NULL DEFAULT '1',
  `resourcekey` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `debuglaunch` tinyint(1) NOT NULL DEFAULT '0',
  `showtitlelaunch` tinyint(1) NOT NULL DEFAULT '0',
  `showdescriptionlaunch` tinyint(1) NOT NULL DEFAULT '0',
  `servicesalt` varchar(40) DEFAULT NULL,
  `icon` longtext,
  `secureicon` longtext,
  PRIMARY KEY (`id`),
  KEY `mdl_lti_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table contains Basic LTI activities instances' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_lti_submission`
--

CREATE TABLE IF NOT EXISTS `mdl_lti_submission` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `ltiid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `datesubmitted` bigint(10) NOT NULL,
  `dateupdated` bigint(10) NOT NULL,
  `gradepercent` decimal(10,5) NOT NULL,
  `originalgrade` decimal(10,5) NOT NULL,
  `launchid` bigint(10) NOT NULL,
  `state` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_ltisubm_lti_ix` (`ltiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Keeps track of individual submissions for LTI activities.' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_lti_types`
--

CREATE TABLE IF NOT EXISTS `mdl_lti_types` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT 'basiclti Activity',
  `baseurl` longtext NOT NULL,
  `tooldomain` varchar(255) NOT NULL DEFAULT '',
  `state` tinyint(2) NOT NULL DEFAULT '2',
  `course` bigint(10) NOT NULL,
  `coursevisible` tinyint(1) NOT NULL DEFAULT '0',
  `createdby` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_ltitype_cou_ix` (`course`),
  KEY `mdl_ltitype_too_ix` (`tooldomain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Basic LTI pre-configured activities' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_lti_types_config`
--

CREATE TABLE IF NOT EXISTS `mdl_lti_types_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `typeid` bigint(10) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_ltitypeconf_typ_ix` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Basic LTI types configuration' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_mnetservice_enrol_courses`
--

CREATE TABLE IF NOT EXISTS `mdl_mnetservice_enrol_courses` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL,
  `remoteid` bigint(10) NOT NULL,
  `categoryid` bigint(10) NOT NULL,
  `categoryname` varchar(255) NOT NULL DEFAULT '',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `fullname` varchar(254) NOT NULL DEFAULT '',
  `shortname` varchar(100) NOT NULL DEFAULT '',
  `idnumber` varchar(100) NOT NULL DEFAULT '',
  `summary` longtext NOT NULL,
  `summaryformat` smallint(3) DEFAULT '0',
  `startdate` bigint(10) NOT NULL,
  `roleid` bigint(10) NOT NULL,
  `rolename` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetenrocour_hosrem_uix` (`hostid`,`remoteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Caches the information fetched via XML-RPC about courses on ' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_mnetservice_enrol_enrolments`
--

CREATE TABLE IF NOT EXISTS `mdl_mnetservice_enrol_enrolments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `remotecourseid` bigint(10) NOT NULL,
  `rolename` varchar(255) NOT NULL DEFAULT '',
  `enroltime` bigint(10) NOT NULL DEFAULT '0',
  `enroltype` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_mnetenroenro_use_ix` (`userid`),
  KEY `mdl_mnetenroenro_hos_ix` (`hostid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Caches the information about enrolments of our local users i' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_mnet_application`
--

CREATE TABLE IF NOT EXISTS `mdl_mnet_application` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `display_name` varchar(50) NOT NULL DEFAULT '',
  `xmlrpc_server_url` varchar(255) NOT NULL DEFAULT '',
  `sso_land_url` varchar(255) NOT NULL DEFAULT '',
  `sso_jump_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Information about applications on remote hosts' AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `mdl_mnet_application`
--

INSERT INTO `mdl_mnet_application` (`id`, `name`, `display_name`, `xmlrpc_server_url`, `sso_land_url`, `sso_jump_url`) VALUES
(1, 'moodle', 'Moodle', '/mnet/xmlrpc/server.php', '/auth/mnet/land.php', '/auth/mnet/jump.php'),
(2, 'mahara', 'Mahara', '/api/xmlrpc/server.php', '/auth/xmlrpc/land.php', '/auth/xmlrpc/jump.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_mnet_host`
--

CREATE TABLE IF NOT EXISTS `mdl_mnet_host` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `wwwroot` varchar(255) NOT NULL DEFAULT '',
  `ip_address` varchar(45) NOT NULL DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `public_key` longtext NOT NULL,
  `public_key_expires` bigint(10) NOT NULL DEFAULT '0',
  `transport` tinyint(2) NOT NULL DEFAULT '0',
  `portno` mediumint(5) NOT NULL DEFAULT '0',
  `last_connect_time` bigint(10) NOT NULL DEFAULT '0',
  `last_log_id` bigint(10) NOT NULL DEFAULT '0',
  `force_theme` tinyint(1) NOT NULL DEFAULT '0',
  `theme` varchar(100) DEFAULT NULL,
  `applicationid` bigint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_mnethost_app_ix` (`applicationid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Information about the local and remote hosts for RPC' AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `mdl_mnet_host`
--

INSERT INTO `mdl_mnet_host` (`id`, `deleted`, `wwwroot`, `ip_address`, `name`, `public_key`, `public_key_expires`, `transport`, `portno`, `last_connect_time`, `last_log_id`, `force_theme`, `theme`, `applicationid`) VALUES
(1, 0, 'http://localhost/moodle2/moodle', '::1', '', '', 0, 0, 0, 0, 0, 0, NULL, 1),
(2, 0, '', '', 'All Hosts', '', 0, 0, 0, 0, 0, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_mnet_host2service`
--

CREATE TABLE IF NOT EXISTS `mdl_mnet_host2service` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL DEFAULT '0',
  `serviceid` bigint(10) NOT NULL DEFAULT '0',
  `publish` tinyint(1) NOT NULL DEFAULT '0',
  `subscribe` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnethost_hosser_uix` (`hostid`,`serviceid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Information about the services for a given host' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_mnet_log`
--

CREATE TABLE IF NOT EXISTS `mdl_mnet_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL DEFAULT '0',
  `remoteid` bigint(10) NOT NULL DEFAULT '0',
  `time` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `ip` varchar(45) NOT NULL DEFAULT '',
  `course` bigint(10) NOT NULL DEFAULT '0',
  `coursename` varchar(40) NOT NULL DEFAULT '',
  `module` varchar(20) NOT NULL DEFAULT '',
  `cmid` bigint(10) NOT NULL DEFAULT '0',
  `action` varchar(40) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_mnetlog_hosusecou_ix` (`hostid`,`userid`,`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Store session data from users migrating to other sites' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_mnet_remote_rpc`
--

CREATE TABLE IF NOT EXISTS `mdl_mnet_remote_rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `functionname` varchar(40) NOT NULL DEFAULT '',
  `xmlrpcpath` varchar(80) NOT NULL DEFAULT '',
  `plugintype` varchar(20) NOT NULL DEFAULT '',
  `pluginname` varchar(20) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='This table describes functions that might be called remotely' AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `mdl_mnet_remote_rpc`
--

INSERT INTO `mdl_mnet_remote_rpc` (`id`, `functionname`, `xmlrpcpath`, `plugintype`, `pluginname`, `enabled`) VALUES
(1, 'user_authorise', 'auth/mnet/auth.php/user_authorise', 'auth', 'mnet', 1),
(2, 'keepalive_server', 'auth/mnet/auth.php/keepalive_server', 'auth', 'mnet', 1),
(3, 'kill_children', 'auth/mnet/auth.php/kill_children', 'auth', 'mnet', 1),
(4, 'refresh_log', 'auth/mnet/auth.php/refresh_log', 'auth', 'mnet', 1),
(5, 'fetch_user_image', 'auth/mnet/auth.php/fetch_user_image', 'auth', 'mnet', 1),
(6, 'fetch_theme_info', 'auth/mnet/auth.php/fetch_theme_info', 'auth', 'mnet', 1),
(7, 'update_enrolments', 'auth/mnet/auth.php/update_enrolments', 'auth', 'mnet', 1),
(8, 'keepalive_client', 'auth/mnet/auth.php/keepalive_client', 'auth', 'mnet', 1),
(9, 'kill_child', 'auth/mnet/auth.php/kill_child', 'auth', 'mnet', 1),
(10, 'available_courses', 'enrol/mnet/enrol.php/available_courses', 'enrol', 'mnet', 1),
(11, 'user_enrolments', 'enrol/mnet/enrol.php/user_enrolments', 'enrol', 'mnet', 1),
(12, 'enrol_user', 'enrol/mnet/enrol.php/enrol_user', 'enrol', 'mnet', 1),
(13, 'unenrol_user', 'enrol/mnet/enrol.php/unenrol_user', 'enrol', 'mnet', 1),
(14, 'course_enrolments', 'enrol/mnet/enrol.php/course_enrolments', 'enrol', 'mnet', 1),
(15, 'send_content_intent', 'portfolio/mahara/lib.php/send_content_intent', 'portfolio', 'mahara', 1),
(16, 'send_content_ready', 'portfolio/mahara/lib.php/send_content_ready', 'portfolio', 'mahara', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_mnet_remote_service2rpc`
--

CREATE TABLE IF NOT EXISTS `mdl_mnet_remote_service2rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `serviceid` bigint(10) NOT NULL DEFAULT '0',
  `rpcid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetremoserv_rpcser_uix` (`rpcid`,`serviceid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Group functions or methods under a service' AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `mdl_mnet_remote_service2rpc`
--

INSERT INTO `mdl_mnet_remote_service2rpc` (`id`, `serviceid`, `rpcid`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 2, 8),
(9, 2, 9),
(10, 3, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 4, 15),
(16, 4, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_mnet_rpc`
--

CREATE TABLE IF NOT EXISTS `mdl_mnet_rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `functionname` varchar(40) NOT NULL DEFAULT '',
  `xmlrpcpath` varchar(80) NOT NULL DEFAULT '',
  `plugintype` varchar(20) NOT NULL DEFAULT '',
  `pluginname` varchar(20) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `help` longtext NOT NULL,
  `profile` longtext NOT NULL,
  `filename` varchar(100) NOT NULL DEFAULT '',
  `classname` varchar(150) DEFAULT NULL,
  `static` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_mnetrpc_enaxml_ix` (`enabled`,`xmlrpcpath`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Functions or methods that we may publish or subscribe to' AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `mdl_mnet_rpc`
--

INSERT INTO `mdl_mnet_rpc` (`id`, `functionname`, `xmlrpcpath`, `plugintype`, `pluginname`, `enabled`, `help`, `profile`, `filename`, `classname`, `static`) VALUES
(1, 'user_authorise', 'auth/mnet/auth.php/user_authorise', 'auth', 'mnet', 1, 'Return user data for the provided token, compare with user_agent string.', 'a:2:{s:10:"parameters";a:2:{i:0;a:3:{s:4:"name";s:5:"token";s:4:"type";s:6:"string";s:11:"description";s:37:"The unique ID provided by remotehost.";}i:1;a:3:{s:4:"name";s:9:"useragent";s:4:"type";s:6:"string";s:11:"description";s:0:"";}}s:6:"return";a:2:{s:4:"type";s:5:"array";s:11:"description";s:44:"$userdata Array of user info for remote host";}}', 'auth.php', 'auth_plugin_mnet', 0),
(2, 'keepalive_server', 'auth/mnet/auth.php/keepalive_server', 'auth', 'mnet', 1, 'Receives an array of usernames from a remote machine and prods their\nsessions to keep them alive', 'a:2:{s:10:"parameters";a:1:{i:0;a:3:{s:4:"name";s:5:"array";s:4:"type";s:5:"array";s:11:"description";s:21:"An array of usernames";}}s:6:"return";a:2:{s:4:"type";s:6:"string";s:11:"description";s:28:""All ok" or an error message";}}', 'auth.php', 'auth_plugin_mnet', 0),
(3, 'kill_children', 'auth/mnet/auth.php/kill_children', 'auth', 'mnet', 1, 'The IdP uses this function to kill child sessions on other hosts', 'a:2:{s:10:"parameters";a:2:{i:0;a:3:{s:4:"name";s:8:"username";s:4:"type";s:6:"string";s:11:"description";s:28:"Username for session to kill";}i:1;a:3:{s:4:"name";s:9:"useragent";s:4:"type";s:6:"string";s:11:"description";s:0:"";}}s:6:"return";a:2:{s:4:"type";s:6:"string";s:11:"description";s:39:"A plaintext report of what has happened";}}', 'auth.php', 'auth_plugin_mnet', 0),
(4, 'refresh_log', 'auth/mnet/auth.php/refresh_log', 'auth', 'mnet', 1, 'Receives an array of log entries from an SP and adds them to the mnet_log\ntable', 'a:2:{s:10:"parameters";a:1:{i:0;a:3:{s:4:"name";s:5:"array";s:4:"type";s:5:"array";s:11:"description";s:21:"An array of usernames";}}s:6:"return";a:2:{s:4:"type";s:6:"string";s:11:"description";s:28:""All ok" or an error message";}}', 'auth.php', 'auth_plugin_mnet', 0),
(5, 'fetch_user_image', 'auth/mnet/auth.php/fetch_user_image', 'auth', 'mnet', 1, 'Returns the user''s profile image info\nIf the user exists and has a profile picture, the returned array will contain keys:\n f1          - the content of the default 100x100px image\n f1_mimetype - the mimetype of the f1 file\n f2          - the content of the 35x35px variant of the image\n f2_mimetype - the mimetype of the f2 file\nThe mimetype information was added in Moodle 2.0. In Moodle 1.x, images are always jpegs.', 'a:2:{s:10:"parameters";a:1:{i:0;a:3:{s:4:"name";s:8:"username";s:4:"type";s:3:"int";s:11:"description";s:18:"The id of the user";}}s:6:"return";a:2:{s:4:"type";s:5:"array";s:11:"description";s:84:"false if user not found, empty array if no picture exists, array with data otherwise";}}', 'auth.php', 'auth_plugin_mnet', 0),
(6, 'fetch_theme_info', 'auth/mnet/auth.php/fetch_theme_info', 'auth', 'mnet', 1, 'Returns the theme information and logo url as strings.', 'a:2:{s:10:"parameters";a:0:{}s:6:"return";a:2:{s:4:"type";s:6:"string";s:11:"description";s:14:"The theme info";}}', 'auth.php', 'auth_plugin_mnet', 0),
(7, 'update_enrolments', 'auth/mnet/auth.php/update_enrolments', 'auth', 'mnet', 1, 'Invoke this function _on_ the IDP to update it with enrolment info local to\nthe SP right after calling user_authorise()\nNormally called by the SP after calling user_authorise()', 'a:2:{s:10:"parameters";a:2:{i:0;a:3:{s:4:"name";s:8:"username";s:4:"type";s:6:"string";s:11:"description";s:12:"The username";}i:1;a:3:{s:4:"name";s:7:"courses";s:4:"type";s:5:"array";s:11:"description";s:0:"";}}s:6:"return";a:2:{s:4:"type";s:4:"bool";s:11:"description";s:0:"";}}', 'auth.php', 'auth_plugin_mnet', 0),
(8, 'keepalive_client', 'auth/mnet/auth.php/keepalive_client', 'auth', 'mnet', 1, 'Poll the IdP server to let it know that a user it has authenticated is still\nonline', 'a:2:{s:10:"parameters";a:0:{}s:6:"return";a:2:{s:4:"type";s:4:"void";s:11:"description";s:0:"";}}', 'auth.php', 'auth_plugin_mnet', 0),
(9, 'kill_child', 'auth/mnet/auth.php/kill_child', 'auth', 'mnet', 1, 'When the IdP requests that child sessions are terminated,\nthis function will be called on each of the child hosts. The machine that\ncalls the function (over xmlrpc) provides us with the mnethostid we need.', 'a:2:{s:10:"parameters";a:2:{i:0;a:3:{s:4:"name";s:8:"username";s:4:"type";s:6:"string";s:11:"description";s:28:"Username for session to kill";}i:1;a:3:{s:4:"name";s:9:"useragent";s:4:"type";s:6:"string";s:11:"description";s:0:"";}}s:6:"return";a:2:{s:4:"type";s:4:"bool";s:11:"description";s:15:"True on success";}}', 'auth.php', 'auth_plugin_mnet', 0),
(10, 'available_courses', 'enrol/mnet/enrol.php/available_courses', 'enrol', 'mnet', 1, 'Returns list of courses that we offer to the caller for remote enrolment of their users\nSince Moodle 2.0, courses are made available for MNet peers by creating an instance\nof enrol_mnet plugin for the course. Hidden courses are not returned. If there are two\ninstances - one specific for the host and one for ''All hosts'', the setting of the specific\none is used. The id of the peer is kept in customint1, no other custom fields are used.', 'a:2:{s:10:"parameters";a:0:{}s:6:"return";a:2:{s:4:"type";s:5:"array";s:11:"description";s:0:"";}}', 'enrol.php', 'enrol_mnet_mnetservice_enrol', 0),
(11, 'user_enrolments', 'enrol/mnet/enrol.php/user_enrolments', 'enrol', 'mnet', 1, 'This method has never been implemented in Moodle MNet API', 'a:2:{s:10:"parameters";a:0:{}s:6:"return";a:2:{s:4:"type";s:5:"array";s:11:"description";s:11:"empty array";}}', 'enrol.php', 'enrol_mnet_mnetservice_enrol', 0),
(12, 'enrol_user', 'enrol/mnet/enrol.php/enrol_user', 'enrol', 'mnet', 1, 'Enrol remote user to our course\nIf we do not have local record for the remote user in our database,\nit gets created here.', 'a:2:{s:10:"parameters";a:2:{i:0;a:3:{s:4:"name";s:8:"userdata";s:4:"type";s:5:"array";s:11:"description";s:14:"user details {";}i:1;a:3:{s:4:"name";s:8:"courseid";s:4:"type";s:3:"int";s:11:"description";s:19:"our local course id";}}s:6:"return";a:2:{s:4:"type";s:4:"bool";s:11:"description";s:69:"true if the enrolment has been successful, throws exception otherwise";}}', 'enrol.php', 'enrol_mnet_mnetservice_enrol', 0),
(13, 'unenrol_user', 'enrol/mnet/enrol.php/unenrol_user', 'enrol', 'mnet', 1, 'Unenrol remote user from our course\nOnly users enrolled via enrol_mnet plugin can be unenrolled remotely. If the\nremote user is enrolled into the local course via some other enrol plugin\n(enrol_manual for example), the remote host can''t touch such enrolment. Please\ndo not report this behaviour as bug, it is a feature ;-)', 'a:2:{s:10:"parameters";a:2:{i:0;a:3:{s:4:"name";s:8:"username";s:4:"type";s:6:"string";s:11:"description";s:18:"of the remote user";}i:1;a:3:{s:4:"name";s:8:"courseid";s:4:"type";s:3:"int";s:11:"description";s:0:"";}}s:6:"return";a:2:{s:4:"type";s:4:"bool";s:11:"description";s:71:"true if the unenrolment has been successful, throws exception otherwise";}}', 'enrol.php', 'enrol_mnet_mnetservice_enrol', 0),
(14, 'course_enrolments', 'enrol/mnet/enrol.php/course_enrolments', 'enrol', 'mnet', 1, 'Returns a list of users from the client server who are enrolled in our course\nSuitable instance of enrol_mnet must be created in the course. This method will not\nreturn any information about the enrolments in courses that are not available for\nremote enrolment, even if their users are enrolled into them via other plugin\n(note the difference from {@link self::user_enrolments()}).\nThis method will return enrolment information for users from hosts regardless\nthe enrolment plugin. It does not matter if the user was enrolled remotely by\ntheir admin or locally. Once the course is available for remote enrolments, we\nwill tell them everything about their users.\nIn Moodle 1.x the returned array used to be indexed by username. The side effect\nof MDL-19219 fix is that we do not need to use such index and therefore we can\nreturn all enrolment records. MNet clients 1.x will only use the last record for\nthe student, if she is enrolled via multiple plugins.', 'a:2:{s:10:"parameters";a:2:{i:0;a:3:{s:4:"name";s:8:"courseid";s:4:"type";s:3:"int";s:11:"description";s:16:"ID of our course";}i:1;a:3:{s:4:"name";s:5:"roles";s:4:"type";s:5:"array";s:11:"description";s:0:"";}}s:6:"return";a:2:{s:4:"type";s:5:"array";s:11:"description";s:0:"";}}', 'enrol.php', 'enrol_mnet_mnetservice_enrol', 0),
(15, 'fetch_file', 'portfolio/mahara/lib.php/fetch_file', 'portfolio', 'mahara', 1, 'xmlrpc (mnet) function to get the file.\nreads in the file and returns it base_64 encoded\nso that it can be enrypted by mnet.', 'a:2:{s:10:"parameters";a:1:{i:0;a:3:{s:4:"name";s:5:"token";s:4:"type";s:6:"string";s:11:"description";s:56:"the token recieved previously during send_content_intent";}}s:6:"return";a:2:{s:4:"type";s:4:"void";s:11:"description";s:0:"";}}', 'lib.php', 'portfolio_plugin_mahara', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_mnet_service`
--

CREATE TABLE IF NOT EXISTS `mdl_mnet_service` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `description` varchar(40) NOT NULL DEFAULT '',
  `apiversion` varchar(10) NOT NULL DEFAULT '',
  `offer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='A service is a group of functions' AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `mdl_mnet_service`
--

INSERT INTO `mdl_mnet_service` (`id`, `name`, `description`, `apiversion`, `offer`) VALUES
(1, 'sso_idp', '', '1', 1),
(2, 'sso_sp', '', '1', 1),
(3, 'mnet_enrol', '', '1', 1),
(4, 'pf', '', '1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_mnet_service2rpc`
--

CREATE TABLE IF NOT EXISTS `mdl_mnet_service2rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `serviceid` bigint(10) NOT NULL DEFAULT '0',
  `rpcid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetserv_rpcser_uix` (`rpcid`,`serviceid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Group functions or methods under a service' AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `mdl_mnet_service2rpc`
--

INSERT INTO `mdl_mnet_service2rpc` (`id`, `serviceid`, `rpcid`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 2, 8),
(9, 2, 9),
(10, 3, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 4, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_mnet_session`
--

CREATE TABLE IF NOT EXISTS `mdl_mnet_session` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `username` varchar(100) NOT NULL DEFAULT '',
  `token` varchar(40) NOT NULL DEFAULT '',
  `mnethostid` bigint(10) NOT NULL DEFAULT '0',
  `useragent` varchar(40) NOT NULL DEFAULT '',
  `confirm_timeout` bigint(10) NOT NULL DEFAULT '0',
  `session_id` varchar(40) NOT NULL DEFAULT '',
  `expires` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetsess_tok_uix` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Store session data from users migrating to other sites' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_mnet_sso_access_control`
--

CREATE TABLE IF NOT EXISTS `mdl_mnet_sso_access_control` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `mnet_host_id` bigint(10) NOT NULL DEFAULT '0',
  `accessctrl` varchar(20) NOT NULL DEFAULT 'allow',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetssoaccecont_mneuse_uix` (`mnet_host_id`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Users by host permitted (or not) to login from a remote prov' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_modules`
--

CREATE TABLE IF NOT EXISTS `mdl_modules` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `cron` bigint(10) NOT NULL DEFAULT '0',
  `lastcron` bigint(10) NOT NULL DEFAULT '0',
  `search` varchar(255) NOT NULL DEFAULT '',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_modu_nam_ix` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='modules available in the site' AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `mdl_modules`
--

INSERT INTO `mdl_modules` (`id`, `name`, `cron`, `lastcron`, `search`, `visible`) VALUES
(1, 'assign', 60, 0, '', 1),
(2, 'assignment', 60, 0, '', 0),
(3, 'book', 0, 0, '', 1),
(4, 'chat', 300, 1430844827, '', 1),
(5, 'choice', 0, 0, '', 1),
(6, 'data', 0, 0, '', 1),
(7, 'feedback', 0, 0, '', 0),
(8, 'folder', 0, 0, '', 1),
(9, 'forum', 60, 1430844827, '', 1),
(10, 'glossary', 0, 0, '', 1),
(11, 'imscp', 0, 0, '', 1),
(12, 'label', 0, 0, '', 1),
(13, 'lesson', 0, 0, '', 1),
(14, 'lti', 0, 0, '', 1),
(15, 'page', 0, 0, '', 1),
(16, 'quiz', 60, 1430844827, '', 1),
(17, 'resource', 0, 0, '', 1),
(18, 'scorm', 300, 1430844827, '', 1),
(19, 'survey', 0, 0, '', 1),
(20, 'url', 0, 0, '', 1),
(21, 'wiki', 0, 0, '', 1),
(22, 'workshop', 60, 1430844827, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_my_pages`
--

CREATE TABLE IF NOT EXISTS `mdl_my_pages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `private` tinyint(1) NOT NULL DEFAULT '1',
  `sortorder` mediumint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_mypage_usepri_ix` (`userid`,`private`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Extra user pages for the My Moodle system' AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `mdl_my_pages`
--

INSERT INTO `mdl_my_pages` (`id`, `userid`, `name`, `private`, `sortorder`) VALUES
(1, NULL, '__default', 0, 0),
(2, NULL, '__default', 1, 0),
(3, 2, '__default', 1, 0),
(4, 3, '__default', 1, 0),
(5, 11, '__default', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_page`
--

CREATE TABLE IF NOT EXISTS `mdl_page` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `content` longtext,
  `contentformat` smallint(4) NOT NULL DEFAULT '0',
  `legacyfiles` smallint(4) NOT NULL DEFAULT '0',
  `legacyfileslast` bigint(10) DEFAULT NULL,
  `display` smallint(4) NOT NULL DEFAULT '0',
  `displayoptions` longtext,
  `revision` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_page_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Each record is one page and its config data' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_post`
--

CREATE TABLE IF NOT EXISTS `mdl_post` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `module` varchar(20) NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `moduleid` bigint(10) NOT NULL DEFAULT '0',
  `coursemoduleid` bigint(10) NOT NULL DEFAULT '0',
  `subject` varchar(128) NOT NULL DEFAULT '',
  `summary` longtext,
  `content` longtext,
  `uniquehash` varchar(255) NOT NULL DEFAULT '',
  `rating` bigint(10) NOT NULL DEFAULT '0',
  `format` bigint(10) NOT NULL DEFAULT '0',
  `summaryformat` tinyint(2) NOT NULL DEFAULT '0',
  `attachment` varchar(100) DEFAULT NULL,
  `publishstate` varchar(20) NOT NULL DEFAULT 'draft',
  `lastmodified` bigint(10) NOT NULL DEFAULT '0',
  `created` bigint(10) NOT NULL DEFAULT '0',
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_post_iduse_uix` (`id`,`userid`),
  KEY `mdl_post_las_ix` (`lastmodified`),
  KEY `mdl_post_mod_ix` (`module`),
  KEY `mdl_post_sub_ix` (`subject`),
  KEY `mdl_post_use_ix` (`usermodified`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Generic post table to hold data blog entries etc in differen' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `mdl_post`
--

INSERT INTO `mdl_post` (`id`, `module`, `userid`, `courseid`, `groupid`, `moduleid`, `coursemoduleid`, `subject`, `summary`, `content`, `uniquehash`, `rating`, `format`, `summaryformat`, `attachment`, `publishstate`, `lastmodified`, `created`, `usermodified`) VALUES
(1, 'notes', 10, 8, 0, 0, 0, '', NULL, 'Hola nota', '', 0, 1, 0, NULL, 'draft', 1446765233, 1446765233, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_profiling`
--

CREATE TABLE IF NOT EXISTS `mdl_profiling` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `runid` varchar(32) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  `totalexecutiontime` bigint(10) NOT NULL,
  `totalcputime` bigint(10) NOT NULL,
  `totalcalls` bigint(10) NOT NULL,
  `totalmemory` bigint(10) NOT NULL,
  `runreference` tinyint(2) NOT NULL DEFAULT '0',
  `runcomment` varchar(255) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_prof_run_uix` (`runid`),
  KEY `mdl_prof_urlrun_ix` (`url`,`runreference`),
  KEY `mdl_prof_timrun_ix` (`timecreated`,`runreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores the results of all the profiling runs' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_qtype_essay_options`
--

CREATE TABLE IF NOT EXISTS `mdl_qtype_essay_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL,
  `responseformat` varchar(16) NOT NULL DEFAULT 'editor',
  `responserequired` tinyint(2) NOT NULL DEFAULT '1',
  `responsefieldlines` smallint(4) NOT NULL DEFAULT '15',
  `attachments` smallint(4) NOT NULL DEFAULT '0',
  `attachmentsrequired` smallint(4) NOT NULL DEFAULT '0',
  `graderinfo` longtext,
  `graderinfoformat` smallint(4) NOT NULL DEFAULT '0',
  `responsetemplate` longtext,
  `responsetemplateformat` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_qtypessaopti_que_uix` (`questionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Extra options for essay questions.' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_qtype_match_options`
--

CREATE TABLE IF NOT EXISTS `mdl_qtype_match_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT '1',
  `correctfeedback` longtext NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `partiallycorrectfeedback` longtext NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `incorrectfeedback` longtext NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_qtypmatcopti_que_uix` (`questionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines the question-type specific options for matching ques' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_qtype_match_subquestions`
--

CREATE TABLE IF NOT EXISTS `mdl_qtype_match_subquestions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `questiontext` longtext NOT NULL,
  `questiontextformat` tinyint(2) NOT NULL DEFAULT '0',
  `answertext` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_qtypmatcsubq_que_ix` (`questionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The subquestions that make up a matching question' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_qtype_multichoice_options`
--

CREATE TABLE IF NOT EXISTS `mdl_qtype_multichoice_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `layout` smallint(4) NOT NULL DEFAULT '0',
  `single` smallint(4) NOT NULL DEFAULT '0',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT '1',
  `correctfeedback` longtext NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `partiallycorrectfeedback` longtext NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `incorrectfeedback` longtext NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `answernumbering` varchar(10) NOT NULL DEFAULT 'abc',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_qtypmultopti_que_uix` (`questionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Options for multiple choice questions' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_qtype_randomsamatch_options`
--

CREATE TABLE IF NOT EXISTS `mdl_qtype_randomsamatch_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `choose` bigint(10) NOT NULL DEFAULT '4',
  `subcats` tinyint(2) NOT NULL DEFAULT '1',
  `correctfeedback` longtext NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `partiallycorrectfeedback` longtext NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `incorrectfeedback` longtext NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_qtyprandopti_que_uix` (`questionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about a random short-answer matching question' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_qtype_shortanswer_options`
--

CREATE TABLE IF NOT EXISTS `mdl_qtype_shortanswer_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `usecase` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_qtypshoropti_que_uix` (`questionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Options for short answer questions' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_role`
--

CREATE TABLE IF NOT EXISTS `mdl_role` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `shortname` varchar(100) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `archetype` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_role_sor_uix` (`sortorder`),
  UNIQUE KEY `mdl_role_sho_uix` (`shortname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='moodle roles' AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `mdl_role`
--

INSERT INTO `mdl_role` (`id`, `name`, `shortname`, `description`, `sortorder`, `archetype`) VALUES
(1, '', 'manager', '', 1, 'manager'),
(2, '', 'coursecreator', '', 2, 'coursecreator'),
(3, '', 'editingteacher', '', 3, 'editingteacher'),
(4, '', 'teacher', '', 4, 'teacher'),
(5, '', 'student', '', 5, 'student'),
(6, '', 'guest', '', 6, 'guest'),
(7, '', 'user', '', 7, 'frontpage'),
(8, '', 'frontpage', '', 8, 'frontpage'),
(9, 'webservice usuario', 'webserviceusuario', '<p><br></p>', 9, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_role_allow_assign`
--

CREATE TABLE IF NOT EXISTS `mdl_role_allow_assign` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `allowassign` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolealloassi_rolall_uix` (`roleid`,`allowassign`),
  KEY `mdl_rolealloassi_rol_ix` (`roleid`),
  KEY `mdl_rolealloassi_all_ix` (`allowassign`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='this defines what role can assign what role' AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `mdl_role_allow_assign`
--

INSERT INTO `mdl_role_allow_assign` (`id`, `roleid`, `allowassign`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 3, 4),
(7, 3, 5),
(9, 9, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_role_allow_override`
--

CREATE TABLE IF NOT EXISTS `mdl_role_allow_override` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `allowoverride` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolealloover_rolall_uix` (`roleid`,`allowoverride`),
  KEY `mdl_rolealloover_rol_ix` (`roleid`),
  KEY `mdl_rolealloover_all_ix` (`allowoverride`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='this defines what role can override what role' AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `mdl_role_allow_override`
--

INSERT INTO `mdl_role_allow_override` (`id`, `roleid`, `allowoverride`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 3, 4),
(10, 3, 5),
(11, 3, 6),
(12, 9, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_role_allow_switch`
--

CREATE TABLE IF NOT EXISTS `mdl_role_allow_switch` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL,
  `allowswitch` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolealloswit_rolall_uix` (`roleid`,`allowswitch`),
  KEY `mdl_rolealloswit_rol_ix` (`roleid`),
  KEY `mdl_rolealloswit_all_ix` (`allowswitch`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='This table stores which which other roles a user is allowed ' AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `mdl_role_allow_switch`
--

INSERT INTO `mdl_role_allow_switch` (`id`, `roleid`, `allowswitch`) VALUES
(1, 1, 3),
(2, 1, 4),
(3, 1, 5),
(4, 1, 6),
(5, 3, 4),
(6, 3, 5),
(7, 3, 6),
(8, 4, 5),
(9, 4, 6),
(10, 9, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_role_assignments`
--

CREATE TABLE IF NOT EXISTS `mdl_role_assignments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `contextid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `modifierid` bigint(10) NOT NULL DEFAULT '0',
  `component` varchar(100) NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL DEFAULT '0',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_roleassi_sor_ix` (`sortorder`),
  KEY `mdl_roleassi_rolcon_ix` (`roleid`,`contextid`),
  KEY `mdl_roleassi_useconrol_ix` (`userid`,`contextid`,`roleid`),
  KEY `mdl_roleassi_comiteuse_ix` (`component`,`itemid`,`userid`),
  KEY `mdl_roleassi_rol_ix` (`roleid`),
  KEY `mdl_roleassi_con_ix` (`contextid`),
  KEY `mdl_roleassi_use_ix` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='assigning roles in different context' AUTO_INCREMENT=53 ;

--
-- Volcado de datos para la tabla `mdl_role_assignments`
--

INSERT INTO `mdl_role_assignments` (`id`, `roleid`, `contextid`, `userid`, `timemodified`, `modifierid`, `component`, `itemid`, `sortorder`) VALUES
(2, 3, 1, 3, 1422465679, 2, '', 0, 0),
(45, 5, 1, 12, 1443111960, 2, '', 0, 0),
(46, 5, 1, 10, 1443111964, 2, '', 0, 0),
(47, 5, 75, 10, 1443112054, 10, '', 0, 0),
(48, 5, 75, 12, 1443197244, 12, '', 0, 0),
(49, 5, 1, 14, 1444243371, 2, '', 0, 0),
(50, 5, 75, 14, 1444243432, 2, '', 0, 0),
(51, 5, 60, 14, 1444266104, 2, '', 0, 0),
(19, 5, 60, 3, 1428946653, 3, '', 0, 0),
(21, 5, 75, 9, 1429897743, 9, '', 0, 0),
(22, 5, 60, 9, 1429897786, 9, '', 0, 0),
(24, 5, 85, 9, 1431444730, 2, '', 0, 0),
(26, 3, 1, 11, 1431444830, 2, '', 0, 0),
(38, 3, 108, 12, 1442599072, 2, '', 0, 0),
(31, 5, 102, 10, 1442598142, 2, '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_role_capabilities`
--

CREATE TABLE IF NOT EXISTS `mdl_role_capabilities` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL DEFAULT '0',
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `capability` varchar(255) NOT NULL DEFAULT '',
  `permission` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `modifierid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolecapa_rolconcap_uix` (`roleid`,`contextid`,`capability`),
  KEY `mdl_rolecapa_rol_ix` (`roleid`),
  KEY `mdl_rolecapa_con_ix` (`contextid`),
  KEY `mdl_rolecapa_mod_ix` (`modifierid`),
  KEY `mdl_rolecapa_cap_ix` (`capability`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='permission has to be signed, overriding a capability for a p' AUTO_INCREMENT=1153 ;

--
-- Volcado de datos para la tabla `mdl_role_capabilities`
--

INSERT INTO `mdl_role_capabilities` (`id`, `contextid`, `roleid`, `capability`, `permission`, `timemodified`, `modifierid`) VALUES
(1, 1, 1, 'moodle/site:readallmessages', 1, 1422298884, 0),
(2, 1, 3, 'moodle/site:readallmessages', 1, 1422298884, 0),
(3, 1, 1, 'moodle/site:sendmessage', 1, 1422298884, 0),
(4, 1, 7, 'moodle/site:sendmessage', 1, 1422298884, 0),
(5, 1, 1, 'moodle/site:approvecourse', 1, 1422298885, 0),
(6, 1, 3, 'moodle/backup:backupcourse', 1, 1422298885, 0),
(7, 1, 1, 'moodle/backup:backupcourse', 1, 1422298885, 0),
(8, 1, 3, 'moodle/backup:backupsection', 1, 1422298885, 0),
(9, 1, 1, 'moodle/backup:backupsection', 1, 1422298885, 0),
(10, 1, 3, 'moodle/backup:backupactivity', 1, 1422298886, 0),
(11, 1, 1, 'moodle/backup:backupactivity', 1, 1422298886, 0),
(12, 1, 3, 'moodle/backup:backuptargethub', 1, 1422298886, 0),
(13, 1, 1, 'moodle/backup:backuptargethub', 1, 1422298886, 0),
(14, 1, 3, 'moodle/backup:backuptargetimport', 1, 1422298886, 0),
(15, 1, 1, 'moodle/backup:backuptargetimport', 1, 1422298886, 0),
(16, 1, 3, 'moodle/backup:downloadfile', 1, 1422298887, 0),
(17, 1, 1, 'moodle/backup:downloadfile', 1, 1422298887, 0),
(18, 1, 3, 'moodle/backup:configure', 1, 1422298887, 0),
(19, 1, 1, 'moodle/backup:configure', 1, 1422298887, 0),
(20, 1, 1, 'moodle/backup:userinfo', 1, 1422298887, 0),
(21, 1, 1, 'moodle/backup:anonymise', 1, 1422298887, 0),
(22, 1, 3, 'moodle/restore:restorecourse', 1, 1422298888, 0),
(23, 1, 1, 'moodle/restore:restorecourse', 1, 1422298888, 0),
(24, 1, 3, 'moodle/restore:restoresection', 1, 1422298888, 0),
(25, 1, 1, 'moodle/restore:restoresection', 1, 1422298888, 0),
(26, 1, 3, 'moodle/restore:restoreactivity', 1, 1422298888, 0),
(27, 1, 1, 'moodle/restore:restoreactivity', 1, 1422298888, 0),
(28, 1, 3, 'moodle/restore:restoretargethub', 1, 1422298889, 0),
(29, 1, 1, 'moodle/restore:restoretargethub', 1, 1422298889, 0),
(30, 1, 3, 'moodle/restore:restoretargetimport', 1, 1422298889, 0),
(31, 1, 1, 'moodle/restore:restoretargetimport', 1, 1422298889, 0),
(32, 1, 3, 'moodle/restore:uploadfile', 1, 1422298889, 0),
(33, 1, 1, 'moodle/restore:uploadfile', 1, 1422298889, 0),
(34, 1, 3, 'moodle/restore:configure', 1, 1422298890, 0),
(35, 1, 1, 'moodle/restore:configure', 1, 1422298890, 0),
(36, 1, 2, 'moodle/restore:rolldates', 1, 1422298890, 0),
(37, 1, 1, 'moodle/restore:rolldates', 1, 1422298890, 0),
(38, 1, 1, 'moodle/restore:userinfo', 1, 1422298890, 0),
(39, 1, 1, 'moodle/restore:createuser', 1, 1422298890, 0),
(40, 1, 3, 'moodle/site:manageblocks', 1, 1422298891, 0),
(41, 1, 1, 'moodle/site:manageblocks', 1, 1422298891, 0),
(42, 1, 4, 'moodle/site:accessallgroups', 1, 1422298891, 0),
(43, 1, 3, 'moodle/site:accessallgroups', 1, 1422298891, 0),
(44, 1, 1, 'moodle/site:accessallgroups', 1, 1422298891, 0),
(45, 1, 4, 'moodle/site:viewfullnames', 1, 1422298891, 0),
(46, 1, 3, 'moodle/site:viewfullnames', 1, 1422298892, 0),
(47, 1, 1, 'moodle/site:viewfullnames', 1, 1422298892, 0),
(48, 1, 4, 'moodle/site:viewuseridentity', 1, 1422298892, 0),
(49, 1, 3, 'moodle/site:viewuseridentity', 1, 1422298892, 0),
(50, 1, 1, 'moodle/site:viewuseridentity', 1, 1422298892, 0),
(51, 1, 4, 'moodle/site:viewreports', 1, 1422298893, 0),
(52, 1, 3, 'moodle/site:viewreports', 1, 1422298893, 0),
(53, 1, 1, 'moodle/site:viewreports', 1, 1422298893, 0),
(54, 1, 3, 'moodle/site:trustcontent', 1, 1422298893, 0),
(55, 1, 1, 'moodle/site:trustcontent', 1, 1422298893, 0),
(56, 1, 1, 'moodle/site:uploadusers', 1, 1422298893, 0),
(57, 1, 3, 'moodle/filter:manage', 1, 1422298894, 0),
(58, 1, 1, 'moodle/filter:manage', 1, 1422298894, 0),
(59, 1, 1, 'moodle/user:create', 1, 1422298894, 0),
(60, 1, 1, 'moodle/user:delete', 1, 1422298894, 0),
(61, 1, 1, 'moodle/user:update', 1, 1422298894, 0),
(62, 1, 6, 'moodle/user:viewdetails', 1, 1422298894, 0),
(63, 1, 5, 'moodle/user:viewdetails', 1, 1422298894, 0),
(64, 1, 4, 'moodle/user:viewdetails', 1, 1422298894, 0),
(65, 1, 3, 'moodle/user:viewdetails', 1, 1422298895, 0),
(66, 1, 1, 'moodle/user:viewdetails', 1, 1422298895, 0),
(67, 1, 1, 'moodle/user:viewalldetails', 1, 1422298895, 0),
(68, 1, 1, 'moodle/user:viewlastip', 1, 1422298895, 0),
(69, 1, 4, 'moodle/user:viewhiddendetails', 1, 1422298895, 0),
(70, 1, 3, 'moodle/user:viewhiddendetails', 1, 1422298895, 0),
(71, 1, 1, 'moodle/user:viewhiddendetails', 1, 1422298895, 0),
(72, 1, 1, 'moodle/user:loginas', 1, 1422298896, 0),
(73, 1, 1, 'moodle/user:managesyspages', 1, 1422298896, 0),
(74, 1, 7, 'moodle/user:manageownblocks', 1, 1422298897, 0),
(75, 1, 7, 'moodle/user:manageownfiles', 1, 1422298897, 0),
(76, 1, 1, 'moodle/my:configsyspages', 1, 1422298897, 0),
(77, 1, 3, 'moodle/role:assign', 1, 1422298897, 0),
(78, 1, 1, 'moodle/role:assign', 1, 1422298897, 0),
(79, 1, 4, 'moodle/role:review', 1, 1422298897, 0),
(80, 1, 3, 'moodle/role:review', 1, 1422298897, 0),
(81, 1, 1, 'moodle/role:review', 1, 1422298898, 0),
(82, 1, 1, 'moodle/role:override', 1, 1422298898, 0),
(83, 1, 3, 'moodle/role:safeoverride', 1, 1422298898, 0),
(84, 1, 1, 'moodle/role:manage', 1, 1422298898, 0),
(85, 1, 3, 'moodle/role:switchroles', 1, 1422298899, 0),
(86, 1, 1, 'moodle/role:switchroles', 1, 1422298899, 0),
(87, 1, 1, 'moodle/category:manage', 1, 1422298899, 0),
(88, 1, 2, 'moodle/category:viewhiddencategories', 1, 1422298899, 0),
(89, 1, 1, 'moodle/category:viewhiddencategories', 1, 1422298899, 0),
(90, 1, 1, 'moodle/cohort:manage', 1, 1422298900, 0),
(91, 1, 1, 'moodle/cohort:assign', 1, 1422298900, 0),
(92, 1, 3, 'moodle/cohort:view', 1, 1422298900, 0),
(93, 1, 1, 'moodle/cohort:view', 1, 1422298900, 0),
(94, 1, 2, 'moodle/course:create', 1, 1422298900, 0),
(95, 1, 1, 'moodle/course:create', 1, 1422298901, 0),
(96, 1, 7, 'moodle/course:request', 1, 1422298901, 0),
(97, 1, 1, 'moodle/course:delete', 1, 1422298901, 0),
(98, 1, 3, 'moodle/course:update', 1, 1422298901, 0),
(99, 1, 1, 'moodle/course:update', 1, 1422298901, 0),
(100, 1, 1, 'moodle/course:view', 1, 1422298902, 0),
(101, 1, 3, 'moodle/course:enrolreview', 1, 1422298902, 0),
(102, 1, 1, 'moodle/course:enrolreview', 1, 1422298902, 0),
(103, 1, 3, 'moodle/course:enrolconfig', 1, 1422298902, 0),
(104, 1, 1, 'moodle/course:enrolconfig', 1, 1422298902, 0),
(105, 1, 3, 'moodle/course:reviewotherusers', 1, 1422298902, 0),
(106, 1, 1, 'moodle/course:reviewotherusers', 1, 1422298903, 0),
(107, 1, 4, 'moodle/course:bulkmessaging', 1, 1422298903, 0),
(108, 1, 3, 'moodle/course:bulkmessaging', 1, 1422298903, 0),
(109, 1, 1, 'moodle/course:bulkmessaging', 1, 1422298903, 0),
(110, 1, 4, 'moodle/course:viewhiddenuserfields', 1, 1422298903, 0),
(111, 1, 3, 'moodle/course:viewhiddenuserfields', 1, 1422298903, 0),
(112, 1, 1, 'moodle/course:viewhiddenuserfields', 1, 1422298903, 0),
(113, 1, 2, 'moodle/course:viewhiddencourses', 1, 1422298904, 0),
(114, 1, 4, 'moodle/course:viewhiddencourses', 1, 1422298904, 0),
(115, 1, 3, 'moodle/course:viewhiddencourses', 1, 1422298904, 0),
(116, 1, 1, 'moodle/course:viewhiddencourses', 1, 1422298904, 0),
(117, 1, 3, 'moodle/course:visibility', 1, 1422298904, 0),
(118, 1, 1, 'moodle/course:visibility', 1, 1422298904, 0),
(119, 1, 3, 'moodle/course:managefiles', 1, 1422298905, 0),
(120, 1, 1, 'moodle/course:managefiles', 1, 1422298905, 0),
(121, 1, 3, 'moodle/course:manageactivities', 1, 1422298905, 0),
(122, 1, 1, 'moodle/course:manageactivities', 1, 1422298905, 0),
(123, 1, 3, 'moodle/course:activityvisibility', 1, 1422298905, 0),
(124, 1, 1, 'moodle/course:activityvisibility', 1, 1422298905, 0),
(125, 1, 4, 'moodle/course:viewhiddenactivities', 1, 1422298905, 0),
(126, 1, 3, 'moodle/course:viewhiddenactivities', 1, 1422298906, 0),
(127, 1, 1, 'moodle/course:viewhiddenactivities', 1, 1422298906, 0),
(128, 1, 5, 'moodle/course:viewparticipants', 1, 1422298906, 0),
(129, 1, 4, 'moodle/course:viewparticipants', 1, 1422298906, 0),
(130, 1, 3, 'moodle/course:viewparticipants', 1, 1422298907, 0),
(131, 1, 1, 'moodle/course:viewparticipants', 1, 1422298907, 0),
(132, 1, 3, 'moodle/course:changefullname', 1, 1422298907, 0),
(133, 1, 1, 'moodle/course:changefullname', 1, 1422298907, 0),
(134, 1, 3, 'moodle/course:changeshortname', 1, 1422298908, 0),
(135, 1, 1, 'moodle/course:changeshortname', 1, 1422298908, 0),
(136, 1, 3, 'moodle/course:changeidnumber', 1, 1422298908, 0),
(137, 1, 1, 'moodle/course:changeidnumber', 1, 1422298908, 0),
(138, 1, 3, 'moodle/course:changecategory', 1, 1422298908, 0),
(139, 1, 1, 'moodle/course:changecategory', 1, 1422298909, 0),
(140, 1, 3, 'moodle/course:changesummary', 1, 1422298909, 0),
(141, 1, 1, 'moodle/course:changesummary', 1, 1422298909, 0),
(142, 1, 1, 'moodle/site:viewparticipants', 1, 1422298909, 0),
(143, 1, 5, 'moodle/course:isincompletionreports', 1, 1422298910, 0),
(144, 1, 5, 'moodle/course:viewscales', 1, 1422298910, 0),
(145, 1, 4, 'moodle/course:viewscales', 1, 1422298910, 0),
(146, 1, 3, 'moodle/course:viewscales', 1, 1422298910, 0),
(147, 1, 1, 'moodle/course:viewscales', 1, 1422298910, 0),
(148, 1, 3, 'moodle/course:managescales', 1, 1422298911, 0),
(149, 1, 1, 'moodle/course:managescales', 1, 1422298911, 0),
(150, 1, 3, 'moodle/course:managegroups', 1, 1422298911, 0),
(151, 1, 1, 'moodle/course:managegroups', 1, 1422298911, 0),
(152, 1, 3, 'moodle/course:reset', 1, 1422298911, 0),
(153, 1, 1, 'moodle/course:reset', 1, 1422298912, 0),
(154, 1, 3, 'moodle/course:viewsuspendedusers', 1, 1422298912, 0),
(155, 1, 1, 'moodle/course:viewsuspendedusers', 1, 1422298912, 0),
(156, 1, 6, 'moodle/blog:view', 1, 1422298912, 0),
(157, 1, 7, 'moodle/blog:view', 1, 1422298912, 0),
(158, 1, 5, 'moodle/blog:view', 1, 1422298912, 0),
(159, 1, 4, 'moodle/blog:view', 1, 1422298912, 0),
(160, 1, 3, 'moodle/blog:view', 1, 1422298912, 0),
(161, 1, 1, 'moodle/blog:view', 1, 1422298913, 0),
(162, 1, 6, 'moodle/blog:search', 1, 1422298913, 0),
(163, 1, 7, 'moodle/blog:search', 1, 1422298913, 0),
(164, 1, 5, 'moodle/blog:search', 1, 1422298913, 0),
(165, 1, 4, 'moodle/blog:search', 1, 1422298913, 0),
(166, 1, 3, 'moodle/blog:search', 1, 1422298913, 0),
(167, 1, 1, 'moodle/blog:search', 1, 1422298913, 0),
(168, 1, 1, 'moodle/blog:viewdrafts', 1, 1422298913, 0),
(169, 1, 7, 'moodle/blog:create', 1, 1422298914, 0),
(170, 1, 1, 'moodle/blog:create', 1, 1422298914, 0),
(171, 1, 4, 'moodle/blog:manageentries', 1, 1422298914, 0),
(172, 1, 3, 'moodle/blog:manageentries', 1, 1422298914, 0),
(173, 1, 1, 'moodle/blog:manageentries', 1, 1422298914, 0),
(174, 1, 5, 'moodle/blog:manageexternal', 1, 1422298914, 0),
(175, 1, 7, 'moodle/blog:manageexternal', 1, 1422298915, 0),
(176, 1, 4, 'moodle/blog:manageexternal', 1, 1422298915, 0),
(177, 1, 3, 'moodle/blog:manageexternal', 1, 1422298915, 0),
(178, 1, 1, 'moodle/blog:manageexternal', 1, 1422298915, 0),
(179, 1, 7, 'moodle/calendar:manageownentries', 1, 1422298915, 0),
(180, 1, 1, 'moodle/calendar:manageownentries', 1, 1422298915, 0),
(181, 1, 4, 'moodle/calendar:managegroupentries', 1, 1422298916, 0),
(182, 1, 3, 'moodle/calendar:managegroupentries', 1, 1422298916, 0),
(183, 1, 1, 'moodle/calendar:managegroupentries', 1, 1422298916, 0),
(184, 1, 4, 'moodle/calendar:manageentries', 1, 1422298916, 0),
(185, 1, 3, 'moodle/calendar:manageentries', 1, 1422298916, 0),
(186, 1, 1, 'moodle/calendar:manageentries', 1, 1422298916, 0),
(187, 1, 1, 'moodle/user:editprofile', 1, 1422298916, 0),
(188, 1, 6, 'moodle/user:editownprofile', -1000, 1422298917, 0),
(189, 1, 7, 'moodle/user:editownprofile', 1, 1422298917, 0),
(190, 1, 1, 'moodle/user:editownprofile', 1, 1422298917, 0),
(191, 1, 6, 'moodle/user:changeownpassword', -1000, 1422298917, 0),
(192, 1, 7, 'moodle/user:changeownpassword', 1, 1422298917, 0),
(193, 1, 1, 'moodle/user:changeownpassword', 1, 1422298917, 0),
(194, 1, 5, 'moodle/user:readuserposts', 1, 1422298918, 0),
(195, 1, 4, 'moodle/user:readuserposts', 1, 1422298918, 0),
(196, 1, 3, 'moodle/user:readuserposts', 1, 1422298918, 0),
(197, 1, 1, 'moodle/user:readuserposts', 1, 1422298918, 0),
(198, 1, 5, 'moodle/user:readuserblogs', 1, 1422298918, 0),
(199, 1, 4, 'moodle/user:readuserblogs', 1, 1422298918, 0),
(200, 1, 3, 'moodle/user:readuserblogs', 1, 1422298919, 0),
(201, 1, 1, 'moodle/user:readuserblogs', 1, 1422298919, 0),
(202, 1, 1, 'moodle/user:editmessageprofile', 1, 1422298919, 0),
(203, 1, 6, 'moodle/user:editownmessageprofile', -1000, 1422298919, 0),
(204, 1, 7, 'moodle/user:editownmessageprofile', 1, 1422298919, 0),
(205, 1, 1, 'moodle/user:editownmessageprofile', 1, 1422298919, 0),
(206, 1, 3, 'moodle/question:managecategory', 1, 1422298920, 0),
(207, 1, 1, 'moodle/question:managecategory', 1, 1422298920, 0),
(208, 1, 3, 'moodle/question:add', 1, 1422298920, 0),
(209, 1, 1, 'moodle/question:add', 1, 1422298920, 0),
(210, 1, 3, 'moodle/question:editmine', 1, 1422298920, 0),
(211, 1, 1, 'moodle/question:editmine', 1, 1422298920, 0),
(212, 1, 3, 'moodle/question:editall', 1, 1422298920, 0),
(213, 1, 1, 'moodle/question:editall', 1, 1422298921, 0),
(214, 1, 3, 'moodle/question:viewmine', 1, 1422298921, 0),
(215, 1, 1, 'moodle/question:viewmine', 1, 1422298921, 0),
(216, 1, 3, 'moodle/question:viewall', 1, 1422298921, 0),
(217, 1, 1, 'moodle/question:viewall', 1, 1422298921, 0),
(218, 1, 3, 'moodle/question:usemine', 1, 1422298921, 0),
(219, 1, 1, 'moodle/question:usemine', 1, 1422298921, 0),
(220, 1, 3, 'moodle/question:useall', 1, 1422298922, 0),
(221, 1, 1, 'moodle/question:useall', 1, 1422298922, 0),
(222, 1, 3, 'moodle/question:movemine', 1, 1422298922, 0),
(223, 1, 1, 'moodle/question:movemine', 1, 1422298922, 0),
(224, 1, 3, 'moodle/question:moveall', 1, 1422298922, 0),
(225, 1, 1, 'moodle/question:moveall', 1, 1422298922, 0),
(226, 1, 1, 'moodle/question:config', 1, 1422298922, 0),
(227, 1, 5, 'moodle/question:flag', 1, 1422298923, 0),
(228, 1, 4, 'moodle/question:flag', 1, 1422298923, 0),
(229, 1, 3, 'moodle/question:flag', 1, 1422298923, 0),
(230, 1, 1, 'moodle/question:flag', 1, 1422298923, 0),
(231, 1, 4, 'moodle/site:doclinks', 1, 1422298923, 0),
(232, 1, 3, 'moodle/site:doclinks', 1, 1422298923, 0),
(233, 1, 1, 'moodle/site:doclinks', 1, 1422298923, 0),
(234, 1, 3, 'moodle/course:sectionvisibility', 1, 1422298923, 0),
(235, 1, 1, 'moodle/course:sectionvisibility', 1, 1422298924, 0),
(236, 1, 3, 'moodle/course:useremail', 1, 1422298924, 0),
(237, 1, 1, 'moodle/course:useremail', 1, 1422298924, 0),
(238, 1, 3, 'moodle/course:viewhiddensections', 1, 1422298924, 0),
(239, 1, 1, 'moodle/course:viewhiddensections', 1, 1422298924, 0),
(240, 1, 3, 'moodle/course:setcurrentsection', 1, 1422298924, 0),
(241, 1, 1, 'moodle/course:setcurrentsection', 1, 1422298924, 0),
(242, 1, 3, 'moodle/course:movesections', 1, 1422298924, 0),
(243, 1, 1, 'moodle/course:movesections', 1, 1422298925, 0),
(244, 1, 4, 'moodle/grade:viewall', 1, 1422298925, 0),
(245, 1, 3, 'moodle/grade:viewall', 1, 1422298925, 0),
(246, 1, 1, 'moodle/grade:viewall', 1, 1422298925, 0),
(247, 1, 5, 'moodle/grade:view', 1, 1422298925, 0),
(248, 1, 4, 'moodle/grade:viewhidden', 1, 1422298925, 0),
(249, 1, 3, 'moodle/grade:viewhidden', 1, 1422298925, 0),
(250, 1, 1, 'moodle/grade:viewhidden', 1, 1422298925, 0),
(251, 1, 3, 'moodle/grade:import', 1, 1422298926, 0),
(252, 1, 1, 'moodle/grade:import', 1, 1422298926, 0),
(253, 1, 4, 'moodle/grade:export', 1, 1422298926, 0),
(254, 1, 3, 'moodle/grade:export', 1, 1422298926, 0),
(255, 1, 1, 'moodle/grade:export', 1, 1422298926, 0),
(256, 1, 3, 'moodle/grade:manage', 1, 1422298926, 0),
(257, 1, 1, 'moodle/grade:manage', 1, 1422298926, 0),
(258, 1, 3, 'moodle/grade:edit', 1, 1422298927, 0),
(259, 1, 1, 'moodle/grade:edit', 1, 1422298927, 0),
(260, 1, 3, 'moodle/grade:managegradingforms', 1, 1422298927, 0),
(261, 1, 1, 'moodle/grade:managegradingforms', 1, 1422298927, 0),
(262, 1, 1, 'moodle/grade:sharegradingforms', 1, 1422298927, 0),
(263, 1, 1, 'moodle/grade:managesharedforms', 1, 1422298927, 0),
(264, 1, 3, 'moodle/grade:manageoutcomes', 1, 1422298927, 0),
(265, 1, 1, 'moodle/grade:manageoutcomes', 1, 1422298928, 0),
(266, 1, 3, 'moodle/grade:manageletters', 1, 1422298928, 0),
(267, 1, 1, 'moodle/grade:manageletters', 1, 1422298928, 0),
(268, 1, 3, 'moodle/grade:hide', 1, 1422298928, 0),
(269, 1, 1, 'moodle/grade:hide', 1, 1422298928, 0),
(270, 1, 3, 'moodle/grade:lock', 1, 1422298928, 0),
(271, 1, 1, 'moodle/grade:lock', 1, 1422298928, 0),
(272, 1, 3, 'moodle/grade:unlock', 1, 1422298929, 0),
(273, 1, 1, 'moodle/grade:unlock', 1, 1422298929, 0),
(274, 1, 7, 'moodle/my:manageblocks', 1, 1422298929, 0),
(275, 1, 4, 'moodle/notes:view', 1, 1422298929, 0),
(276, 1, 3, 'moodle/notes:view', 1, 1422298929, 0),
(277, 1, 1, 'moodle/notes:view', 1, 1422298929, 0),
(278, 1, 4, 'moodle/notes:manage', 1, 1422298929, 0),
(279, 1, 3, 'moodle/notes:manage', 1, 1422298929, 0),
(280, 1, 1, 'moodle/notes:manage', 1, 1422298929, 0),
(281, 1, 4, 'moodle/tag:manage', 1, 1422298930, 0),
(282, 1, 3, 'moodle/tag:manage', 1, 1422298930, 0),
(283, 1, 1, 'moodle/tag:manage', 1, 1422298930, 0),
(284, 1, 1, 'moodle/tag:create', 1, 1422298930, 0),
(285, 1, 7, 'moodle/tag:create', 1, 1422298930, 0),
(286, 1, 1, 'moodle/tag:edit', 1, 1422298930, 0),
(287, 1, 7, 'moodle/tag:edit', 1, 1422298930, 0),
(288, 1, 1, 'moodle/tag:flag', 1, 1422298930, 0),
(289, 1, 7, 'moodle/tag:flag', 1, 1422298931, 0),
(290, 1, 4, 'moodle/tag:editblocks', 1, 1422298931, 0),
(291, 1, 3, 'moodle/tag:editblocks', 1, 1422298931, 0),
(292, 1, 1, 'moodle/tag:editblocks', 1, 1422298931, 0),
(293, 1, 6, 'moodle/block:view', 1, 1422298931, 0),
(294, 1, 7, 'moodle/block:view', 1, 1422298931, 0),
(295, 1, 5, 'moodle/block:view', 1, 1422298932, 0),
(296, 1, 4, 'moodle/block:view', 1, 1422298932, 0),
(297, 1, 3, 'moodle/block:view', 1, 1422298932, 0),
(298, 1, 3, 'moodle/block:edit', 1, 1422298932, 0),
(299, 1, 1, 'moodle/block:edit', 1, 1422298932, 0),
(300, 1, 7, 'moodle/portfolio:export', 1, 1422298932, 0),
(301, 1, 5, 'moodle/portfolio:export', 1, 1422298932, 0),
(302, 1, 4, 'moodle/portfolio:export', 1, 1422298933, 0),
(303, 1, 3, 'moodle/portfolio:export', 1, 1422298933, 0),
(304, 1, 8, 'moodle/comment:view', 1, 1422298933, 0),
(305, 1, 6, 'moodle/comment:view', 1, 1422298933, 0),
(306, 1, 7, 'moodle/comment:view', 1, 1422298933, 0),
(307, 1, 5, 'moodle/comment:view', 1, 1422298933, 0),
(308, 1, 4, 'moodle/comment:view', 1, 1422298933, 0),
(309, 1, 3, 'moodle/comment:view', 1, 1422298933, 0),
(310, 1, 1, 'moodle/comment:view', 1, 1422298933, 0),
(311, 1, 7, 'moodle/comment:post', 1, 1422298934, 0),
(312, 1, 5, 'moodle/comment:post', 1, 1422298934, 0),
(313, 1, 4, 'moodle/comment:post', 1, 1422298934, 0),
(314, 1, 3, 'moodle/comment:post', 1, 1422298934, 0),
(315, 1, 1, 'moodle/comment:post', 1, 1422298934, 0),
(316, 1, 3, 'moodle/comment:delete', 1, 1422298934, 0),
(317, 1, 1, 'moodle/comment:delete', 1, 1422298934, 0),
(318, 1, 1, 'moodle/webservice:createtoken', 1, 1422298935, 0),
(319, 1, 7, 'moodle/webservice:createmobiletoken', 1, 1422298935, 0),
(320, 1, 7, 'moodle/rating:view', 1, 1422298935, 0),
(321, 1, 5, 'moodle/rating:view', 1, 1422298935, 0),
(322, 1, 4, 'moodle/rating:view', 1, 1422298935, 0),
(323, 1, 3, 'moodle/rating:view', 1, 1422298935, 0),
(324, 1, 1, 'moodle/rating:view', 1, 1422298936, 0),
(325, 1, 7, 'moodle/rating:viewany', 1, 1422298936, 0),
(326, 1, 5, 'moodle/rating:viewany', 1, 1422298936, 0),
(327, 1, 4, 'moodle/rating:viewany', 1, 1422298936, 0),
(328, 1, 3, 'moodle/rating:viewany', 1, 1422298936, 0),
(329, 1, 1, 'moodle/rating:viewany', 1, 1422298936, 0),
(330, 1, 7, 'moodle/rating:viewall', 1, 1422298936, 0),
(331, 1, 5, 'moodle/rating:viewall', 1, 1422298936, 0),
(332, 1, 4, 'moodle/rating:viewall', 1, 1422298937, 0),
(333, 1, 3, 'moodle/rating:viewall', 1, 1422298937, 0),
(334, 1, 1, 'moodle/rating:viewall', 1, 1422298937, 0),
(335, 1, 7, 'moodle/rating:rate', 1, 1422298937, 0),
(336, 1, 5, 'moodle/rating:rate', 1, 1422298937, 0),
(337, 1, 4, 'moodle/rating:rate', 1, 1422298937, 0),
(338, 1, 3, 'moodle/rating:rate', 1, 1422298938, 0),
(339, 1, 1, 'moodle/rating:rate', 1, 1422298938, 0),
(340, 1, 1, 'moodle/course:publish', 1, 1422298938, 0),
(341, 1, 4, 'moodle/course:markcomplete', 1, 1422298938, 0),
(342, 1, 3, 'moodle/course:markcomplete', 1, 1422298938, 0),
(343, 1, 1, 'moodle/course:markcomplete', 1, 1422298938, 0),
(344, 1, 1, 'moodle/community:add', 1, 1422298938, 0),
(345, 1, 4, 'moodle/community:add', 1, 1422298939, 0),
(346, 1, 3, 'moodle/community:add', 1, 1422298939, 0),
(347, 1, 1, 'moodle/community:download', 1, 1422298939, 0),
(348, 1, 3, 'moodle/community:download', 1, 1422298939, 0),
(349, 1, 1, 'moodle/badges:manageglobalsettings', 1, 1422298940, 0),
(350, 1, 7, 'moodle/badges:viewbadges', 1, 1422298940, 0),
(351, 1, 7, 'moodle/badges:manageownbadges', 1, 1422298940, 0),
(352, 1, 7, 'moodle/badges:viewotherbadges', 1, 1422298940, 0),
(353, 1, 7, 'moodle/badges:earnbadge', 1, 1422298940, 0),
(354, 1, 1, 'moodle/badges:createbadge', 1, 1422298940, 0),
(355, 1, 3, 'moodle/badges:createbadge', 1, 1422298941, 0),
(356, 1, 1, 'moodle/badges:deletebadge', 1, 1422298941, 0),
(357, 1, 3, 'moodle/badges:deletebadge', 1, 1422298941, 0),
(358, 1, 1, 'moodle/badges:configuredetails', 1, 1422298941, 0),
(359, 1, 3, 'moodle/badges:configuredetails', 1, 1422298941, 0),
(360, 1, 1, 'moodle/badges:configurecriteria', 1, 1422298941, 0),
(361, 1, 3, 'moodle/badges:configurecriteria', 1, 1422298941, 0),
(362, 1, 1, 'moodle/badges:configuremessages', 1, 1422298942, 0),
(363, 1, 3, 'moodle/badges:configuremessages', 1, 1422298942, 0),
(364, 1, 1, 'moodle/badges:awardbadge', 1, 1422298942, 0),
(365, 1, 4, 'moodle/badges:awardbadge', 1, 1422298942, 0),
(366, 1, 3, 'moodle/badges:awardbadge', 1, 1422298942, 0),
(367, 1, 1, 'moodle/badges:viewawarded', 1, 1422298942, 0),
(368, 1, 4, 'moodle/badges:viewawarded', 1, 1422298942, 0),
(369, 1, 3, 'moodle/badges:viewawarded', 1, 1422298942, 0),
(370, 1, 6, 'mod/assign:view', 1, 1422299083, 0),
(371, 1, 5, 'mod/assign:view', 1, 1422299083, 0),
(372, 1, 4, 'mod/assign:view', 1, 1422299083, 0),
(373, 1, 3, 'mod/assign:view', 1, 1422299083, 0),
(374, 1, 1, 'mod/assign:view', 1, 1422299084, 0),
(375, 1, 5, 'mod/assign:submit', 1, 1422299084, 0),
(376, 1, 4, 'mod/assign:grade', 1, 1422299084, 0),
(377, 1, 3, 'mod/assign:grade', 1, 1422299084, 0),
(378, 1, 1, 'mod/assign:grade', 1, 1422299084, 0),
(379, 1, 4, 'mod/assign:exportownsubmission', 1, 1422299084, 0),
(380, 1, 3, 'mod/assign:exportownsubmission', 1, 1422299084, 0),
(381, 1, 1, 'mod/assign:exportownsubmission', 1, 1422299084, 0),
(382, 1, 5, 'mod/assign:exportownsubmission', 1, 1422299084, 0),
(383, 1, 3, 'mod/assign:addinstance', 1, 1422299085, 0),
(384, 1, 1, 'mod/assign:addinstance', 1, 1422299085, 0),
(385, 1, 4, 'mod/assign:grantextension', 1, 1422299085, 0),
(386, 1, 3, 'mod/assign:grantextension', 1, 1422299085, 0),
(387, 1, 1, 'mod/assign:grantextension', 1, 1422299085, 0),
(388, 1, 3, 'mod/assign:revealidentities', 1, 1422299085, 0),
(389, 1, 1, 'mod/assign:revealidentities', 1, 1422299085, 0),
(390, 1, 3, 'mod/assign:reviewgrades', 1, 1422299086, 0),
(391, 1, 1, 'mod/assign:reviewgrades', 1, 1422299086, 0),
(392, 1, 3, 'mod/assign:releasegrades', 1, 1422299086, 0),
(393, 1, 1, 'mod/assign:releasegrades', 1, 1422299086, 0),
(394, 1, 3, 'mod/assign:managegrades', 1, 1422299086, 0),
(395, 1, 1, 'mod/assign:managegrades', 1, 1422299086, 0),
(396, 1, 3, 'mod/assign:manageallocations', 1, 1422299086, 0),
(397, 1, 1, 'mod/assign:manageallocations', 1, 1422299086, 0),
(398, 1, 3, 'mod/assign:viewgrades', 1, 1422299087, 0),
(399, 1, 1, 'mod/assign:viewgrades', 1, 1422299087, 0),
(400, 1, 4, 'mod/assign:viewgrades', 1, 1422299087, 0),
(401, 1, 6, 'mod/assignment:view', 1, 1422299092, 0),
(402, 1, 5, 'mod/assignment:view', 1, 1422299092, 0),
(403, 1, 4, 'mod/assignment:view', 1, 1422299092, 0),
(404, 1, 3, 'mod/assignment:view', 1, 1422299092, 0),
(405, 1, 1, 'mod/assignment:view', 1, 1422299093, 0),
(406, 1, 3, 'mod/assignment:addinstance', 1, 1422299093, 0),
(407, 1, 1, 'mod/assignment:addinstance', 1, 1422299093, 0),
(408, 1, 5, 'mod/assignment:submit', 1, 1422299093, 0),
(409, 1, 4, 'mod/assignment:grade', 1, 1422299094, 0),
(410, 1, 3, 'mod/assignment:grade', 1, 1422299094, 0),
(411, 1, 1, 'mod/assignment:grade', 1, 1422299094, 0),
(412, 1, 4, 'mod/assignment:exportownsubmission', 1, 1422299094, 0),
(413, 1, 3, 'mod/assignment:exportownsubmission', 1, 1422299094, 0),
(414, 1, 1, 'mod/assignment:exportownsubmission', 1, 1422299094, 0),
(415, 1, 5, 'mod/assignment:exportownsubmission', 1, 1422299094, 0),
(416, 1, 3, 'mod/book:addinstance', 1, 1422299096, 0),
(417, 1, 1, 'mod/book:addinstance', 1, 1422299096, 0),
(418, 1, 6, 'mod/book:read', 1, 1422299096, 0),
(419, 1, 8, 'mod/book:read', 1, 1422299097, 0),
(420, 1, 5, 'mod/book:read', 1, 1422299097, 0),
(421, 1, 4, 'mod/book:read', 1, 1422299097, 0),
(422, 1, 3, 'mod/book:read', 1, 1422299097, 0),
(423, 1, 1, 'mod/book:read', 1, 1422299097, 0),
(424, 1, 4, 'mod/book:viewhiddenchapters', 1, 1422299097, 0),
(425, 1, 3, 'mod/book:viewhiddenchapters', 1, 1422299098, 0),
(426, 1, 1, 'mod/book:viewhiddenchapters', 1, 1422299098, 0),
(427, 1, 3, 'mod/book:edit', 1, 1422299098, 0),
(428, 1, 1, 'mod/book:edit', 1, 1422299098, 0),
(429, 1, 3, 'mod/chat:addinstance', 1, 1422299101, 0),
(430, 1, 1, 'mod/chat:addinstance', 1, 1422299101, 0),
(431, 1, 5, 'mod/chat:chat', 1, 1422299102, 0),
(432, 1, 4, 'mod/chat:chat', 1, 1422299102, 0),
(433, 1, 3, 'mod/chat:chat', 1, 1422299102, 0),
(434, 1, 1, 'mod/chat:chat', 1, 1422299102, 0),
(435, 1, 5, 'mod/chat:readlog', 1, 1422299102, 0),
(436, 1, 4, 'mod/chat:readlog', 1, 1422299103, 0),
(437, 1, 3, 'mod/chat:readlog', 1, 1422299103, 0),
(438, 1, 1, 'mod/chat:readlog', 1, 1422299103, 0),
(439, 1, 4, 'mod/chat:deletelog', 1, 1422299103, 0),
(440, 1, 3, 'mod/chat:deletelog', 1, 1422299104, 0),
(441, 1, 1, 'mod/chat:deletelog', 1, 1422299104, 0),
(442, 1, 4, 'mod/chat:exportparticipatedsession', 1, 1422299105, 0),
(443, 1, 3, 'mod/chat:exportparticipatedsession', 1, 1422299105, 0),
(444, 1, 1, 'mod/chat:exportparticipatedsession', 1, 1422299105, 0),
(445, 1, 4, 'mod/chat:exportsession', 1, 1422299106, 0),
(446, 1, 3, 'mod/chat:exportsession', 1, 1422299106, 0),
(447, 1, 1, 'mod/chat:exportsession', 1, 1422299106, 0),
(448, 1, 3, 'mod/choice:addinstance', 1, 1422299109, 0),
(449, 1, 1, 'mod/choice:addinstance', 1, 1422299110, 0),
(450, 1, 5, 'mod/choice:choose', 1, 1422299110, 0),
(451, 1, 4, 'mod/choice:choose', 1, 1422299110, 0),
(452, 1, 3, 'mod/choice:choose', 1, 1422299110, 0),
(453, 1, 4, 'mod/choice:readresponses', 1, 1422299110, 0),
(454, 1, 3, 'mod/choice:readresponses', 1, 1422299111, 0),
(455, 1, 1, 'mod/choice:readresponses', 1, 1422299111, 0),
(456, 1, 4, 'mod/choice:deleteresponses', 1, 1422299111, 0),
(457, 1, 3, 'mod/choice:deleteresponses', 1, 1422299111, 0),
(458, 1, 1, 'mod/choice:deleteresponses', 1, 1422299111, 0),
(459, 1, 4, 'mod/choice:downloadresponses', 1, 1422299111, 0),
(460, 1, 3, 'mod/choice:downloadresponses', 1, 1422299111, 0),
(461, 1, 1, 'mod/choice:downloadresponses', 1, 1422299111, 0),
(462, 1, 3, 'mod/data:addinstance', 1, 1422299113, 0),
(463, 1, 1, 'mod/data:addinstance', 1, 1422299113, 0),
(464, 1, 8, 'mod/data:viewentry', 1, 1422299113, 0),
(465, 1, 6, 'mod/data:viewentry', 1, 1422299113, 0),
(466, 1, 5, 'mod/data:viewentry', 1, 1422299114, 0),
(467, 1, 4, 'mod/data:viewentry', 1, 1422299114, 0),
(468, 1, 3, 'mod/data:viewentry', 1, 1422299114, 0),
(469, 1, 1, 'mod/data:viewentry', 1, 1422299114, 0),
(470, 1, 5, 'mod/data:writeentry', 1, 1422299114, 0),
(471, 1, 4, 'mod/data:writeentry', 1, 1422299114, 0),
(472, 1, 3, 'mod/data:writeentry', 1, 1422299114, 0),
(473, 1, 1, 'mod/data:writeentry', 1, 1422299114, 0),
(474, 1, 5, 'mod/data:comment', 1, 1422299114, 0),
(475, 1, 4, 'mod/data:comment', 1, 1422299114, 0),
(476, 1, 3, 'mod/data:comment', 1, 1422299114, 0),
(477, 1, 1, 'mod/data:comment', 1, 1422299114, 0),
(478, 1, 4, 'mod/data:rate', 1, 1422299115, 0),
(479, 1, 3, 'mod/data:rate', 1, 1422299115, 0),
(480, 1, 1, 'mod/data:rate', 1, 1422299115, 0),
(481, 1, 4, 'mod/data:viewrating', 1, 1422299115, 0),
(482, 1, 3, 'mod/data:viewrating', 1, 1422299115, 0),
(483, 1, 1, 'mod/data:viewrating', 1, 1422299115, 0),
(484, 1, 4, 'mod/data:viewanyrating', 1, 1422299116, 0),
(485, 1, 3, 'mod/data:viewanyrating', 1, 1422299116, 0),
(486, 1, 1, 'mod/data:viewanyrating', 1, 1422299116, 0),
(487, 1, 4, 'mod/data:viewallratings', 1, 1422299116, 0),
(488, 1, 3, 'mod/data:viewallratings', 1, 1422299116, 0),
(489, 1, 1, 'mod/data:viewallratings', 1, 1422299116, 0),
(490, 1, 4, 'mod/data:approve', 1, 1422299116, 0),
(491, 1, 3, 'mod/data:approve', 1, 1422299116, 0),
(492, 1, 1, 'mod/data:approve', 1, 1422299117, 0),
(493, 1, 4, 'mod/data:manageentries', 1, 1422299117, 0),
(494, 1, 3, 'mod/data:manageentries', 1, 1422299117, 0),
(495, 1, 1, 'mod/data:manageentries', 1, 1422299117, 0),
(496, 1, 4, 'mod/data:managecomments', 1, 1422299117, 0),
(497, 1, 3, 'mod/data:managecomments', 1, 1422299117, 0),
(498, 1, 1, 'mod/data:managecomments', 1, 1422299117, 0),
(499, 1, 3, 'mod/data:managetemplates', 1, 1422299117, 0),
(500, 1, 1, 'mod/data:managetemplates', 1, 1422299117, 0),
(501, 1, 4, 'mod/data:viewalluserpresets', 1, 1422299118, 0),
(502, 1, 3, 'mod/data:viewalluserpresets', 1, 1422299118, 0),
(503, 1, 1, 'mod/data:viewalluserpresets', 1, 1422299118, 0),
(504, 1, 1, 'mod/data:manageuserpresets', 1, 1422299118, 0),
(505, 1, 1, 'mod/data:exportentry', 1, 1422299118, 0),
(506, 1, 4, 'mod/data:exportentry', 1, 1422299118, 0),
(507, 1, 3, 'mod/data:exportentry', 1, 1422299118, 0),
(508, 1, 1, 'mod/data:exportownentry', 1, 1422299118, 0),
(509, 1, 4, 'mod/data:exportownentry', 1, 1422299119, 0),
(510, 1, 3, 'mod/data:exportownentry', 1, 1422299119, 0),
(511, 1, 5, 'mod/data:exportownentry', 1, 1422299119, 0),
(512, 1, 1, 'mod/data:exportallentries', 1, 1422299119, 0),
(513, 1, 4, 'mod/data:exportallentries', 1, 1422299119, 0),
(514, 1, 3, 'mod/data:exportallentries', 1, 1422299119, 0),
(515, 1, 1, 'mod/data:exportuserinfo', 1, 1422299119, 0),
(516, 1, 4, 'mod/data:exportuserinfo', 1, 1422299119, 0),
(517, 1, 3, 'mod/data:exportuserinfo', 1, 1422299119, 0),
(518, 1, 3, 'mod/feedback:addinstance', 1, 1422299122, 0),
(519, 1, 1, 'mod/feedback:addinstance', 1, 1422299122, 0),
(520, 1, 6, 'mod/feedback:view', 1, 1422299122, 0),
(521, 1, 5, 'mod/feedback:view', 1, 1422299122, 0),
(522, 1, 4, 'mod/feedback:view', 1, 1422299122, 0),
(523, 1, 3, 'mod/feedback:view', 1, 1422299122, 0),
(524, 1, 1, 'mod/feedback:view', 1, 1422299123, 0),
(525, 1, 5, 'mod/feedback:complete', 1, 1422299123, 0),
(526, 1, 5, 'mod/feedback:viewanalysepage', 1, 1422299123, 0),
(527, 1, 3, 'mod/feedback:viewanalysepage', 1, 1422299123, 0),
(528, 1, 1, 'mod/feedback:viewanalysepage', 1, 1422299123, 0),
(529, 1, 3, 'mod/feedback:deletesubmissions', 1, 1422299123, 0),
(530, 1, 1, 'mod/feedback:deletesubmissions', 1, 1422299123, 0),
(531, 1, 1, 'mod/feedback:mapcourse', 1, 1422299123, 0),
(532, 1, 3, 'mod/feedback:edititems', 1, 1422299123, 0),
(533, 1, 1, 'mod/feedback:edititems', 1, 1422299124, 0),
(534, 1, 3, 'mod/feedback:createprivatetemplate', 1, 1422299124, 0),
(535, 1, 1, 'mod/feedback:createprivatetemplate', 1, 1422299124, 0),
(536, 1, 3, 'mod/feedback:createpublictemplate', 1, 1422299124, 0),
(537, 1, 1, 'mod/feedback:createpublictemplate', 1, 1422299124, 0),
(538, 1, 3, 'mod/feedback:deletetemplate', 1, 1422299124, 0),
(539, 1, 1, 'mod/feedback:deletetemplate', 1, 1422299124, 0),
(540, 1, 4, 'mod/feedback:viewreports', 1, 1422299124, 0),
(541, 1, 3, 'mod/feedback:viewreports', 1, 1422299124, 0),
(542, 1, 1, 'mod/feedback:viewreports', 1, 1422299125, 0),
(543, 1, 4, 'mod/feedback:receivemail', 1, 1422299125, 0),
(544, 1, 3, 'mod/feedback:receivemail', 1, 1422299125, 0),
(545, 1, 3, 'mod/folder:addinstance', 1, 1422299127, 0),
(546, 1, 1, 'mod/folder:addinstance', 1, 1422299127, 0),
(547, 1, 6, 'mod/folder:view', 1, 1422299127, 0),
(548, 1, 7, 'mod/folder:view', 1, 1422299127, 0),
(549, 1, 3, 'mod/folder:managefiles', 1, 1422299128, 0),
(550, 1, 3, 'mod/forum:addinstance', 1, 1422299130, 0),
(551, 1, 1, 'mod/forum:addinstance', 1, 1422299130, 0),
(552, 1, 8, 'mod/forum:viewdiscussion', 1, 1422299130, 0),
(553, 1, 6, 'mod/forum:viewdiscussion', 1, 1422299130, 0),
(554, 1, 5, 'mod/forum:viewdiscussion', 1, 1422299130, 0),
(555, 1, 4, 'mod/forum:viewdiscussion', 1, 1422299130, 0),
(556, 1, 3, 'mod/forum:viewdiscussion', 1, 1422299130, 0),
(557, 1, 1, 'mod/forum:viewdiscussion', 1, 1422299130, 0),
(558, 1, 4, 'mod/forum:viewhiddentimedposts', 1, 1422299130, 0),
(559, 1, 3, 'mod/forum:viewhiddentimedposts', 1, 1422299131, 0),
(560, 1, 1, 'mod/forum:viewhiddentimedposts', 1, 1422299131, 0),
(561, 1, 5, 'mod/forum:startdiscussion', 1, 1422299131, 0),
(562, 1, 4, 'mod/forum:startdiscussion', 1, 1422299131, 0),
(563, 1, 3, 'mod/forum:startdiscussion', 1, 1422299131, 0),
(564, 1, 1, 'mod/forum:startdiscussion', 1, 1422299131, 0),
(565, 1, 5, 'mod/forum:replypost', 1, 1422299131, 0),
(566, 1, 4, 'mod/forum:replypost', 1, 1422299132, 0),
(567, 1, 3, 'mod/forum:replypost', 1, 1422299132, 0),
(568, 1, 1, 'mod/forum:replypost', 1, 1422299132, 0),
(569, 1, 4, 'mod/forum:addnews', 1, 1422299132, 0),
(570, 1, 3, 'mod/forum:addnews', 1, 1422299132, 0),
(571, 1, 1, 'mod/forum:addnews', 1, 1422299132, 0),
(572, 1, 4, 'mod/forum:replynews', 1, 1422299132, 0),
(573, 1, 3, 'mod/forum:replynews', 1, 1422299132, 0),
(574, 1, 1, 'mod/forum:replynews', 1, 1422299132, 0),
(575, 1, 5, 'mod/forum:viewrating', 1, 1422299132, 0),
(576, 1, 4, 'mod/forum:viewrating', 1, 1422299133, 0),
(577, 1, 3, 'mod/forum:viewrating', 1, 1422299133, 0),
(578, 1, 1, 'mod/forum:viewrating', 1, 1422299133, 0),
(579, 1, 4, 'mod/forum:viewanyrating', 1, 1422299133, 0),
(580, 1, 3, 'mod/forum:viewanyrating', 1, 1422299133, 0),
(581, 1, 1, 'mod/forum:viewanyrating', 1, 1422299133, 0),
(582, 1, 4, 'mod/forum:viewallratings', 1, 1422299133, 0),
(583, 1, 3, 'mod/forum:viewallratings', 1, 1422299133, 0),
(584, 1, 1, 'mod/forum:viewallratings', 1, 1422299133, 0),
(585, 1, 4, 'mod/forum:rate', 1, 1422299133, 0),
(586, 1, 3, 'mod/forum:rate', 1, 1422299133, 0),
(587, 1, 1, 'mod/forum:rate', 1, 1422299134, 0),
(588, 1, 5, 'mod/forum:createattachment', 1, 1422299134, 0),
(589, 1, 4, 'mod/forum:createattachment', 1, 1422299134, 0),
(590, 1, 3, 'mod/forum:createattachment', 1, 1422299134, 0),
(591, 1, 1, 'mod/forum:createattachment', 1, 1422299134, 0),
(592, 1, 5, 'mod/forum:deleteownpost', 1, 1422299134, 0),
(593, 1, 4, 'mod/forum:deleteownpost', 1, 1422299134, 0),
(594, 1, 3, 'mod/forum:deleteownpost', 1, 1422299134, 0),
(595, 1, 1, 'mod/forum:deleteownpost', 1, 1422299134, 0),
(596, 1, 4, 'mod/forum:deleteanypost', 1, 1422299135, 0),
(597, 1, 3, 'mod/forum:deleteanypost', 1, 1422299135, 0),
(598, 1, 1, 'mod/forum:deleteanypost', 1, 1422299135, 0),
(599, 1, 4, 'mod/forum:splitdiscussions', 1, 1422299135, 0),
(600, 1, 3, 'mod/forum:splitdiscussions', 1, 1422299135, 0),
(601, 1, 1, 'mod/forum:splitdiscussions', 1, 1422299135, 0),
(602, 1, 4, 'mod/forum:movediscussions', 1, 1422299135, 0),
(603, 1, 3, 'mod/forum:movediscussions', 1, 1422299135, 0),
(604, 1, 1, 'mod/forum:movediscussions', 1, 1422299135, 0),
(605, 1, 4, 'mod/forum:editanypost', 1, 1422299135, 0),
(606, 1, 3, 'mod/forum:editanypost', 1, 1422299136, 0),
(607, 1, 1, 'mod/forum:editanypost', 1, 1422299136, 0),
(608, 1, 4, 'mod/forum:viewqandawithoutposting', 1, 1422299136, 0),
(609, 1, 3, 'mod/forum:viewqandawithoutposting', 1, 1422299136, 0),
(610, 1, 1, 'mod/forum:viewqandawithoutposting', 1, 1422299136, 0),
(611, 1, 4, 'mod/forum:viewsubscribers', 1, 1422299136, 0),
(612, 1, 3, 'mod/forum:viewsubscribers', 1, 1422299136, 0),
(613, 1, 1, 'mod/forum:viewsubscribers', 1, 1422299136, 0),
(614, 1, 4, 'mod/forum:managesubscriptions', 1, 1422299136, 0),
(615, 1, 3, 'mod/forum:managesubscriptions', 1, 1422299136, 0),
(616, 1, 1, 'mod/forum:managesubscriptions', 1, 1422299137, 0),
(617, 1, 4, 'mod/forum:postwithoutthrottling', 1, 1422299137, 0),
(618, 1, 3, 'mod/forum:postwithoutthrottling', 1, 1422299137, 0),
(619, 1, 1, 'mod/forum:postwithoutthrottling', 1, 1422299137, 0),
(620, 1, 4, 'mod/forum:exportdiscussion', 1, 1422299138, 0),
(621, 1, 3, 'mod/forum:exportdiscussion', 1, 1422299138, 0),
(622, 1, 1, 'mod/forum:exportdiscussion', 1, 1422299138, 0),
(623, 1, 4, 'mod/forum:exportpost', 1, 1422299138, 0),
(624, 1, 3, 'mod/forum:exportpost', 1, 1422299138, 0),
(625, 1, 1, 'mod/forum:exportpost', 1, 1422299138, 0),
(626, 1, 4, 'mod/forum:exportownpost', 1, 1422299138, 0),
(627, 1, 3, 'mod/forum:exportownpost', 1, 1422299138, 0),
(628, 1, 1, 'mod/forum:exportownpost', 1, 1422299139, 0),
(629, 1, 5, 'mod/forum:exportownpost', 1, 1422299139, 0),
(630, 1, 4, 'mod/forum:addquestion', 1, 1422299139, 0),
(631, 1, 3, 'mod/forum:addquestion', 1, 1422299139, 0),
(632, 1, 1, 'mod/forum:addquestion', 1, 1422299139, 0),
(633, 1, 5, 'mod/forum:allowforcesubscribe', 1, 1422299139, 0),
(634, 1, 4, 'mod/forum:allowforcesubscribe', 1, 1422299139, 0),
(635, 1, 3, 'mod/forum:allowforcesubscribe', 1, 1422299139, 0),
(636, 1, 8, 'mod/forum:allowforcesubscribe', 1, 1422299139, 0),
(637, 1, 3, 'mod/glossary:addinstance', 1, 1422299142, 0),
(638, 1, 1, 'mod/glossary:addinstance', 1, 1422299142, 0),
(639, 1, 8, 'mod/glossary:view', 1, 1422299143, 0),
(640, 1, 6, 'mod/glossary:view', 1, 1422299143, 0),
(641, 1, 5, 'mod/glossary:view', 1, 1422299143, 0),
(642, 1, 4, 'mod/glossary:view', 1, 1422299143, 0),
(643, 1, 3, 'mod/glossary:view', 1, 1422299143, 0),
(644, 1, 1, 'mod/glossary:view', 1, 1422299143, 0),
(645, 1, 5, 'mod/glossary:write', 1, 1422299143, 0),
(646, 1, 4, 'mod/glossary:write', 1, 1422299143, 0),
(647, 1, 3, 'mod/glossary:write', 1, 1422299143, 0),
(648, 1, 1, 'mod/glossary:write', 1, 1422299144, 0),
(649, 1, 4, 'mod/glossary:manageentries', 1, 1422299144, 0),
(650, 1, 3, 'mod/glossary:manageentries', 1, 1422299144, 0),
(651, 1, 1, 'mod/glossary:manageentries', 1, 1422299144, 0),
(652, 1, 4, 'mod/glossary:managecategories', 1, 1422299144, 0),
(653, 1, 3, 'mod/glossary:managecategories', 1, 1422299144, 0),
(654, 1, 1, 'mod/glossary:managecategories', 1, 1422299144, 0),
(655, 1, 5, 'mod/glossary:comment', 1, 1422299145, 0),
(656, 1, 4, 'mod/glossary:comment', 1, 1422299145, 0),
(657, 1, 3, 'mod/glossary:comment', 1, 1422299145, 0),
(658, 1, 1, 'mod/glossary:comment', 1, 1422299145, 0),
(659, 1, 4, 'mod/glossary:managecomments', 1, 1422299145, 0),
(660, 1, 3, 'mod/glossary:managecomments', 1, 1422299145, 0),
(661, 1, 1, 'mod/glossary:managecomments', 1, 1422299145, 0),
(662, 1, 4, 'mod/glossary:import', 1, 1422299146, 0),
(663, 1, 3, 'mod/glossary:import', 1, 1422299146, 0),
(664, 1, 1, 'mod/glossary:import', 1, 1422299146, 0),
(665, 1, 4, 'mod/glossary:export', 1, 1422299146, 0),
(666, 1, 3, 'mod/glossary:export', 1, 1422299146, 0),
(667, 1, 1, 'mod/glossary:export', 1, 1422299146, 0),
(668, 1, 4, 'mod/glossary:approve', 1, 1422299146, 0),
(669, 1, 3, 'mod/glossary:approve', 1, 1422299146, 0),
(670, 1, 1, 'mod/glossary:approve', 1, 1422299146, 0),
(671, 1, 4, 'mod/glossary:rate', 1, 1422299146, 0),
(672, 1, 3, 'mod/glossary:rate', 1, 1422299146, 0),
(673, 1, 1, 'mod/glossary:rate', 1, 1422299147, 0),
(674, 1, 4, 'mod/glossary:viewrating', 1, 1422299147, 0),
(675, 1, 3, 'mod/glossary:viewrating', 1, 1422299147, 0),
(676, 1, 1, 'mod/glossary:viewrating', 1, 1422299147, 0),
(677, 1, 4, 'mod/glossary:viewanyrating', 1, 1422299147, 0),
(678, 1, 3, 'mod/glossary:viewanyrating', 1, 1422299147, 0),
(679, 1, 1, 'mod/glossary:viewanyrating', 1, 1422299147, 0),
(680, 1, 4, 'mod/glossary:viewallratings', 1, 1422299147, 0),
(681, 1, 3, 'mod/glossary:viewallratings', 1, 1422299147, 0),
(682, 1, 1, 'mod/glossary:viewallratings', 1, 1422299147, 0),
(683, 1, 4, 'mod/glossary:exportentry', 1, 1422299148, 0),
(684, 1, 3, 'mod/glossary:exportentry', 1, 1422299148, 0),
(685, 1, 1, 'mod/glossary:exportentry', 1, 1422299148, 0),
(686, 1, 4, 'mod/glossary:exportownentry', 1, 1422299149, 0),
(687, 1, 3, 'mod/glossary:exportownentry', 1, 1422299149, 0),
(688, 1, 1, 'mod/glossary:exportownentry', 1, 1422299149, 0),
(689, 1, 5, 'mod/glossary:exportownentry', 1, 1422299149, 0),
(690, 1, 6, 'mod/imscp:view', 1, 1422299151, 0),
(691, 1, 7, 'mod/imscp:view', 1, 1422299151, 0),
(692, 1, 3, 'mod/imscp:addinstance', 1, 1422299151, 0),
(693, 1, 1, 'mod/imscp:addinstance', 1, 1422299151, 0),
(694, 1, 3, 'mod/label:addinstance', 1, 1422299152, 0),
(695, 1, 1, 'mod/label:addinstance', 1, 1422299153, 0),
(696, 1, 3, 'mod/lesson:addinstance', 1, 1422299155, 0),
(697, 1, 1, 'mod/lesson:addinstance', 1, 1422299155, 0),
(698, 1, 3, 'mod/lesson:edit', 1, 1422299155, 0),
(699, 1, 1, 'mod/lesson:edit', 1, 1422299155, 0),
(700, 1, 4, 'mod/lesson:manage', 1, 1422299156, 0),
(701, 1, 3, 'mod/lesson:manage', 1, 1422299156, 0),
(702, 1, 1, 'mod/lesson:manage', 1, 1422299156, 0),
(703, 1, 5, 'mod/lti:view', 1, 1422299158, 0),
(704, 1, 4, 'mod/lti:view', 1, 1422299158, 0),
(705, 1, 3, 'mod/lti:view', 1, 1422299158, 0),
(706, 1, 1, 'mod/lti:view', 1, 1422299158, 0),
(707, 1, 3, 'mod/lti:addinstance', 1, 1422299159, 0),
(708, 1, 1, 'mod/lti:addinstance', 1, 1422299159, 0),
(709, 1, 4, 'mod/lti:grade', 1, 1422299160, 0),
(710, 1, 3, 'mod/lti:grade', 1, 1422299160, 0),
(711, 1, 1, 'mod/lti:grade', 1, 1422299160, 0),
(712, 1, 4, 'mod/lti:manage', 1, 1422299160, 0),
(713, 1, 3, 'mod/lti:manage', 1, 1422299160, 0),
(714, 1, 1, 'mod/lti:manage', 1, 1422299160, 0),
(715, 1, 3, 'mod/lti:addcoursetool', 1, 1422299160, 0),
(716, 1, 1, 'mod/lti:addcoursetool', 1, 1422299161, 0),
(717, 1, 3, 'mod/lti:requesttooladd', 1, 1422299161, 0),
(718, 1, 1, 'mod/lti:requesttooladd', 1, 1422299161, 0),
(719, 1, 6, 'mod/page:view', 1, 1422299163, 0),
(720, 1, 7, 'mod/page:view', 1, 1422299163, 0),
(721, 1, 3, 'mod/page:addinstance', 1, 1422299163, 0),
(722, 1, 1, 'mod/page:addinstance', 1, 1422299163, 0),
(723, 1, 6, 'mod/quiz:view', 1, 1422299165, 0),
(724, 1, 5, 'mod/quiz:view', 1, 1422299165, 0),
(725, 1, 4, 'mod/quiz:view', 1, 1422299165, 0),
(726, 1, 3, 'mod/quiz:view', 1, 1422299165, 0),
(727, 1, 1, 'mod/quiz:view', 1, 1422299165, 0),
(728, 1, 3, 'mod/quiz:addinstance', 1, 1422299166, 0),
(729, 1, 1, 'mod/quiz:addinstance', 1, 1422299166, 0),
(730, 1, 5, 'mod/quiz:attempt', 1, 1422299166, 0),
(731, 1, 5, 'mod/quiz:reviewmyattempts', 1, 1422299166, 0),
(732, 1, 3, 'mod/quiz:manage', 1, 1422299166, 0),
(733, 1, 1, 'mod/quiz:manage', 1, 1422299166, 0),
(734, 1, 3, 'mod/quiz:manageoverrides', 1, 1422299166, 0),
(735, 1, 1, 'mod/quiz:manageoverrides', 1, 1422299166, 0),
(736, 1, 4, 'mod/quiz:preview', 1, 1422299167, 0),
(737, 1, 3, 'mod/quiz:preview', 1, 1422299167, 0),
(738, 1, 1, 'mod/quiz:preview', 1, 1422299167, 0),
(739, 1, 4, 'mod/quiz:grade', 1, 1422299167, 0),
(740, 1, 3, 'mod/quiz:grade', 1, 1422299167, 0),
(741, 1, 1, 'mod/quiz:grade', 1, 1422299167, 0),
(742, 1, 4, 'mod/quiz:regrade', 1, 1422299167, 0),
(743, 1, 3, 'mod/quiz:regrade', 1, 1422299167, 0),
(744, 1, 1, 'mod/quiz:regrade', 1, 1422299167, 0),
(745, 1, 4, 'mod/quiz:viewreports', 1, 1422299168, 0),
(746, 1, 3, 'mod/quiz:viewreports', 1, 1422299168, 0),
(747, 1, 1, 'mod/quiz:viewreports', 1, 1422299168, 0),
(748, 1, 3, 'mod/quiz:deleteattempts', 1, 1422299168, 0),
(749, 1, 1, 'mod/quiz:deleteattempts', 1, 1422299168, 0),
(750, 1, 6, 'mod/resource:view', 1, 1422299171, 0),
(751, 1, 7, 'mod/resource:view', 1, 1422299171, 0),
(752, 1, 3, 'mod/resource:addinstance', 1, 1422299172, 0),
(753, 1, 1, 'mod/resource:addinstance', 1, 1422299172, 0),
(754, 1, 3, 'mod/scorm:addinstance', 1, 1422299174, 0),
(755, 1, 1, 'mod/scorm:addinstance', 1, 1422299174, 0),
(756, 1, 4, 'mod/scorm:viewreport', 1, 1422299175, 0),
(757, 1, 3, 'mod/scorm:viewreport', 1, 1422299175, 0),
(758, 1, 1, 'mod/scorm:viewreport', 1, 1422299175, 0),
(759, 1, 5, 'mod/scorm:skipview', 1, 1422299175, 0),
(760, 1, 5, 'mod/scorm:savetrack', 1, 1422299175, 0),
(761, 1, 4, 'mod/scorm:savetrack', 1, 1422299175, 0),
(762, 1, 3, 'mod/scorm:savetrack', 1, 1422299175, 0),
(763, 1, 1, 'mod/scorm:savetrack', 1, 1422299175, 0),
(764, 1, 5, 'mod/scorm:viewscores', 1, 1422299176, 0),
(765, 1, 4, 'mod/scorm:viewscores', 1, 1422299176, 0),
(766, 1, 3, 'mod/scorm:viewscores', 1, 1422299176, 0),
(767, 1, 1, 'mod/scorm:viewscores', 1, 1422299176, 0),
(768, 1, 4, 'mod/scorm:deleteresponses', 1, 1422299176, 0),
(769, 1, 3, 'mod/scorm:deleteresponses', 1, 1422299176, 0),
(770, 1, 1, 'mod/scorm:deleteresponses', 1, 1422299177, 0),
(771, 1, 3, 'mod/survey:addinstance', 1, 1422299185, 0),
(772, 1, 1, 'mod/survey:addinstance', 1, 1422299185, 0),
(773, 1, 5, 'mod/survey:participate', 1, 1422299185, 0),
(774, 1, 4, 'mod/survey:participate', 1, 1422299185, 0),
(775, 1, 3, 'mod/survey:participate', 1, 1422299185, 0),
(776, 1, 1, 'mod/survey:participate', 1, 1422299185, 0),
(777, 1, 4, 'mod/survey:readresponses', 1, 1422299185, 0),
(778, 1, 3, 'mod/survey:readresponses', 1, 1422299185, 0),
(779, 1, 1, 'mod/survey:readresponses', 1, 1422299185, 0),
(780, 1, 4, 'mod/survey:download', 1, 1422299185, 0),
(781, 1, 3, 'mod/survey:download', 1, 1422299186, 0),
(782, 1, 1, 'mod/survey:download', 1, 1422299186, 0),
(783, 1, 6, 'mod/url:view', 1, 1422299187, 0),
(784, 1, 7, 'mod/url:view', 1, 1422299187, 0),
(785, 1, 3, 'mod/url:addinstance', 1, 1422299188, 0),
(786, 1, 1, 'mod/url:addinstance', 1, 1422299188, 0),
(787, 1, 3, 'mod/wiki:addinstance', 1, 1422299190, 0),
(788, 1, 1, 'mod/wiki:addinstance', 1, 1422299190, 0),
(789, 1, 6, 'mod/wiki:viewpage', 1, 1422299190, 0),
(790, 1, 5, 'mod/wiki:viewpage', 1, 1422299190, 0),
(791, 1, 4, 'mod/wiki:viewpage', 1, 1422299190, 0),
(792, 1, 3, 'mod/wiki:viewpage', 1, 1422299191, 0),
(793, 1, 1, 'mod/wiki:viewpage', 1, 1422299191, 0),
(794, 1, 5, 'mod/wiki:editpage', 1, 1422299191, 0),
(795, 1, 4, 'mod/wiki:editpage', 1, 1422299191, 0),
(796, 1, 3, 'mod/wiki:editpage', 1, 1422299191, 0),
(797, 1, 1, 'mod/wiki:editpage', 1, 1422299191, 0),
(798, 1, 5, 'mod/wiki:createpage', 1, 1422299191, 0),
(799, 1, 4, 'mod/wiki:createpage', 1, 1422299191, 0),
(800, 1, 3, 'mod/wiki:createpage', 1, 1422299191, 0),
(801, 1, 1, 'mod/wiki:createpage', 1, 1422299191, 0),
(802, 1, 5, 'mod/wiki:viewcomment', 1, 1422299191, 0),
(803, 1, 4, 'mod/wiki:viewcomment', 1, 1422299192, 0),
(804, 1, 3, 'mod/wiki:viewcomment', 1, 1422299192, 0),
(805, 1, 1, 'mod/wiki:viewcomment', 1, 1422299192, 0),
(806, 1, 5, 'mod/wiki:editcomment', 1, 1422299192, 0),
(807, 1, 4, 'mod/wiki:editcomment', 1, 1422299192, 0),
(808, 1, 3, 'mod/wiki:editcomment', 1, 1422299192, 0),
(809, 1, 1, 'mod/wiki:editcomment', 1, 1422299193, 0),
(810, 1, 4, 'mod/wiki:managecomment', 1, 1422299193, 0),
(811, 1, 3, 'mod/wiki:managecomment', 1, 1422299193, 0),
(812, 1, 1, 'mod/wiki:managecomment', 1, 1422299193, 0),
(813, 1, 4, 'mod/wiki:managefiles', 1, 1422299193, 0),
(814, 1, 3, 'mod/wiki:managefiles', 1, 1422299193, 0),
(815, 1, 1, 'mod/wiki:managefiles', 1, 1422299193, 0),
(816, 1, 4, 'mod/wiki:overridelock', 1, 1422299193, 0),
(817, 1, 3, 'mod/wiki:overridelock', 1, 1422299194, 0),
(818, 1, 1, 'mod/wiki:overridelock', 1, 1422299194, 0),
(819, 1, 4, 'mod/wiki:managewiki', 1, 1422299194, 0),
(820, 1, 3, 'mod/wiki:managewiki', 1, 1422299194, 0),
(821, 1, 1, 'mod/wiki:managewiki', 1, 1422299194, 0),
(822, 1, 6, 'mod/workshop:view', 1, 1422299196, 0),
(823, 1, 5, 'mod/workshop:view', 1, 1422299196, 0),
(824, 1, 4, 'mod/workshop:view', 1, 1422299196, 0),
(825, 1, 3, 'mod/workshop:view', 1, 1422299196, 0),
(826, 1, 1, 'mod/workshop:view', 1, 1422299197, 0),
(827, 1, 3, 'mod/workshop:addinstance', 1, 1422299197, 0),
(828, 1, 1, 'mod/workshop:addinstance', 1, 1422299197, 0),
(829, 1, 4, 'mod/workshop:switchphase', 1, 1422299197, 0),
(830, 1, 3, 'mod/workshop:switchphase', 1, 1422299197, 0),
(831, 1, 1, 'mod/workshop:switchphase', 1, 1422299197, 0),
(832, 1, 3, 'mod/workshop:editdimensions', 1, 1422299197, 0),
(833, 1, 1, 'mod/workshop:editdimensions', 1, 1422299197, 0),
(834, 1, 5, 'mod/workshop:submit', 1, 1422299197, 0),
(835, 1, 5, 'mod/workshop:peerassess', 1, 1422299198, 0),
(836, 1, 4, 'mod/workshop:manageexamples', 1, 1422299198, 0),
(837, 1, 3, 'mod/workshop:manageexamples', 1, 1422299198, 0),
(838, 1, 1, 'mod/workshop:manageexamples', 1, 1422299198, 0),
(839, 1, 4, 'mod/workshop:allocate', 1, 1422299198, 0),
(840, 1, 3, 'mod/workshop:allocate', 1, 1422299198, 0),
(841, 1, 1, 'mod/workshop:allocate', 1, 1422299198, 0),
(842, 1, 4, 'mod/workshop:publishsubmissions', 1, 1422299198, 0),
(843, 1, 3, 'mod/workshop:publishsubmissions', 1, 1422299198, 0),
(844, 1, 1, 'mod/workshop:publishsubmissions', 1, 1422299199, 0),
(845, 1, 5, 'mod/workshop:viewauthornames', 1, 1422299199, 0),
(846, 1, 4, 'mod/workshop:viewauthornames', 1, 1422299199, 0),
(847, 1, 3, 'mod/workshop:viewauthornames', 1, 1422299199, 0),
(848, 1, 1, 'mod/workshop:viewauthornames', 1, 1422299199, 0),
(849, 1, 4, 'mod/workshop:viewreviewernames', 1, 1422299199, 0),
(850, 1, 3, 'mod/workshop:viewreviewernames', 1, 1422299199, 0),
(851, 1, 1, 'mod/workshop:viewreviewernames', 1, 1422299199, 0),
(852, 1, 4, 'mod/workshop:viewallsubmissions', 1, 1422299200, 0),
(853, 1, 3, 'mod/workshop:viewallsubmissions', 1, 1422299200, 0),
(854, 1, 1, 'mod/workshop:viewallsubmissions', 1, 1422299200, 0),
(855, 1, 5, 'mod/workshop:viewpublishedsubmissions', 1, 1422299200, 0),
(856, 1, 4, 'mod/workshop:viewpublishedsubmissions', 1, 1422299200, 0),
(857, 1, 3, 'mod/workshop:viewpublishedsubmissions', 1, 1422299200, 0),
(858, 1, 1, 'mod/workshop:viewpublishedsubmissions', 1, 1422299200, 0),
(859, 1, 5, 'mod/workshop:viewauthorpublished', 1, 1422299200, 0),
(860, 1, 4, 'mod/workshop:viewauthorpublished', 1, 1422299201, 0),
(861, 1, 3, 'mod/workshop:viewauthorpublished', 1, 1422299201, 0),
(862, 1, 1, 'mod/workshop:viewauthorpublished', 1, 1422299201, 0),
(863, 1, 4, 'mod/workshop:viewallassessments', 1, 1422299201, 0),
(864, 1, 3, 'mod/workshop:viewallassessments', 1, 1422299201, 0),
(865, 1, 1, 'mod/workshop:viewallassessments', 1, 1422299201, 0),
(866, 1, 4, 'mod/workshop:overridegrades', 1, 1422299201, 0),
(867, 1, 3, 'mod/workshop:overridegrades', 1, 1422299201, 0),
(868, 1, 1, 'mod/workshop:overridegrades', 1, 1422299202, 0),
(869, 1, 4, 'mod/workshop:ignoredeadlines', 1, 1422299202, 0),
(870, 1, 3, 'mod/workshop:ignoredeadlines', 1, 1422299202, 0),
(871, 1, 1, 'mod/workshop:ignoredeadlines', 1, 1422299202, 0),
(872, 1, 3, 'enrol/cohort:config', 1, 1422299227, 0),
(873, 1, 1, 'enrol/cohort:config', 1, 1422299227, 0),
(874, 1, 1, 'enrol/cohort:unenrol', 1, 1422299227, 0),
(875, 1, 1, 'enrol/database:unenrol', 1, 1422299228, 0),
(876, 1, 1, 'enrol/guest:config', 1, 1422299232, 0),
(877, 1, 3, 'enrol/guest:config', 1, 1422299232, 0),
(878, 1, 1, 'enrol/ldap:manage', 1, 1422299234, 0),
(879, 1, 1, 'enrol/manual:config', 1, 1422299235, 0),
(880, 1, 1, 'enrol/manual:enrol', 1, 1422299235, 0),
(881, 1, 3, 'enrol/manual:enrol', 1, 1422299235, 0),
(882, 1, 1, 'enrol/manual:manage', 1, 1422299235, 0),
(883, 1, 3, 'enrol/manual:manage', 1, 1422299235, 0),
(884, 1, 1, 'enrol/manual:unenrol', 1, 1422299235, 0),
(885, 1, 3, 'enrol/manual:unenrol', 1, 1422299235, 0),
(886, 1, 1, 'enrol/meta:config', 1, 1422299237, 0),
(887, 1, 3, 'enrol/meta:config', 1, 1422299237, 0),
(888, 1, 1, 'enrol/meta:selectaslinked', 1, 1422299237, 0),
(889, 1, 1, 'enrol/meta:unenrol', 1, 1422299237, 0),
(890, 1, 1, 'enrol/paypal:config', 1, 1422299241, 0),
(891, 1, 1, 'enrol/paypal:manage', 1, 1422299241, 0),
(892, 1, 3, 'enrol/paypal:manage', 1, 1422299242, 0),
(893, 1, 1, 'enrol/paypal:unenrol', 1, 1422299242, 0),
(894, 1, 3, 'enrol/self:config', 1, 1422299243, 0),
(895, 1, 1, 'enrol/self:config', 1, 1422299243, 0),
(896, 1, 3, 'enrol/self:manage', 1, 1422299243, 0),
(897, 1, 1, 'enrol/self:manage', 1, 1422299243, 0);
INSERT INTO `mdl_role_capabilities` (`id`, `contextid`, `roleid`, `capability`, `permission`, `timemodified`, `modifierid`) VALUES
(898, 1, 5, 'enrol/self:unenrolself', 1, 1422299243, 0),
(899, 1, 3, 'enrol/self:unenrol', 1, 1422299244, 0),
(900, 1, 1, 'enrol/self:unenrol', 1, 1422299244, 0),
(901, 1, 7, 'message/airnotifier:managedevice', 1, 1422299245, 0),
(902, 1, 3, 'block/activity_modules:addinstance', 1, 1422299257, 0),
(903, 1, 1, 'block/activity_modules:addinstance', 1, 1422299257, 0),
(904, 1, 7, 'block/admin_bookmarks:myaddinstance', 1, 1422299258, 0),
(905, 1, 3, 'block/admin_bookmarks:addinstance', 1, 1422299259, 0),
(906, 1, 1, 'block/admin_bookmarks:addinstance', 1, 1422299259, 0),
(907, 1, 3, 'block/badges:addinstance', 1, 1422299260, 0),
(908, 1, 1, 'block/badges:addinstance', 1, 1422299260, 0),
(909, 1, 7, 'block/badges:myaddinstance', 1, 1422299260, 0),
(910, 1, 3, 'block/blog_menu:addinstance', 1, 1422299261, 0),
(911, 1, 1, 'block/blog_menu:addinstance', 1, 1422299261, 0),
(912, 1, 3, 'block/blog_recent:addinstance', 1, 1422299262, 0),
(913, 1, 1, 'block/blog_recent:addinstance', 1, 1422299262, 0),
(914, 1, 3, 'block/blog_tags:addinstance', 1, 1422299263, 0),
(915, 1, 1, 'block/blog_tags:addinstance', 1, 1422299263, 0),
(916, 1, 7, 'block/calendar_month:myaddinstance', 1, 1422299264, 0),
(917, 1, 3, 'block/calendar_month:addinstance', 1, 1422299264, 0),
(918, 1, 1, 'block/calendar_month:addinstance', 1, 1422299264, 0),
(919, 1, 7, 'block/calendar_upcoming:myaddinstance', 1, 1422299265, 0),
(920, 1, 3, 'block/calendar_upcoming:addinstance', 1, 1422299265, 0),
(921, 1, 1, 'block/calendar_upcoming:addinstance', 1, 1422299265, 0),
(922, 1, 7, 'block/comments:myaddinstance', 1, 1422299266, 0),
(923, 1, 3, 'block/comments:addinstance', 1, 1422299266, 0),
(924, 1, 1, 'block/comments:addinstance', 1, 1422299266, 0),
(925, 1, 7, 'block/community:myaddinstance', 1, 1422299267, 0),
(926, 1, 3, 'block/community:addinstance', 1, 1422299267, 0),
(927, 1, 1, 'block/community:addinstance', 1, 1422299267, 0),
(928, 1, 3, 'block/completionstatus:addinstance', 1, 1422299268, 0),
(929, 1, 1, 'block/completionstatus:addinstance', 1, 1422299268, 0),
(930, 1, 7, 'block/course_list:myaddinstance', 1, 1422299270, 0),
(931, 1, 3, 'block/course_list:addinstance', 1, 1422299270, 0),
(932, 1, 1, 'block/course_list:addinstance', 1, 1422299270, 0),
(933, 1, 7, 'block/course_overview:myaddinstance', 1, 1422299271, 0),
(934, 1, 3, 'block/course_overview:addinstance', 1, 1422299271, 0),
(935, 1, 1, 'block/course_overview:addinstance', 1, 1422299271, 0),
(936, 1, 3, 'block/course_summary:addinstance', 1, 1422299273, 0),
(937, 1, 1, 'block/course_summary:addinstance', 1, 1422299273, 0),
(938, 1, 3, 'block/feedback:addinstance', 1, 1422299274, 0),
(939, 1, 1, 'block/feedback:addinstance', 1, 1422299274, 0),
(940, 1, 7, 'block/glossary_random:myaddinstance', 1, 1422299275, 0),
(941, 1, 3, 'block/glossary_random:addinstance', 1, 1422299275, 0),
(942, 1, 1, 'block/glossary_random:addinstance', 1, 1422299275, 0),
(943, 1, 7, 'block/html:myaddinstance', 1, 1422299276, 0),
(944, 1, 3, 'block/html:addinstance', 1, 1422299276, 0),
(945, 1, 1, 'block/html:addinstance', 1, 1422299276, 0),
(946, 1, 3, 'block/login:addinstance', 1, 1422299277, 0),
(947, 1, 1, 'block/login:addinstance', 1, 1422299277, 0),
(948, 1, 7, 'block/mentees:myaddinstance', 1, 1422299278, 0),
(949, 1, 3, 'block/mentees:addinstance', 1, 1422299278, 0),
(950, 1, 1, 'block/mentees:addinstance', 1, 1422299278, 0),
(951, 1, 7, 'block/messages:myaddinstance', 1, 1422299279, 0),
(952, 1, 3, 'block/messages:addinstance', 1, 1422299279, 0),
(953, 1, 1, 'block/messages:addinstance', 1, 1422299279, 0),
(954, 1, 7, 'block/mnet_hosts:myaddinstance', 1, 1422299281, 0),
(955, 1, 3, 'block/mnet_hosts:addinstance', 1, 1422299281, 0),
(956, 1, 1, 'block/mnet_hosts:addinstance', 1, 1422299281, 0),
(957, 1, 7, 'block/myprofile:myaddinstance', 1, 1422299282, 0),
(958, 1, 3, 'block/myprofile:addinstance', 1, 1422299282, 0),
(959, 1, 1, 'block/myprofile:addinstance', 1, 1422299282, 0),
(960, 1, 7, 'block/navigation:myaddinstance', 1, 1422299283, 0),
(961, 1, 3, 'block/navigation:addinstance', 1, 1422299283, 0),
(962, 1, 1, 'block/navigation:addinstance', 1, 1422299283, 0),
(963, 1, 7, 'block/news_items:myaddinstance', 1, 1422299284, 0),
(964, 1, 3, 'block/news_items:addinstance', 1, 1422299284, 0),
(965, 1, 1, 'block/news_items:addinstance', 1, 1422299284, 0),
(966, 1, 7, 'block/online_users:myaddinstance', 1, 1422299285, 0),
(967, 1, 3, 'block/online_users:addinstance', 1, 1422299285, 0),
(968, 1, 1, 'block/online_users:addinstance', 1, 1422299286, 0),
(969, 1, 7, 'block/online_users:viewlist', 1, 1422299286, 0),
(970, 1, 6, 'block/online_users:viewlist', 1, 1422299286, 0),
(971, 1, 5, 'block/online_users:viewlist', 1, 1422299286, 0),
(972, 1, 4, 'block/online_users:viewlist', 1, 1422299286, 0),
(973, 1, 3, 'block/online_users:viewlist', 1, 1422299286, 0),
(974, 1, 1, 'block/online_users:viewlist', 1, 1422299286, 0),
(975, 1, 3, 'block/participants:addinstance', 1, 1422299287, 0),
(976, 1, 1, 'block/participants:addinstance', 1, 1422299287, 0),
(977, 1, 7, 'block/private_files:myaddinstance', 1, 1422299288, 0),
(978, 1, 3, 'block/private_files:addinstance', 1, 1422299288, 0),
(979, 1, 1, 'block/private_files:addinstance', 1, 1422299288, 0),
(980, 1, 3, 'block/quiz_results:addinstance', 1, 1422299289, 0),
(981, 1, 1, 'block/quiz_results:addinstance', 1, 1422299289, 0),
(982, 1, 3, 'block/recent_activity:addinstance', 1, 1422299290, 0),
(983, 1, 1, 'block/recent_activity:addinstance', 1, 1422299291, 0),
(984, 1, 7, 'block/recent_activity:viewaddupdatemodule', 1, 1422299291, 0),
(985, 1, 7, 'block/recent_activity:viewdeletemodule', 1, 1422299291, 0),
(986, 1, 7, 'block/rss_client:myaddinstance', 1, 1422299292, 0),
(987, 1, 3, 'block/rss_client:addinstance', 1, 1422299292, 0),
(988, 1, 1, 'block/rss_client:addinstance', 1, 1422299293, 0),
(989, 1, 4, 'block/rss_client:manageownfeeds', 1, 1422299293, 0),
(990, 1, 3, 'block/rss_client:manageownfeeds', 1, 1422299293, 0),
(991, 1, 1, 'block/rss_client:manageownfeeds', 1, 1422299293, 0),
(992, 1, 1, 'block/rss_client:manageanyfeeds', 1, 1422299293, 0),
(993, 1, 3, 'block/search_forums:addinstance', 1, 1422299294, 0),
(994, 1, 1, 'block/search_forums:addinstance', 1, 1422299294, 0),
(995, 1, 3, 'block/section_links:addinstance', 1, 1422299295, 0),
(996, 1, 1, 'block/section_links:addinstance', 1, 1422299295, 0),
(997, 1, 3, 'block/selfcompletion:addinstance', 1, 1422299296, 0),
(998, 1, 1, 'block/selfcompletion:addinstance', 1, 1422299296, 0),
(999, 1, 7, 'block/settings:myaddinstance', 1, 1422299297, 0),
(1000, 1, 3, 'block/settings:addinstance', 1, 1422299297, 0),
(1001, 1, 1, 'block/settings:addinstance', 1, 1422299297, 0),
(1002, 1, 3, 'block/site_main_menu:addinstance', 1, 1422299298, 0),
(1003, 1, 1, 'block/site_main_menu:addinstance', 1, 1422299298, 0),
(1004, 1, 3, 'block/social_activities:addinstance', 1, 1422299299, 0),
(1005, 1, 1, 'block/social_activities:addinstance', 1, 1422299299, 0),
(1006, 1, 3, 'block/tag_flickr:addinstance', 1, 1422299300, 0),
(1007, 1, 1, 'block/tag_flickr:addinstance', 1, 1422299301, 0),
(1008, 1, 3, 'block/tag_youtube:addinstance', 1, 1422299301, 0),
(1009, 1, 1, 'block/tag_youtube:addinstance', 1, 1422299301, 0),
(1010, 1, 7, 'block/tags:myaddinstance', 1, 1422299303, 0),
(1011, 1, 3, 'block/tags:addinstance', 1, 1422299303, 0),
(1012, 1, 1, 'block/tags:addinstance', 1, 1422299303, 0),
(1013, 1, 4, 'report/completion:view', 1, 1422299323, 0),
(1014, 1, 3, 'report/completion:view', 1, 1422299324, 0),
(1015, 1, 1, 'report/completion:view', 1, 1422299324, 0),
(1016, 1, 4, 'report/courseoverview:view', 1, 1422299325, 0),
(1017, 1, 3, 'report/courseoverview:view', 1, 1422299326, 0),
(1018, 1, 1, 'report/courseoverview:view', 1, 1422299326, 0),
(1019, 1, 4, 'report/log:view', 1, 1422299327, 0),
(1020, 1, 3, 'report/log:view', 1, 1422299327, 0),
(1021, 1, 1, 'report/log:view', 1, 1422299327, 0),
(1022, 1, 4, 'report/log:viewtoday', 1, 1422299327, 0),
(1023, 1, 3, 'report/log:viewtoday', 1, 1422299327, 0),
(1024, 1, 1, 'report/log:viewtoday', 1, 1422299327, 0),
(1025, 1, 4, 'report/loglive:view', 1, 1422299328, 0),
(1026, 1, 3, 'report/loglive:view', 1, 1422299328, 0),
(1027, 1, 1, 'report/loglive:view', 1, 1422299328, 0),
(1028, 1, 4, 'report/outline:view', 1, 1422299329, 0),
(1029, 1, 3, 'report/outline:view', 1, 1422299329, 0),
(1030, 1, 1, 'report/outline:view', 1, 1422299329, 0),
(1031, 1, 4, 'report/participation:view', 1, 1422299330, 0),
(1032, 1, 3, 'report/participation:view', 1, 1422299330, 0),
(1033, 1, 1, 'report/participation:view', 1, 1422299330, 0),
(1034, 1, 1, 'report/performance:view', 1, 1422299331, 0),
(1035, 1, 4, 'report/progress:view', 1, 1422299332, 0),
(1036, 1, 3, 'report/progress:view', 1, 1422299333, 0),
(1037, 1, 1, 'report/progress:view', 1, 1422299333, 0),
(1038, 1, 1, 'report/security:view', 1, 1422299335, 0),
(1039, 1, 4, 'report/stats:view', 1, 1422299336, 0),
(1040, 1, 3, 'report/stats:view', 1, 1422299337, 0),
(1041, 1, 1, 'report/stats:view', 1, 1422299337, 0),
(1042, 1, 4, 'gradeexport/ods:view', 1, 1422299338, 0),
(1043, 1, 3, 'gradeexport/ods:view', 1, 1422299338, 0),
(1044, 1, 1, 'gradeexport/ods:view', 1, 1422299338, 0),
(1045, 1, 1, 'gradeexport/ods:publish', 1, 1422299338, 0),
(1046, 1, 4, 'gradeexport/txt:view', 1, 1422299339, 0),
(1047, 1, 3, 'gradeexport/txt:view', 1, 1422299339, 0),
(1048, 1, 1, 'gradeexport/txt:view', 1, 1422299339, 0),
(1049, 1, 1, 'gradeexport/txt:publish', 1, 1422299339, 0),
(1050, 1, 4, 'gradeexport/xls:view', 1, 1422299340, 0),
(1051, 1, 3, 'gradeexport/xls:view', 1, 1422299340, 0),
(1052, 1, 1, 'gradeexport/xls:view', 1, 1422299340, 0),
(1053, 1, 1, 'gradeexport/xls:publish', 1, 1422299340, 0),
(1054, 1, 4, 'gradeexport/xml:view', 1, 1422299341, 0),
(1055, 1, 3, 'gradeexport/xml:view', 1, 1422299341, 0),
(1056, 1, 1, 'gradeexport/xml:view', 1, 1422299342, 0),
(1057, 1, 1, 'gradeexport/xml:publish', 1, 1422299342, 0),
(1058, 1, 3, 'gradeimport/csv:view', 1, 1422299343, 0),
(1059, 1, 1, 'gradeimport/csv:view', 1, 1422299343, 0),
(1060, 1, 3, 'gradeimport/xml:view', 1, 1422299344, 0),
(1061, 1, 1, 'gradeimport/xml:view', 1, 1422299344, 0),
(1062, 1, 1, 'gradeimport/xml:publish', 1, 1422299344, 0),
(1063, 1, 4, 'gradereport/grader:view', 1, 1422299345, 0),
(1064, 1, 3, 'gradereport/grader:view', 1, 1422299345, 0),
(1065, 1, 1, 'gradereport/grader:view', 1, 1422299345, 0),
(1066, 1, 4, 'gradereport/outcomes:view', 1, 1422299347, 0),
(1067, 1, 3, 'gradereport/outcomes:view', 1, 1422299347, 0),
(1068, 1, 1, 'gradereport/outcomes:view', 1, 1422299347, 0),
(1069, 1, 5, 'gradereport/overview:view', 1, 1422299348, 0),
(1070, 1, 1, 'gradereport/overview:view', 1, 1422299348, 0),
(1071, 1, 5, 'gradereport/user:view', 1, 1422299349, 0),
(1072, 1, 4, 'gradereport/user:view', 1, 1422299349, 0),
(1073, 1, 3, 'gradereport/user:view', 1, 1422299349, 0),
(1074, 1, 1, 'gradereport/user:view', 1, 1422299349, 0),
(1075, 1, 7, 'repository/alfresco:view', 1, 1422299355, 0),
(1076, 1, 7, 'repository/areafiles:view', 1, 1422299357, 0),
(1077, 1, 7, 'repository/boxnet:view', 1, 1422299358, 0),
(1078, 1, 2, 'repository/coursefiles:view', 1, 1422299359, 0),
(1079, 1, 4, 'repository/coursefiles:view', 1, 1422299359, 0),
(1080, 1, 3, 'repository/coursefiles:view', 1, 1422299359, 0),
(1081, 1, 1, 'repository/coursefiles:view', 1, 1422299359, 0),
(1082, 1, 7, 'repository/dropbox:view', 1, 1422299360, 0),
(1083, 1, 7, 'repository/equella:view', 1, 1422299361, 0),
(1084, 1, 2, 'repository/filesystem:view', 1, 1422299362, 0),
(1085, 1, 4, 'repository/filesystem:view', 1, 1422299362, 0),
(1086, 1, 3, 'repository/filesystem:view', 1, 1422299362, 0),
(1087, 1, 1, 'repository/filesystem:view', 1, 1422299362, 0),
(1088, 1, 7, 'repository/flickr:view', 1, 1422299363, 0),
(1089, 1, 7, 'repository/flickr_public:view', 1, 1422299364, 0),
(1090, 1, 7, 'repository/googledocs:view', 1, 1422299364, 0),
(1091, 1, 2, 'repository/local:view', 1, 1422299365, 0),
(1092, 1, 4, 'repository/local:view', 1, 1422299366, 0),
(1093, 1, 3, 'repository/local:view', 1, 1422299366, 0),
(1094, 1, 1, 'repository/local:view', 1, 1422299366, 0),
(1095, 1, 7, 'repository/merlot:view', 1, 1422299366, 0),
(1096, 1, 7, 'repository/picasa:view', 1, 1422299367, 0),
(1097, 1, 7, 'repository/recent:view', 1, 1422299369, 0),
(1098, 1, 7, 'repository/s3:view', 1, 1422299370, 0),
(1099, 1, 7, 'repository/skydrive:view', 1, 1422299370, 0),
(1100, 1, 7, 'repository/upload:view', 1, 1422299372, 0),
(1101, 1, 7, 'repository/url:view', 1, 1422299373, 0),
(1102, 1, 7, 'repository/user:view', 1, 1422299374, 0),
(1103, 1, 2, 'repository/webdav:view', 1, 1422299375, 0),
(1104, 1, 4, 'repository/webdav:view', 1, 1422299375, 0),
(1105, 1, 3, 'repository/webdav:view', 1, 1422299375, 0),
(1106, 1, 1, 'repository/webdav:view', 1, 1422299375, 0),
(1107, 1, 7, 'repository/wikimedia:view', 1, 1422299377, 0),
(1108, 1, 7, 'repository/youtube:view', 1, 1422299379, 0),
(1109, 1, 1, 'tool/customlang:view', 1, 1422299407, 0),
(1110, 1, 1, 'tool/customlang:edit', 1, 1422299407, 0),
(1111, 1, 1, 'tool/uploaduser:uploaduserpictures', 1, 1422299419, 0),
(1112, 1, 3, 'booktool/importhtml:import', 1, 1422299443, 0),
(1113, 1, 1, 'booktool/importhtml:import', 1, 1422299443, 0),
(1114, 1, 6, 'booktool/print:print', 1, 1422299444, 0),
(1115, 1, 8, 'booktool/print:print', 1, 1422299444, 0),
(1116, 1, 5, 'booktool/print:print', 1, 1422299444, 0),
(1117, 1, 4, 'booktool/print:print', 1, 1422299444, 0),
(1118, 1, 3, 'booktool/print:print', 1, 1422299444, 0),
(1119, 1, 1, 'booktool/print:print', 1, 1422299444, 0),
(1120, 1, 4, 'quiz/grading:viewstudentnames', 1, 1422299452, 0),
(1121, 1, 3, 'quiz/grading:viewstudentnames', 1, 1422299453, 0),
(1122, 1, 1, 'quiz/grading:viewstudentnames', 1, 1422299453, 0),
(1123, 1, 4, 'quiz/grading:viewidnumber', 1, 1422299453, 0),
(1124, 1, 3, 'quiz/grading:viewidnumber', 1, 1422299453, 0),
(1125, 1, 1, 'quiz/grading:viewidnumber', 1, 1422299453, 0),
(1126, 1, 4, 'quiz/statistics:view', 1, 1422299455, 0),
(1127, 1, 3, 'quiz/statistics:view', 1, 1422299455, 0),
(1128, 1, 1, 'quiz/statistics:view', 1, 1422299456, 0),
(1129, 1, 7, 'webservice/xmlrpc:use', 1, 1422464903, 2),
(1130, 1, 7, 'webservice/rest:use', 1, 1422464903, 2),
(1131, 1, 9, 'moodle/user:create', 1, 1422553411, 2),
(1132, 1, 9, 'moodle/user:delete', 1, 1422553411, 2),
(1133, 1, 9, 'moodle/user:update', 1, 1422553411, 2),
(1134, 1, 9, 'moodle/user:viewalldetails', 1, 1422553412, 2),
(1135, 1, 9, 'moodle/course:create', 1, 1422553412, 2),
(1136, 1, 9, 'enrol/manual:enrol', 1, 1422553412, 2),
(1137, 1, 9, 'moodle/course:update', 1, 1422553412, 2),
(1138, 1, 9, 'moodle/course:useremail', 1, 1422553412, 2),
(1139, 1, 9, 'moodle/course:view', 1, 1422553412, 2),
(1140, 1, 9, 'moodle/course:viewhiddencourses', 1, 1422553412, 2),
(1141, 1, 9, 'moodle/user:viewhiddendetails', 1, 1422553412, 2),
(1143, 1, 9, 'webservice/rest:use', 1, 1422641228, 2),
(1144, 1, 9, 'moodle/site:sendmessage', 1, 1424276617, 2),
(1145, 1, 9, 'moodle/course:visibility', 1, 1424282874, 2),
(1146, 1, 9, 'moodle/webservice:createmobiletoken', 1, 1424796535, 2),
(1147, 1, 9, 'moodle/webservice:createtoken', 1, 1424796535, 2),
(1148, 1, 7, 'moodle/webservice:createtoken', 1, 1424797470, 2),
(1149, 1, 7, 'webservice/soap:use', 1, 1425490013, 2),
(1150, 31, 7, 'enrol/manual:enrol', 1, 1428942566, 2),
(1151, 31, 7, 'enrol/self:manage', -1, 1428942651, 2),
(1152, 1, 7, 'enrol/manual:enrol', 1, 1428943993, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_role_context_levels`
--

CREATE TABLE IF NOT EXISTS `mdl_role_context_levels` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL,
  `contextlevel` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolecontleve_conrol_uix` (`contextlevel`,`roleid`),
  KEY `mdl_rolecontleve_rol_ix` (`roleid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Lists which roles can be assigned at which context levels. T' AUTO_INCREMENT=51 ;

--
-- Volcado de datos para la tabla `mdl_role_context_levels`
--

INSERT INTO `mdl_role_context_levels` (`id`, `roleid`, `contextlevel`) VALUES
(1, 1, 10),
(2, 1, 40),
(3, 1, 50),
(4, 2, 10),
(5, 2, 40),
(8, 4, 50),
(9, 4, 70),
(12, 5, 50),
(13, 5, 70),
(14, 5, 10),
(15, 3, 50),
(16, 3, 70),
(17, 3, 10),
(45, 9, 10),
(46, 9, 30),
(47, 9, 40),
(48, 9, 50),
(49, 9, 70),
(50, 9, 80);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_role_names`
--

CREATE TABLE IF NOT EXISTS `mdl_role_names` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `contextid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolename_rolcon_uix` (`roleid`,`contextid`),
  KEY `mdl_rolename_rol_ix` (`roleid`),
  KEY `mdl_rolename_con_ix` (`contextid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='role names in native strings' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_role_sortorder`
--

CREATE TABLE IF NOT EXISTS `mdl_role_sortorder` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `roleid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `sortoder` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolesort_userolcon_uix` (`userid`,`roleid`,`contextid`),
  KEY `mdl_rolesort_use_ix` (`userid`),
  KEY `mdl_rolesort_rol_ix` (`roleid`),
  KEY `mdl_rolesort_con_ix` (`contextid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='sort order of course managers in a course' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_upgrade_log`
--

CREATE TABLE IF NOT EXISTS `mdl_upgrade_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `type` bigint(10) NOT NULL,
  `plugin` varchar(100) DEFAULT NULL,
  `version` varchar(100) DEFAULT NULL,
  `targetversion` varchar(100) DEFAULT NULL,
  `info` varchar(255) NOT NULL DEFAULT '',
  `details` longtext,
  `backtrace` longtext,
  `userid` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_upgrlog_tim_ix` (`timemodified`),
  KEY `mdl_upgrlog_typtim_ix` (`type`,`timemodified`),
  KEY `mdl_upgrlog_use_ix` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Upgrade logging' AUTO_INCREMENT=1196 ;

--
-- Volcado de datos para la tabla `mdl_upgrade_log`
--

INSERT INTO `mdl_upgrade_log` (`id`, `type`, `plugin`, `version`, `targetversion`, `info`, `details`, `backtrace`, `userid`, `timemodified`) VALUES
(1, 0, 'core', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422298947),
(2, 0, 'core', '2014051200', '2014051200', 'Core installed', NULL, '', 0, 1422299064),
(3, 0, 'availability_completion', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299066),
(4, 0, 'availability_completion', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299066),
(5, 0, 'availability_completion', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299066),
(6, 0, 'availability_date', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299066),
(7, 0, 'availability_date', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299067),
(8, 0, 'availability_date', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299067),
(9, 0, 'availability_grade', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299067),
(10, 0, 'availability_grade', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299067),
(11, 0, 'availability_grade', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299068),
(12, 0, 'availability_group', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299068),
(13, 0, 'availability_group', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299068),
(14, 0, 'availability_group', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299068),
(15, 0, 'availability_grouping', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299068),
(16, 0, 'availability_grouping', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299068),
(17, 0, 'availability_grouping', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299069),
(18, 0, 'availability_profile', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299069),
(19, 0, 'availability_profile', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299069),
(20, 0, 'availability_profile', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299069),
(21, 0, 'qtype_calculated', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299069),
(22, 0, 'qtype_calculated', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299071),
(23, 0, 'qtype_calculated', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299071),
(24, 0, 'qtype_calculatedmulti', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299071),
(25, 0, 'qtype_calculatedmulti', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299071),
(26, 0, 'qtype_calculatedmulti', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299072),
(27, 0, 'qtype_calculatedsimple', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299072),
(28, 0, 'qtype_calculatedsimple', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299072),
(29, 0, 'qtype_calculatedsimple', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299072),
(30, 0, 'qtype_description', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299073),
(31, 0, 'qtype_description', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299073),
(32, 0, 'qtype_description', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299073),
(33, 0, 'qtype_essay', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299073),
(34, 0, 'qtype_essay', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299074),
(35, 0, 'qtype_essay', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299074),
(36, 0, 'qtype_match', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299075),
(37, 0, 'qtype_match', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299075),
(38, 0, 'qtype_match', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299075),
(39, 0, 'qtype_missingtype', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299076),
(40, 0, 'qtype_missingtype', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299076),
(41, 0, 'qtype_missingtype', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299076),
(42, 0, 'qtype_multianswer', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299076),
(43, 0, 'qtype_multianswer', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299076),
(44, 0, 'qtype_multianswer', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299077),
(45, 0, 'qtype_multichoice', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299077),
(46, 0, 'qtype_multichoice', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299077),
(47, 0, 'qtype_multichoice', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299077),
(48, 0, 'qtype_numerical', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299078),
(49, 0, 'qtype_numerical', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299078),
(50, 0, 'qtype_numerical', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299078),
(51, 0, 'qtype_random', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299078),
(52, 0, 'qtype_random', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299079),
(53, 0, 'qtype_random', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299079),
(54, 0, 'qtype_randomsamatch', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299079),
(55, 0, 'qtype_randomsamatch', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299079),
(56, 0, 'qtype_randomsamatch', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299080),
(57, 0, 'qtype_shortanswer', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299080),
(58, 0, 'qtype_shortanswer', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299080),
(59, 0, 'qtype_shortanswer', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299080),
(60, 0, 'qtype_truefalse', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299081),
(61, 0, 'qtype_truefalse', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299082),
(62, 0, 'qtype_truefalse', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299082),
(63, 0, 'mod_assign', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299082),
(64, 0, 'mod_assign', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299083),
(65, 0, 'mod_assign', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299090),
(66, 0, 'mod_assignment', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299090),
(67, 0, 'mod_assignment', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299091),
(68, 0, 'mod_assignment', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299095),
(69, 0, 'mod_book', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299095),
(70, 0, 'mod_book', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299096),
(71, 0, 'mod_book', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299099),
(72, 0, 'mod_chat', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299099),
(73, 0, 'mod_chat', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299101),
(74, 0, 'mod_chat', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299107),
(75, 0, 'mod_choice', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299108),
(76, 0, 'mod_choice', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299109),
(77, 0, 'mod_choice', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299112),
(78, 0, 'mod_data', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299112),
(79, 0, 'mod_data', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299113),
(80, 0, 'mod_data', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299120),
(81, 0, 'mod_feedback', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299120),
(82, 0, 'mod_feedback', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299122),
(83, 0, 'mod_feedback', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299126),
(84, 0, 'mod_folder', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299126),
(85, 0, 'mod_folder', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299127),
(86, 0, 'mod_folder', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299128),
(87, 0, 'mod_forum', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299128),
(88, 0, 'mod_forum', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299129),
(89, 0, 'mod_forum', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299141),
(90, 0, 'mod_glossary', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299141),
(91, 0, 'mod_glossary', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299142),
(92, 0, 'mod_glossary', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299150),
(93, 0, 'mod_imscp', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299150),
(94, 0, 'mod_imscp', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299150),
(95, 0, 'mod_imscp', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299152),
(96, 0, 'mod_label', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299152),
(97, 0, 'mod_label', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299152),
(98, 0, 'mod_label', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299153),
(99, 0, 'mod_lesson', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299153),
(100, 0, 'mod_lesson', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299155),
(101, 0, 'mod_lesson', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299157),
(102, 0, 'mod_lti', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299157),
(103, 0, 'mod_lti', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299158),
(104, 0, 'mod_lti', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299162),
(105, 0, 'mod_page', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299162),
(106, 0, 'mod_page', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299162),
(107, 0, 'mod_page', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299164),
(108, 0, 'mod_quiz', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299164),
(109, 0, 'mod_quiz', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299165),
(110, 0, 'mod_quiz', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299170),
(111, 0, 'mod_resource', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299170),
(112, 0, 'mod_resource', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299171),
(113, 0, 'mod_resource', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299172),
(114, 0, 'mod_scorm', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299172),
(115, 0, 'mod_scorm', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299174),
(116, 0, 'mod_scorm', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299177),
(117, 0, 'mod_survey', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299177),
(118, 0, 'mod_survey', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299178),
(119, 0, 'mod_survey', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299186),
(120, 0, 'mod_url', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299186),
(121, 0, 'mod_url', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299187),
(122, 0, 'mod_url', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299188),
(123, 0, 'mod_wiki', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299188),
(124, 0, 'mod_wiki', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299189),
(125, 0, 'mod_wiki', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299194),
(126, 0, 'mod_workshop', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299194),
(127, 0, 'mod_workshop', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299196),
(128, 0, 'mod_workshop', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299205),
(129, 0, 'auth_cas', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299205),
(130, 0, 'auth_cas', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299205),
(131, 0, 'auth_cas', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299206),
(132, 0, 'auth_db', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299206),
(133, 0, 'auth_db', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299206),
(134, 0, 'auth_db', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299207),
(135, 0, 'auth_email', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299207),
(136, 0, 'auth_email', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299207),
(137, 0, 'auth_email', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299208),
(138, 0, 'auth_fc', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299208),
(139, 0, 'auth_fc', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299208),
(140, 0, 'auth_fc', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299208),
(141, 0, 'auth_imap', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299209),
(142, 0, 'auth_imap', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299209),
(143, 0, 'auth_imap', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299209),
(144, 0, 'auth_ldap', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299210),
(145, 0, 'auth_ldap', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299210),
(146, 0, 'auth_ldap', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299210),
(147, 0, 'auth_manual', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299210),
(148, 0, 'auth_manual', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299211),
(149, 0, 'auth_manual', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299211),
(150, 0, 'auth_mnet', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299211),
(151, 0, 'auth_mnet', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299211),
(152, 0, 'auth_mnet', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299217),
(153, 0, 'auth_nntp', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299217),
(154, 0, 'auth_nntp', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299217),
(155, 0, 'auth_nntp', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299218),
(156, 0, 'auth_nologin', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299218),
(157, 0, 'auth_nologin', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299218),
(158, 0, 'auth_nologin', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299219),
(159, 0, 'auth_none', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299219),
(160, 0, 'auth_none', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299219),
(161, 0, 'auth_none', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299219),
(162, 0, 'auth_pam', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299220),
(163, 0, 'auth_pam', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299220),
(164, 0, 'auth_pam', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299220),
(165, 0, 'auth_pop3', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299220),
(166, 0, 'auth_pop3', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299221),
(167, 0, 'auth_pop3', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299221),
(168, 0, 'auth_radius', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299221),
(169, 0, 'auth_radius', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299222),
(170, 0, 'auth_radius', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299222),
(171, 0, 'auth_shibboleth', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299222),
(172, 0, 'auth_shibboleth', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299223),
(173, 0, 'auth_shibboleth', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299223),
(174, 0, 'auth_webservice', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299223),
(175, 0, 'auth_webservice', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299223),
(176, 0, 'auth_webservice', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299224),
(177, 0, 'calendartype_gregorian', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299224),
(178, 0, 'calendartype_gregorian', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299224),
(179, 0, 'calendartype_gregorian', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299225),
(180, 0, 'enrol_category', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299225),
(181, 0, 'enrol_category', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299225),
(182, 0, 'enrol_category', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299226),
(183, 0, 'enrol_cohort', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299226),
(184, 0, 'enrol_cohort', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299227),
(185, 0, 'enrol_cohort', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299228),
(186, 0, 'enrol_database', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299228),
(187, 0, 'enrol_database', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299228),
(188, 0, 'enrol_database', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299229),
(189, 0, 'enrol_flatfile', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299229),
(190, 0, 'enrol_flatfile', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299230),
(191, 0, 'enrol_flatfile', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299231),
(192, 0, 'enrol_guest', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299231),
(193, 0, 'enrol_guest', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299231),
(194, 0, 'enrol_guest', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299232),
(195, 0, 'enrol_imsenterprise', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299232),
(196, 0, 'enrol_imsenterprise', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299233),
(197, 0, 'enrol_imsenterprise', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299233),
(198, 0, 'enrol_ldap', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299233),
(199, 0, 'enrol_ldap', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299233),
(200, 0, 'enrol_ldap', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299234),
(201, 0, 'enrol_manual', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299234),
(202, 0, 'enrol_manual', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299234),
(203, 0, 'enrol_manual', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299236),
(204, 0, 'enrol_meta', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299236),
(205, 0, 'enrol_meta', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299236),
(206, 0, 'enrol_meta', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299238),
(207, 0, 'enrol_mnet', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299238),
(208, 0, 'enrol_mnet', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299238),
(209, 0, 'enrol_mnet', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299240),
(210, 0, 'enrol_paypal', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299241),
(211, 0, 'enrol_paypal', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299241),
(212, 0, 'enrol_paypal', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299242),
(213, 0, 'enrol_self', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299242),
(214, 0, 'enrol_self', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299242),
(215, 0, 'enrol_self', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299244),
(216, 0, 'message_airnotifier', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299244),
(217, 0, 'message_airnotifier', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299245),
(218, 0, 'message_airnotifier', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299247),
(219, 0, 'message_email', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299248),
(220, 0, 'message_email', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299248),
(221, 0, 'message_email', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299252),
(222, 0, 'message_jabber', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299252),
(223, 0, 'message_jabber', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299252),
(224, 0, 'message_jabber', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299254),
(225, 0, 'message_popup', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299254),
(226, 0, 'message_popup', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299254),
(227, 0, 'message_popup', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299256),
(228, 0, 'block_activity_modules', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299256),
(229, 0, 'block_activity_modules', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299257),
(230, 0, 'block_activity_modules', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299258),
(231, 0, 'block_admin_bookmarks', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299258),
(232, 0, 'block_admin_bookmarks', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299258),
(233, 0, 'block_admin_bookmarks', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299259),
(234, 0, 'block_badges', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299259),
(235, 0, 'block_badges', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299259),
(236, 0, 'block_badges', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299260),
(237, 0, 'block_blog_menu', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299260),
(238, 0, 'block_blog_menu', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299260),
(239, 0, 'block_blog_menu', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299261),
(240, 0, 'block_blog_recent', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299261),
(241, 0, 'block_blog_recent', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299261),
(242, 0, 'block_blog_recent', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299262),
(243, 0, 'block_blog_tags', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299262),
(244, 0, 'block_blog_tags', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299262),
(245, 0, 'block_blog_tags', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299263),
(246, 0, 'block_calendar_month', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299263),
(247, 0, 'block_calendar_month', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299263),
(248, 0, 'block_calendar_month', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299264),
(249, 0, 'block_calendar_upcoming', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299264),
(250, 0, 'block_calendar_upcoming', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299264),
(251, 0, 'block_calendar_upcoming', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299265),
(252, 0, 'block_comments', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299265),
(253, 0, 'block_comments', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299266),
(254, 0, 'block_comments', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299266),
(255, 0, 'block_community', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299267),
(256, 0, 'block_community', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299267),
(257, 0, 'block_community', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299268),
(258, 0, 'block_completionstatus', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299268),
(259, 0, 'block_completionstatus', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299268),
(260, 0, 'block_completionstatus', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299269),
(261, 0, 'block_course_list', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299269),
(262, 0, 'block_course_list', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299269),
(263, 0, 'block_course_list', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299270),
(264, 0, 'block_course_overview', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299270),
(265, 0, 'block_course_overview', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299271),
(266, 0, 'block_course_overview', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299272),
(267, 0, 'block_course_summary', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299272),
(268, 0, 'block_course_summary', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299272),
(269, 0, 'block_course_summary', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299273),
(270, 0, 'block_feedback', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299273),
(271, 0, 'block_feedback', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299274),
(272, 0, 'block_feedback', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299274),
(273, 0, 'block_glossary_random', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299274),
(274, 0, 'block_glossary_random', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299275),
(275, 0, 'block_glossary_random', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299275),
(276, 0, 'block_html', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299276),
(277, 0, 'block_html', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299276),
(278, 0, 'block_html', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299277),
(279, 0, 'block_login', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299277),
(280, 0, 'block_login', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299277),
(281, 0, 'block_login', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299278),
(282, 0, 'block_mentees', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299278),
(283, 0, 'block_mentees', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299278),
(284, 0, 'block_mentees', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299279),
(285, 0, 'block_messages', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299279),
(286, 0, 'block_messages', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299279),
(287, 0, 'block_messages', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299280),
(288, 0, 'block_mnet_hosts', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299280),
(289, 0, 'block_mnet_hosts', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299281),
(290, 0, 'block_mnet_hosts', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299281),
(291, 0, 'block_myprofile', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299281),
(292, 0, 'block_myprofile', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299282),
(293, 0, 'block_myprofile', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299282),
(294, 0, 'block_navigation', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299282),
(295, 0, 'block_navigation', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299283),
(296, 0, 'block_navigation', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299283),
(297, 0, 'block_news_items', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299284),
(298, 0, 'block_news_items', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299284),
(299, 0, 'block_news_items', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299285),
(300, 0, 'block_online_users', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299285),
(301, 0, 'block_online_users', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299285),
(302, 0, 'block_online_users', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299287),
(303, 0, 'block_participants', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299287),
(304, 0, 'block_participants', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299287),
(305, 0, 'block_participants', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299287),
(306, 0, 'block_private_files', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299288),
(307, 0, 'block_private_files', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299288),
(308, 0, 'block_private_files', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299288),
(309, 0, 'block_quiz_results', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299289),
(310, 0, 'block_quiz_results', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299289),
(311, 0, 'block_quiz_results', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299289),
(312, 0, 'block_recent_activity', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299290),
(313, 0, 'block_recent_activity', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299290),
(314, 0, 'block_recent_activity', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299292),
(315, 0, 'block_rss_client', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299292),
(316, 0, 'block_rss_client', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299292),
(317, 0, 'block_rss_client', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299293),
(318, 0, 'block_search_forums', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299293),
(319, 0, 'block_search_forums', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299294),
(320, 0, 'block_search_forums', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299294),
(321, 0, 'block_section_links', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299294),
(322, 0, 'block_section_links', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299295),
(323, 0, 'block_section_links', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299295),
(324, 0, 'block_selfcompletion', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299295),
(325, 0, 'block_selfcompletion', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299295),
(326, 0, 'block_selfcompletion', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299296),
(327, 0, 'block_settings', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299296),
(328, 0, 'block_settings', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299297),
(329, 0, 'block_settings', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299297),
(330, 0, 'block_site_main_menu', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299297),
(331, 0, 'block_site_main_menu', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299298),
(332, 0, 'block_site_main_menu', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299298),
(333, 0, 'block_social_activities', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299299),
(334, 0, 'block_social_activities', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299299),
(335, 0, 'block_social_activities', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299300),
(336, 0, 'block_tag_flickr', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299300),
(337, 0, 'block_tag_flickr', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299300),
(338, 0, 'block_tag_flickr', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299301),
(339, 0, 'block_tag_youtube', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299301),
(340, 0, 'block_tag_youtube', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299301),
(341, 0, 'block_tag_youtube', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299302),
(342, 0, 'block_tags', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299302),
(343, 0, 'block_tags', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299302),
(344, 0, 'block_tags', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299303),
(345, 0, 'filter_activitynames', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299305),
(346, 0, 'filter_activitynames', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299305),
(347, 0, 'filter_activitynames', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299306),
(348, 0, 'filter_algebra', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299306),
(349, 0, 'filter_algebra', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299306),
(350, 0, 'filter_algebra', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299307),
(351, 0, 'filter_censor', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299307),
(352, 0, 'filter_censor', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299307),
(353, 0, 'filter_censor', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299307),
(354, 0, 'filter_data', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299307),
(355, 0, 'filter_data', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299308),
(356, 0, 'filter_data', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299308),
(357, 0, 'filter_emailprotect', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299308),
(358, 0, 'filter_emailprotect', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299308),
(359, 0, 'filter_emailprotect', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299309),
(360, 0, 'filter_emoticon', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299309),
(361, 0, 'filter_emoticon', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299309),
(362, 0, 'filter_emoticon', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299309),
(363, 0, 'filter_glossary', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299309),
(364, 0, 'filter_glossary', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299309),
(365, 0, 'filter_glossary', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299310),
(366, 0, 'filter_mathjaxloader', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299310),
(367, 0, 'filter_mathjaxloader', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299310),
(368, 0, 'filter_mathjaxloader', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299311),
(369, 0, 'filter_mediaplugin', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299311),
(370, 0, 'filter_mediaplugin', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299311),
(371, 0, 'filter_mediaplugin', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299312),
(372, 0, 'filter_multilang', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299312),
(373, 0, 'filter_multilang', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299312),
(374, 0, 'filter_multilang', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299312),
(375, 0, 'filter_tex', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299312),
(376, 0, 'filter_tex', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299313),
(377, 0, 'filter_tex', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299314),
(378, 0, 'filter_tidy', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299314),
(379, 0, 'filter_tidy', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299314),
(380, 0, 'filter_tidy', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299315),
(381, 0, 'filter_urltolink', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299315),
(382, 0, 'filter_urltolink', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299315),
(383, 0, 'filter_urltolink', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299315),
(384, 0, 'editor_atto', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299315),
(385, 0, 'editor_atto', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299316),
(386, 0, 'editor_atto', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299316),
(387, 0, 'editor_textarea', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299316),
(388, 0, 'editor_textarea', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299316),
(389, 0, 'editor_textarea', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299317),
(390, 0, 'editor_tinymce', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299317),
(391, 0, 'editor_tinymce', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299317),
(392, 0, 'editor_tinymce', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299317),
(393, 0, 'format_singleactivity', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299317),
(394, 0, 'format_singleactivity', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299317),
(395, 0, 'format_singleactivity', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299318),
(396, 0, 'format_social', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299318),
(397, 0, 'format_social', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299318),
(398, 0, 'format_social', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299318),
(399, 0, 'format_topics', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299318),
(400, 0, 'format_topics', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299318),
(401, 0, 'format_topics', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299319),
(402, 0, 'format_weeks', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299319),
(403, 0, 'format_weeks', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299319),
(404, 0, 'format_weeks', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299319),
(405, 0, 'profilefield_checkbox', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299319),
(406, 0, 'profilefield_checkbox', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299320),
(407, 0, 'profilefield_checkbox', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299320),
(408, 0, 'profilefield_datetime', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299320),
(409, 0, 'profilefield_datetime', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299320),
(410, 0, 'profilefield_datetime', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299320),
(411, 0, 'profilefield_menu', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299321),
(412, 0, 'profilefield_menu', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299321),
(413, 0, 'profilefield_menu', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299321),
(414, 0, 'profilefield_text', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299321),
(415, 0, 'profilefield_text', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299321),
(416, 0, 'profilefield_text', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299322),
(417, 0, 'profilefield_textarea', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299322),
(418, 0, 'profilefield_textarea', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299322),
(419, 0, 'profilefield_textarea', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299322),
(420, 0, 'report_backups', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299322),
(421, 0, 'report_backups', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299322),
(422, 0, 'report_backups', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299323),
(423, 0, 'report_completion', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299323),
(424, 0, 'report_completion', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299323),
(425, 0, 'report_completion', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299324),
(426, 0, 'report_configlog', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299324),
(427, 0, 'report_configlog', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299325),
(428, 0, 'report_configlog', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299325),
(429, 0, 'report_courseoverview', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299325),
(430, 0, 'report_courseoverview', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299325),
(431, 0, 'report_courseoverview', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299326),
(432, 0, 'report_eventlist', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299326),
(433, 0, 'report_eventlist', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299326),
(434, 0, 'report_eventlist', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299326),
(435, 0, 'report_log', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299326),
(436, 0, 'report_log', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299327),
(437, 0, 'report_log', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299328),
(438, 0, 'report_loglive', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299328),
(439, 0, 'report_loglive', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299328),
(440, 0, 'report_loglive', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299328),
(441, 0, 'report_outline', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299329),
(442, 0, 'report_outline', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299329),
(443, 0, 'report_outline', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299329),
(444, 0, 'report_participation', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299330),
(445, 0, 'report_participation', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299330),
(446, 0, 'report_participation', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299331),
(447, 0, 'report_performance', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299331),
(448, 0, 'report_performance', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299331),
(449, 0, 'report_performance', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299332),
(450, 0, 'report_progress', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299332),
(451, 0, 'report_progress', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299332),
(452, 0, 'report_progress', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299333),
(453, 0, 'report_questioninstances', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299333),
(454, 0, 'report_questioninstances', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299333),
(455, 0, 'report_questioninstances', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299334),
(456, 0, 'report_security', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299334),
(457, 0, 'report_security', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299334),
(458, 0, 'report_security', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299336),
(459, 0, 'report_stats', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299336),
(460, 0, 'report_stats', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299336),
(461, 0, 'report_stats', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299337),
(462, 0, 'gradeexport_ods', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299337),
(463, 0, 'gradeexport_ods', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299337),
(464, 0, 'gradeexport_ods', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299338),
(465, 0, 'gradeexport_txt', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299339),
(466, 0, 'gradeexport_txt', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299339),
(467, 0, 'gradeexport_txt', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299340),
(468, 0, 'gradeexport_xls', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299340),
(469, 0, 'gradeexport_xls', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299340),
(470, 0, 'gradeexport_xls', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299341),
(471, 0, 'gradeexport_xml', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299341),
(472, 0, 'gradeexport_xml', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299341),
(473, 0, 'gradeexport_xml', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299342),
(474, 0, 'gradeimport_csv', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299342),
(475, 0, 'gradeimport_csv', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299342),
(476, 0, 'gradeimport_csv', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299343),
(477, 0, 'gradeimport_xml', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299343),
(478, 0, 'gradeimport_xml', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299343),
(479, 0, 'gradeimport_xml', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299344),
(480, 0, 'gradereport_grader', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299345);
INSERT INTO `mdl_upgrade_log` (`id`, `type`, `plugin`, `version`, `targetversion`, `info`, `details`, `backtrace`, `userid`, `timemodified`) VALUES
(481, 0, 'gradereport_grader', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299345),
(482, 0, 'gradereport_grader', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299346),
(483, 0, 'gradereport_outcomes', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299346),
(484, 0, 'gradereport_outcomes', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299346),
(485, 0, 'gradereport_outcomes', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299347),
(486, 0, 'gradereport_overview', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299347),
(487, 0, 'gradereport_overview', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299348),
(488, 0, 'gradereport_overview', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299348),
(489, 0, 'gradereport_user', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299349),
(490, 0, 'gradereport_user', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299349),
(491, 0, 'gradereport_user', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299350),
(492, 0, 'gradingform_guide', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299350),
(493, 0, 'gradingform_guide', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299350),
(494, 0, 'gradingform_guide', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299351),
(495, 0, 'gradingform_rubric', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299351),
(496, 0, 'gradingform_rubric', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299351),
(497, 0, 'gradingform_rubric', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299351),
(498, 0, 'mnetservice_enrol', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299352),
(499, 0, 'mnetservice_enrol', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299352),
(500, 0, 'mnetservice_enrol', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299352),
(501, 0, 'webservice_amf', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299352),
(502, 0, 'webservice_amf', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299353),
(503, 0, 'webservice_amf', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299353),
(504, 0, 'webservice_rest', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299353),
(505, 0, 'webservice_rest', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299353),
(506, 0, 'webservice_rest', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299354),
(507, 0, 'webservice_soap', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299354),
(508, 0, 'webservice_soap', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299354),
(509, 0, 'webservice_soap', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299354),
(510, 0, 'webservice_xmlrpc', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299354),
(511, 0, 'webservice_xmlrpc', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299354),
(512, 0, 'webservice_xmlrpc', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299355),
(513, 0, 'repository_alfresco', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299355),
(514, 0, 'repository_alfresco', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299355),
(515, 0, 'repository_alfresco', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299356),
(516, 0, 'repository_areafiles', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299356),
(517, 0, 'repository_areafiles', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299356),
(518, 0, 'repository_areafiles', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299357),
(519, 0, 'repository_boxnet', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299357),
(520, 0, 'repository_boxnet', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299357),
(521, 0, 'repository_boxnet', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299358),
(522, 0, 'repository_coursefiles', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299358),
(523, 0, 'repository_coursefiles', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299359),
(524, 0, 'repository_coursefiles', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299360),
(525, 0, 'repository_dropbox', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299360),
(526, 0, 'repository_dropbox', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299360),
(527, 0, 'repository_dropbox', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299361),
(528, 0, 'repository_equella', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299361),
(529, 0, 'repository_equella', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299361),
(530, 0, 'repository_equella', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299361),
(531, 0, 'repository_filesystem', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299361),
(532, 0, 'repository_filesystem', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299362),
(533, 0, 'repository_filesystem', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299362),
(534, 0, 'repository_flickr', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299362),
(535, 0, 'repository_flickr', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299363),
(536, 0, 'repository_flickr', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299363),
(537, 0, 'repository_flickr_public', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299363),
(538, 0, 'repository_flickr_public', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299363),
(539, 0, 'repository_flickr_public', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299364),
(540, 0, 'repository_googledocs', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299364),
(541, 0, 'repository_googledocs', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299364),
(542, 0, 'repository_googledocs', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299365),
(543, 0, 'repository_local', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299365),
(544, 0, 'repository_local', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299365),
(545, 0, 'repository_local', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299366),
(546, 0, 'repository_merlot', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299366),
(547, 0, 'repository_merlot', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299366),
(548, 0, 'repository_merlot', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299367),
(549, 0, 'repository_picasa', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299367),
(550, 0, 'repository_picasa', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299367),
(551, 0, 'repository_picasa', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299367),
(552, 0, 'repository_recent', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299368),
(553, 0, 'repository_recent', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299368),
(554, 0, 'repository_recent', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299369),
(555, 0, 'repository_s3', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299369),
(556, 0, 'repository_s3', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299369),
(557, 0, 'repository_s3', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299370),
(558, 0, 'repository_skydrive', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299370),
(559, 0, 'repository_skydrive', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299370),
(560, 0, 'repository_skydrive', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299371),
(561, 0, 'repository_upload', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299371),
(562, 0, 'repository_upload', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299371),
(563, 0, 'repository_upload', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299372),
(564, 0, 'repository_url', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299372),
(565, 0, 'repository_url', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299372),
(566, 0, 'repository_url', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299373),
(567, 0, 'repository_user', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299373),
(568, 0, 'repository_user', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299373),
(569, 0, 'repository_user', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299374),
(570, 0, 'repository_webdav', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299374),
(571, 0, 'repository_webdav', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299375),
(572, 0, 'repository_webdav', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299376),
(573, 0, 'repository_wikimedia', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299376),
(574, 0, 'repository_wikimedia', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299376),
(575, 0, 'repository_wikimedia', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299377),
(576, 0, 'repository_youtube', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299377),
(577, 0, 'repository_youtube', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299378),
(578, 0, 'repository_youtube', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299379),
(579, 0, 'portfolio_boxnet', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299379),
(580, 0, 'portfolio_boxnet', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299380),
(581, 0, 'portfolio_boxnet', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299380),
(582, 0, 'portfolio_download', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299381),
(583, 0, 'portfolio_download', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299381),
(584, 0, 'portfolio_download', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299381),
(585, 0, 'portfolio_flickr', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299381),
(586, 0, 'portfolio_flickr', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299382),
(587, 0, 'portfolio_flickr', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299382),
(588, 0, 'portfolio_googledocs', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299382),
(589, 0, 'portfolio_googledocs', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299382),
(590, 0, 'portfolio_googledocs', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299383),
(591, 0, 'portfolio_mahara', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299383),
(592, 0, 'portfolio_mahara', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299383),
(593, 0, 'portfolio_mahara', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299385),
(594, 0, 'portfolio_picasa', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299385),
(595, 0, 'portfolio_picasa', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299385),
(596, 0, 'portfolio_picasa', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299385),
(597, 0, 'qbehaviour_adaptive', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299386),
(598, 0, 'qbehaviour_adaptive', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299386),
(599, 0, 'qbehaviour_adaptive', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299386),
(600, 0, 'qbehaviour_adaptivenopenalty', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299386),
(601, 0, 'qbehaviour_adaptivenopenalty', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299387),
(602, 0, 'qbehaviour_adaptivenopenalty', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299387),
(603, 0, 'qbehaviour_deferredcbm', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299387),
(604, 0, 'qbehaviour_deferredcbm', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299387),
(605, 0, 'qbehaviour_deferredcbm', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299388),
(606, 0, 'qbehaviour_deferredfeedback', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299388),
(607, 0, 'qbehaviour_deferredfeedback', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299388),
(608, 0, 'qbehaviour_deferredfeedback', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299388),
(609, 0, 'qbehaviour_immediatecbm', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299389),
(610, 0, 'qbehaviour_immediatecbm', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299389),
(611, 0, 'qbehaviour_immediatecbm', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299389),
(612, 0, 'qbehaviour_immediatefeedback', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299389),
(613, 0, 'qbehaviour_immediatefeedback', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299390),
(614, 0, 'qbehaviour_immediatefeedback', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299390),
(615, 0, 'qbehaviour_informationitem', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299390),
(616, 0, 'qbehaviour_informationitem', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299390),
(617, 0, 'qbehaviour_informationitem', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299391),
(618, 0, 'qbehaviour_interactive', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299391),
(619, 0, 'qbehaviour_interactive', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299392),
(620, 0, 'qbehaviour_interactive', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299392),
(621, 0, 'qbehaviour_interactivecountback', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299392),
(622, 0, 'qbehaviour_interactivecountback', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299392),
(623, 0, 'qbehaviour_interactivecountback', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299393),
(624, 0, 'qbehaviour_manualgraded', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299393),
(625, 0, 'qbehaviour_manualgraded', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299393),
(626, 0, 'qbehaviour_manualgraded', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299394),
(627, 0, 'qbehaviour_missing', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299394),
(628, 0, 'qbehaviour_missing', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299394),
(629, 0, 'qbehaviour_missing', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299394),
(630, 0, 'qformat_aiken', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299395),
(631, 0, 'qformat_aiken', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299395),
(632, 0, 'qformat_aiken', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299395),
(633, 0, 'qformat_blackboard_six', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299395),
(634, 0, 'qformat_blackboard_six', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299395),
(635, 0, 'qformat_blackboard_six', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299396),
(636, 0, 'qformat_examview', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299396),
(637, 0, 'qformat_examview', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299396),
(638, 0, 'qformat_examview', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299397),
(639, 0, 'qformat_gift', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299397),
(640, 0, 'qformat_gift', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299397),
(641, 0, 'qformat_gift', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299397),
(642, 0, 'qformat_learnwise', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299398),
(643, 0, 'qformat_learnwise', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299398),
(644, 0, 'qformat_learnwise', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299398),
(645, 0, 'qformat_missingword', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299398),
(646, 0, 'qformat_missingword', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299399),
(647, 0, 'qformat_missingword', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299399),
(648, 0, 'qformat_multianswer', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299399),
(649, 0, 'qformat_multianswer', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299399),
(650, 0, 'qformat_multianswer', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299400),
(651, 0, 'qformat_webct', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299400),
(652, 0, 'qformat_webct', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299400),
(653, 0, 'qformat_webct', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299401),
(654, 0, 'qformat_xhtml', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299401),
(655, 0, 'qformat_xhtml', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299401),
(656, 0, 'qformat_xhtml', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299401),
(657, 0, 'qformat_xml', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299401),
(658, 0, 'qformat_xml', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299402),
(659, 0, 'qformat_xml', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299403),
(660, 0, 'tool_assignmentupgrade', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299403),
(661, 0, 'tool_assignmentupgrade', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299403),
(662, 0, 'tool_assignmentupgrade', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299403),
(663, 0, 'tool_availabilityconditions', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299403),
(664, 0, 'tool_availabilityconditions', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299404),
(665, 0, 'tool_availabilityconditions', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299404),
(666, 0, 'tool_behat', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299404),
(667, 0, 'tool_behat', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299405),
(668, 0, 'tool_behat', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299405),
(669, 0, 'tool_capability', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299405),
(670, 0, 'tool_capability', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299405),
(671, 0, 'tool_capability', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299406),
(672, 0, 'tool_customlang', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299406),
(673, 0, 'tool_customlang', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299406),
(674, 0, 'tool_customlang', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299407),
(675, 0, 'tool_dbtransfer', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299407),
(676, 0, 'tool_dbtransfer', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299408),
(677, 0, 'tool_dbtransfer', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299408),
(678, 0, 'tool_generator', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299408),
(679, 0, 'tool_generator', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299408),
(680, 0, 'tool_generator', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299409),
(681, 0, 'tool_health', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299409),
(682, 0, 'tool_health', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299409),
(683, 0, 'tool_health', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299410),
(684, 0, 'tool_innodb', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299410),
(685, 0, 'tool_innodb', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299410),
(686, 0, 'tool_innodb', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299410),
(687, 0, 'tool_installaddon', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299410),
(688, 0, 'tool_installaddon', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299411),
(689, 0, 'tool_installaddon', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299411),
(690, 0, 'tool_langimport', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299411),
(691, 0, 'tool_langimport', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299411),
(692, 0, 'tool_langimport', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299412),
(693, 0, 'tool_log', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299412),
(694, 0, 'tool_log', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299412),
(695, 0, 'tool_log', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299412),
(696, 0, 'tool_multilangupgrade', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299412),
(697, 0, 'tool_multilangupgrade', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299413),
(698, 0, 'tool_multilangupgrade', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299413),
(699, 0, 'tool_phpunit', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299414),
(700, 0, 'tool_phpunit', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299414),
(701, 0, 'tool_phpunit', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299414),
(702, 0, 'tool_profiling', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299414),
(703, 0, 'tool_profiling', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299414),
(704, 0, 'tool_profiling', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299415),
(705, 0, 'tool_replace', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299415),
(706, 0, 'tool_replace', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299415),
(707, 0, 'tool_replace', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299415),
(708, 0, 'tool_spamcleaner', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299415),
(709, 0, 'tool_spamcleaner', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299415),
(710, 0, 'tool_spamcleaner', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299416),
(711, 0, 'tool_task', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299416),
(712, 0, 'tool_task', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299416),
(713, 0, 'tool_task', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299416),
(714, 0, 'tool_timezoneimport', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299416),
(715, 0, 'tool_timezoneimport', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299417),
(716, 0, 'tool_timezoneimport', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299417),
(717, 0, 'tool_unsuproles', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299417),
(718, 0, 'tool_unsuproles', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299417),
(719, 0, 'tool_unsuproles', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299418),
(720, 0, 'tool_uploadcourse', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299418),
(721, 0, 'tool_uploadcourse', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299418),
(722, 0, 'tool_uploadcourse', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299418),
(723, 0, 'tool_uploaduser', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299418),
(724, 0, 'tool_uploaduser', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299418),
(725, 0, 'tool_uploaduser', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299419),
(726, 0, 'tool_xmldb', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299419),
(727, 0, 'tool_xmldb', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299419),
(728, 0, 'tool_xmldb', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299419),
(729, 0, 'cachestore_file', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299420),
(730, 0, 'cachestore_file', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299420),
(731, 0, 'cachestore_file', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299420),
(732, 0, 'cachestore_memcache', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299420),
(733, 0, 'cachestore_memcache', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299420),
(734, 0, 'cachestore_memcache', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299421),
(735, 0, 'cachestore_memcached', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299421),
(736, 0, 'cachestore_memcached', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299421),
(737, 0, 'cachestore_memcached', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299421),
(738, 0, 'cachestore_mongodb', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299421),
(739, 0, 'cachestore_mongodb', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299421),
(740, 0, 'cachestore_mongodb', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299422),
(741, 0, 'cachestore_session', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299422),
(742, 0, 'cachestore_session', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299422),
(743, 0, 'cachestore_session', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299422),
(744, 0, 'cachestore_static', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299422),
(745, 0, 'cachestore_static', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299423),
(746, 0, 'cachestore_static', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299423),
(747, 0, 'cachelock_file', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299423),
(748, 0, 'cachelock_file', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299423),
(749, 0, 'cachelock_file', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299423),
(750, 0, 'theme_base', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299424),
(751, 0, 'theme_base', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299424),
(752, 0, 'theme_base', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299425),
(753, 0, 'theme_bootstrapbase', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299425),
(754, 0, 'theme_bootstrapbase', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299425),
(755, 0, 'theme_bootstrapbase', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299425),
(756, 0, 'theme_canvas', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299425),
(757, 0, 'theme_canvas', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299426),
(758, 0, 'theme_canvas', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299426),
(759, 0, 'theme_clean', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299426),
(760, 0, 'theme_clean', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299426),
(761, 0, 'theme_clean', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299427),
(762, 0, 'theme_more', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299427),
(763, 0, 'theme_more', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299427),
(764, 0, 'theme_more', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299428),
(765, 0, 'assignsubmission_comments', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299428),
(766, 0, 'assignsubmission_comments', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299429),
(767, 0, 'assignsubmission_comments', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299430),
(768, 0, 'assignsubmission_file', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299430),
(769, 0, 'assignsubmission_file', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299430),
(770, 0, 'assignsubmission_file', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299431),
(771, 0, 'assignsubmission_onlinetext', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299431),
(772, 0, 'assignsubmission_onlinetext', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299431),
(773, 0, 'assignsubmission_onlinetext', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299432),
(774, 0, 'assignfeedback_comments', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299432),
(775, 0, 'assignfeedback_comments', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299433),
(776, 0, 'assignfeedback_comments', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299434),
(777, 0, 'assignfeedback_editpdf', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299434),
(778, 0, 'assignfeedback_editpdf', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299435),
(779, 0, 'assignfeedback_editpdf', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299437),
(780, 0, 'assignfeedback_file', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299437),
(781, 0, 'assignfeedback_file', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299437),
(782, 0, 'assignfeedback_file', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299438),
(783, 0, 'assignfeedback_offline', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299438),
(784, 0, 'assignfeedback_offline', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299439),
(785, 0, 'assignfeedback_offline', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299439),
(786, 0, 'assignment_offline', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299439),
(787, 0, 'assignment_offline', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299439),
(788, 0, 'assignment_offline', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299440),
(789, 0, 'assignment_online', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299440),
(790, 0, 'assignment_online', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299440),
(791, 0, 'assignment_online', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299440),
(792, 0, 'assignment_upload', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299440),
(793, 0, 'assignment_upload', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299440),
(794, 0, 'assignment_upload', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299441),
(795, 0, 'assignment_uploadsingle', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299441),
(796, 0, 'assignment_uploadsingle', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299441),
(797, 0, 'assignment_uploadsingle', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299441),
(798, 0, 'booktool_exportimscp', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299441),
(799, 0, 'booktool_exportimscp', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299441),
(800, 0, 'booktool_exportimscp', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299442),
(801, 0, 'booktool_importhtml', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299442),
(802, 0, 'booktool_importhtml', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299442),
(803, 0, 'booktool_importhtml', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299443),
(804, 0, 'booktool_print', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299443),
(805, 0, 'booktool_print', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299444),
(806, 0, 'booktool_print', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299445),
(807, 0, 'datafield_checkbox', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299445),
(808, 0, 'datafield_checkbox', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299445),
(809, 0, 'datafield_checkbox', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299445),
(810, 0, 'datafield_date', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299445),
(811, 0, 'datafield_date', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299445),
(812, 0, 'datafield_date', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299446),
(813, 0, 'datafield_file', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299446),
(814, 0, 'datafield_file', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299446),
(815, 0, 'datafield_file', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299447),
(816, 0, 'datafield_latlong', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299447),
(817, 0, 'datafield_latlong', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299447),
(818, 0, 'datafield_latlong', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299447),
(819, 0, 'datafield_menu', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299447),
(820, 0, 'datafield_menu', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299447),
(821, 0, 'datafield_menu', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299448),
(822, 0, 'datafield_multimenu', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299448),
(823, 0, 'datafield_multimenu', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299448),
(824, 0, 'datafield_multimenu', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299448),
(825, 0, 'datafield_number', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299448),
(826, 0, 'datafield_number', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299449),
(827, 0, 'datafield_number', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299449),
(828, 0, 'datafield_picture', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299449),
(829, 0, 'datafield_picture', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299449),
(830, 0, 'datafield_picture', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299449),
(831, 0, 'datafield_radiobutton', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299449),
(832, 0, 'datafield_radiobutton', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299450),
(833, 0, 'datafield_radiobutton', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299450),
(834, 0, 'datafield_text', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299450),
(835, 0, 'datafield_text', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299450),
(836, 0, 'datafield_text', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299450),
(837, 0, 'datafield_textarea', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299450),
(838, 0, 'datafield_textarea', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299451),
(839, 0, 'datafield_textarea', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299451),
(840, 0, 'datafield_url', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299451),
(841, 0, 'datafield_url', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299451),
(842, 0, 'datafield_url', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299451),
(843, 0, 'datapreset_imagegallery', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299451),
(844, 0, 'datapreset_imagegallery', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299452),
(845, 0, 'datapreset_imagegallery', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299452),
(846, 0, 'quiz_grading', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299452),
(847, 0, 'quiz_grading', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299452),
(848, 0, 'quiz_grading', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299453),
(849, 0, 'quiz_overview', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299453),
(850, 0, 'quiz_overview', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299453),
(851, 0, 'quiz_overview', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299454),
(852, 0, 'quiz_responses', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299454),
(853, 0, 'quiz_responses', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299454),
(854, 0, 'quiz_responses', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299455),
(855, 0, 'quiz_statistics', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299455),
(856, 0, 'quiz_statistics', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299455),
(857, 0, 'quiz_statistics', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299456),
(858, 0, 'quizaccess_delaybetweenattempts', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299456),
(859, 0, 'quizaccess_delaybetweenattempts', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299456),
(860, 0, 'quizaccess_delaybetweenattempts', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299456),
(861, 0, 'quizaccess_ipaddress', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299456),
(862, 0, 'quizaccess_ipaddress', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299457),
(863, 0, 'quizaccess_ipaddress', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299457),
(864, 0, 'quizaccess_numattempts', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299457),
(865, 0, 'quizaccess_numattempts', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299457),
(866, 0, 'quizaccess_numattempts', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299458),
(867, 0, 'quizaccess_openclosedate', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299458),
(868, 0, 'quizaccess_openclosedate', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299458),
(869, 0, 'quizaccess_openclosedate', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299459),
(870, 0, 'quizaccess_password', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299459),
(871, 0, 'quizaccess_password', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299459),
(872, 0, 'quizaccess_password', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299459),
(873, 0, 'quizaccess_safebrowser', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299459),
(874, 0, 'quizaccess_safebrowser', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299459),
(875, 0, 'quizaccess_safebrowser', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299460),
(876, 0, 'quizaccess_securewindow', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299460),
(877, 0, 'quizaccess_securewindow', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299460),
(878, 0, 'quizaccess_securewindow', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299460),
(879, 0, 'quizaccess_timelimit', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299460),
(880, 0, 'quizaccess_timelimit', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299460),
(881, 0, 'quizaccess_timelimit', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299461),
(882, 0, 'scormreport_basic', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299461),
(883, 0, 'scormreport_basic', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299461),
(884, 0, 'scormreport_basic', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299461),
(885, 0, 'scormreport_graphs', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299461),
(886, 0, 'scormreport_graphs', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299462),
(887, 0, 'scormreport_graphs', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299462),
(888, 0, 'scormreport_interactions', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299462),
(889, 0, 'scormreport_interactions', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299462),
(890, 0, 'scormreport_interactions', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299462),
(891, 0, 'scormreport_objectives', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299463),
(892, 0, 'scormreport_objectives', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299463),
(893, 0, 'scormreport_objectives', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299463),
(894, 0, 'workshopform_accumulative', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299463),
(895, 0, 'workshopform_accumulative', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299463),
(896, 0, 'workshopform_accumulative', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299464),
(897, 0, 'workshopform_comments', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299464),
(898, 0, 'workshopform_comments', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299464),
(899, 0, 'workshopform_comments', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299465),
(900, 0, 'workshopform_numerrors', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299465),
(901, 0, 'workshopform_numerrors', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299465),
(902, 0, 'workshopform_numerrors', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299466),
(903, 0, 'workshopform_rubric', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299466),
(904, 0, 'workshopform_rubric', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299466),
(905, 0, 'workshopform_rubric', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299467),
(906, 0, 'workshopallocation_manual', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299467),
(907, 0, 'workshopallocation_manual', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299467),
(908, 0, 'workshopallocation_manual', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299467),
(909, 0, 'workshopallocation_random', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299468),
(910, 0, 'workshopallocation_random', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299468),
(911, 0, 'workshopallocation_random', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299468),
(912, 0, 'workshopallocation_scheduled', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299468),
(913, 0, 'workshopallocation_scheduled', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299469),
(914, 0, 'workshopallocation_scheduled', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299470),
(915, 0, 'workshopeval_best', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299470),
(916, 0, 'workshopeval_best', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299470),
(917, 0, 'workshopeval_best', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299470),
(918, 0, 'atto_accessibilitychecker', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299471),
(919, 0, 'atto_accessibilitychecker', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299471),
(920, 0, 'atto_accessibilitychecker', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299471),
(921, 0, 'atto_accessibilityhelper', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299471),
(922, 0, 'atto_accessibilityhelper', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299471),
(923, 0, 'atto_accessibilityhelper', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299472),
(924, 0, 'atto_align', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299472),
(925, 0, 'atto_align', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299472),
(926, 0, 'atto_align', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299472),
(927, 0, 'atto_backcolor', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299472),
(928, 0, 'atto_backcolor', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299472),
(929, 0, 'atto_backcolor', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299473),
(930, 0, 'atto_bold', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299473),
(931, 0, 'atto_bold', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299473),
(932, 0, 'atto_bold', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299473),
(933, 0, 'atto_charmap', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299473),
(934, 0, 'atto_charmap', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299474),
(935, 0, 'atto_charmap', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299474),
(936, 0, 'atto_clear', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299474),
(937, 0, 'atto_clear', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299474),
(938, 0, 'atto_clear', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299475),
(939, 0, 'atto_collapse', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299475),
(940, 0, 'atto_collapse', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299475),
(941, 0, 'atto_collapse', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299475),
(942, 0, 'atto_emoticon', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299475),
(943, 0, 'atto_emoticon', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299475),
(944, 0, 'atto_emoticon', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299476),
(945, 0, 'atto_equation', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299476);
INSERT INTO `mdl_upgrade_log` (`id`, `type`, `plugin`, `version`, `targetversion`, `info`, `details`, `backtrace`, `userid`, `timemodified`) VALUES
(946, 0, 'atto_equation', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299476),
(947, 0, 'atto_equation', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299476),
(948, 0, 'atto_fontcolor', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299477),
(949, 0, 'atto_fontcolor', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299477),
(950, 0, 'atto_fontcolor', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299477),
(951, 0, 'atto_html', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299477),
(952, 0, 'atto_html', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299477),
(953, 0, 'atto_html', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299478),
(954, 0, 'atto_image', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299478),
(955, 0, 'atto_image', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299478),
(956, 0, 'atto_image', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299478),
(957, 0, 'atto_indent', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299478),
(958, 0, 'atto_indent', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299478),
(959, 0, 'atto_indent', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299479),
(960, 0, 'atto_italic', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299479),
(961, 0, 'atto_italic', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299479),
(962, 0, 'atto_italic', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299479),
(963, 0, 'atto_link', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299479),
(964, 0, 'atto_link', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299479),
(965, 0, 'atto_link', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299480),
(966, 0, 'atto_managefiles', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299480),
(967, 0, 'atto_managefiles', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299480),
(968, 0, 'atto_managefiles', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299481),
(969, 0, 'atto_media', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299481),
(970, 0, 'atto_media', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299481),
(971, 0, 'atto_media', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299481),
(972, 0, 'atto_noautolink', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299481),
(973, 0, 'atto_noautolink', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299482),
(974, 0, 'atto_noautolink', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299482),
(975, 0, 'atto_orderedlist', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299482),
(976, 0, 'atto_orderedlist', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299482),
(977, 0, 'atto_orderedlist', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299482),
(978, 0, 'atto_rtl', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299482),
(979, 0, 'atto_rtl', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299483),
(980, 0, 'atto_rtl', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299483),
(981, 0, 'atto_strike', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299483),
(982, 0, 'atto_strike', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299483),
(983, 0, 'atto_strike', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299484),
(984, 0, 'atto_subscript', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299484),
(985, 0, 'atto_subscript', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299484),
(986, 0, 'atto_subscript', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299484),
(987, 0, 'atto_superscript', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299484),
(988, 0, 'atto_superscript', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299484),
(989, 0, 'atto_superscript', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299485),
(990, 0, 'atto_table', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299485),
(991, 0, 'atto_table', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299485),
(992, 0, 'atto_table', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299485),
(993, 0, 'atto_title', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299485),
(994, 0, 'atto_title', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299485),
(995, 0, 'atto_title', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299486),
(996, 0, 'atto_underline', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299486),
(997, 0, 'atto_underline', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299486),
(998, 0, 'atto_underline', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299486),
(999, 0, 'atto_undo', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299486),
(1000, 0, 'atto_undo', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299486),
(1001, 0, 'atto_undo', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299487),
(1002, 0, 'atto_unorderedlist', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299487),
(1003, 0, 'atto_unorderedlist', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299487),
(1004, 0, 'atto_unorderedlist', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299487),
(1005, 0, 'tinymce_ctrlhelp', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299487),
(1006, 0, 'tinymce_ctrlhelp', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299488),
(1007, 0, 'tinymce_ctrlhelp', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299488),
(1008, 0, 'tinymce_dragmath', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299488),
(1009, 0, 'tinymce_dragmath', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299488),
(1010, 0, 'tinymce_dragmath', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299488),
(1011, 0, 'tinymce_managefiles', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299489),
(1012, 0, 'tinymce_managefiles', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299489),
(1013, 0, 'tinymce_managefiles', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299489),
(1014, 0, 'tinymce_moodleemoticon', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299489),
(1015, 0, 'tinymce_moodleemoticon', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299489),
(1016, 0, 'tinymce_moodleemoticon', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299490),
(1017, 0, 'tinymce_moodleimage', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299490),
(1018, 0, 'tinymce_moodleimage', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299490),
(1019, 0, 'tinymce_moodleimage', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299490),
(1020, 0, 'tinymce_moodlemedia', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299490),
(1021, 0, 'tinymce_moodlemedia', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299491),
(1022, 0, 'tinymce_moodlemedia', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299491),
(1023, 0, 'tinymce_moodlenolink', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299491),
(1024, 0, 'tinymce_moodlenolink', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299491),
(1025, 0, 'tinymce_moodlenolink', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299492),
(1026, 0, 'tinymce_pdw', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299492),
(1027, 0, 'tinymce_pdw', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299492),
(1028, 0, 'tinymce_pdw', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299492),
(1029, 0, 'tinymce_spellchecker', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299492),
(1030, 0, 'tinymce_spellchecker', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299492),
(1031, 0, 'tinymce_spellchecker', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299493),
(1032, 0, 'tinymce_wrap', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299493),
(1033, 0, 'tinymce_wrap', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299493),
(1034, 0, 'tinymce_wrap', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299493),
(1035, 0, 'logstore_database', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299493),
(1036, 0, 'logstore_database', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299494),
(1037, 0, 'logstore_database', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299494),
(1038, 0, 'logstore_legacy', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299494),
(1039, 0, 'logstore_legacy', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299494),
(1040, 0, 'logstore_legacy', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299495),
(1041, 0, 'logstore_standard', NULL, '2014051200', 'Starting plugin installation', NULL, '', 0, 1422299495),
(1042, 0, 'logstore_standard', '2014051200', '2014051200', 'Upgrade savepoint reached', NULL, '', 0, 1422299495),
(1043, 0, 'logstore_standard', '2014051200', '2014051200', 'Plugin installed', NULL, '', 0, 1422299495),
(1044, 0, 'local_mobile', NULL, '2014060412', 'Starting plugin installation', NULL, '', 2, 1429716058),
(1045, 0, 'local_mobile', '2014060412', '2014060412', 'Upgrade savepoint reached', NULL, '', 2, 1429716058),
(1046, 0, 'local_mobile', '2014060412', '2014060412', 'Plugin installed', NULL, '', 2, 1429716059),
(1047, 0, 'local_wstemplate', NULL, '2015040412', 'Starting plugin installation', NULL, '', 2, 1429895247),
(1048, 0, 'local_wstemplate', '2015040412', '2015040412', 'Upgrade savepoint reached', NULL, '', 2, 1429895247),
(1049, 0, 'local_wstemplate', '2015040412', '2015040412', 'Plugin installed', NULL, '', 2, 1429895249),
(1050, 0, 'local_wstemplate', '2015040412', '2015040512', 'Starting plugin upgrade', NULL, '', 2, 1429897560),
(1051, 0, 'local_wstemplate', '2015040512', '2015040512', 'Upgrade savepoint reached', NULL, '', 2, 1429897560),
(1052, 0, 'local_wstemplate', '2015040512', '2015040512', 'Plugin upgraded', NULL, '', 2, 1429897560),
(1053, 0, 'local_wstemplate', '2015040512', '2015040612', 'Starting plugin upgrade', NULL, '', 2, 1429898230),
(1054, 0, 'local_wstemplate', '2015040612', '2015040612', 'Upgrade savepoint reached', NULL, '', 2, 1429898230),
(1055, 0, 'local_wstemplate', '2015040612', '2015040612', 'Plugin upgraded', NULL, '', 2, 1429898230),
(1056, 0, 'local_wstemplate', '2015040612', '2015040712', 'Starting plugin upgrade', NULL, '', 2, 1430148072),
(1057, 0, 'local_wstemplate', '2015040712', '2015040712', 'Upgrade savepoint reached', NULL, '', 2, 1430148072),
(1058, 0, 'local_wstemplate', '2015040712', '2015040712', 'Plugin upgraded', NULL, '', 2, 1430148073),
(1059, 0, 'local_wstemplate', '2015040712', '2015040715', 'Starting plugin upgrade', NULL, '', 2, 1430148393),
(1060, 0, 'local_wstemplate', '2015040715', '2015040715', 'Upgrade savepoint reached', NULL, '', 2, 1430148393),
(1061, 0, 'local_wstemplate', '2015040715', '2015040715', 'Plugin upgraded', NULL, '', 2, 1430148393),
(1062, 0, 'local_wstemplate', '2015040715', '2015040716', 'Starting plugin upgrade', NULL, '', 2, 1430148527),
(1063, 0, 'local_wstemplate', '2015040716', '2015040716', 'Upgrade savepoint reached', NULL, '', 2, 1430148527),
(1064, 0, 'local_wstemplate', '2015040716', '2015040716', 'Plugin upgraded', NULL, '', 2, 1430148527),
(1065, 0, 'local_wstemplate', '2015040716', '2015040717', 'Starting plugin upgrade', NULL, '', 2, 1430148671),
(1066, 0, 'local_wstemplate', '2015040717', '2015040717', 'Upgrade savepoint reached', NULL, '', 2, 1430148672),
(1067, 0, 'local_wstemplate', '2015040717', '2015040717', 'Plugin upgraded', NULL, '', 2, 1430148672),
(1068, 0, 'local_wstemplate', '2015040717', '2015040718', 'Starting plugin upgrade', NULL, '', 2, 1430149527),
(1069, 0, 'local_wstemplate', '2015040718', '2015040718', 'Upgrade savepoint reached', NULL, '', 2, 1430149527),
(1070, 0, 'local_wstemplate', '2015040718', '2015040718', 'Plugin upgraded', NULL, '', 2, 1430149527),
(1071, 0, 'local_wstemplate', '2015040718', '2015040720', 'Starting plugin upgrade', NULL, '', 2, 1430149942),
(1072, 0, 'local_wstemplate', '2015040720', '2015040720', 'Upgrade savepoint reached', NULL, '', 2, 1430149942),
(1073, 0, 'local_wstemplate', '2015040720', '2015040720', 'Plugin upgraded', NULL, '', 2, 1430149942),
(1074, 0, 'local_wstemplate', '2015040720', '2015040721', 'Starting plugin upgrade', NULL, '', 2, 1430150461),
(1075, 0, 'local_wstemplate', '2015040721', '2015040721', 'Upgrade savepoint reached', NULL, '', 2, 1430150461),
(1076, 0, 'local_wstemplate', '2015040721', '2015040721', 'Plugin upgraded', NULL, '', 2, 1430150461),
(1077, 0, 'local_wstemplate', '2015040721', '2015040722', 'Starting plugin upgrade', NULL, '', 2, 1430151652),
(1078, 0, 'local_wstemplate', '2015040722', '2015040722', 'Upgrade savepoint reached', NULL, '', 2, 1430151652),
(1079, 0, 'local_wstemplate', '2015040722', '2015040722', 'Plugin upgraded', NULL, '', 2, 1430151652),
(1080, 0, 'local_wstemplate', '2015040722', '2015040723', 'Starting plugin upgrade', NULL, '', 2, 1430151908),
(1081, 0, 'local_wstemplate', '2015040723', '2015040723', 'Upgrade savepoint reached', NULL, '', 2, 1430151908),
(1082, 0, 'local_wstemplate', '2015040723', '2015040723', 'Plugin upgraded', NULL, '', 2, 1430151908),
(1083, 0, 'local_wstemplate', '2015040723', '2015040724', 'Starting plugin upgrade', NULL, '', 2, 1430152160),
(1084, 0, 'local_wstemplate', '2015040724', '2015040724', 'Upgrade savepoint reached', NULL, '', 2, 1430152160),
(1085, 0, 'local_wstemplate', '2015040724', '2015040724', 'Plugin upgraded', NULL, '', 2, 1430152160),
(1086, 0, 'local_wstemplate', '2015040724', '2015040725', 'Starting plugin upgrade', NULL, '', 2, 1430152332),
(1087, 0, 'local_wstemplate', '2015040725', '2015040725', 'Upgrade savepoint reached', NULL, '', 2, 1430152332),
(1088, 0, 'local_wstemplate', '2015040725', '2015040725', 'Plugin upgraded', NULL, '', 2, 1430152332),
(1089, 0, 'local_wstemplate', '2015040725', '2015040726', 'Starting plugin upgrade', NULL, '', 2, 1430152924),
(1090, 0, 'local_wstemplate', '2015040726', '2015040726', 'Upgrade savepoint reached', NULL, '', 2, 1430152924),
(1091, 0, 'local_wstemplate', '2015040726', '2015040726', 'Plugin upgraded', NULL, '', 2, 1430152924),
(1092, 0, 'local_wstemplate', '2015040726', '2015040727', 'Starting plugin upgrade', NULL, '', 2, 1430153065),
(1093, 0, 'local_wstemplate', '2015040727', '2015040727', 'Upgrade savepoint reached', NULL, '', 2, 1430153065),
(1094, 0, 'local_wstemplate', '2015040727', '2015040727', 'Plugin upgraded', NULL, '', 2, 1430153065),
(1095, 0, 'local_wstemplate', '2015040727', '2015040728', 'Starting plugin upgrade', NULL, '', 2, 1430153775),
(1096, 0, 'local_wstemplate', '2015040728', '2015040728', 'Upgrade savepoint reached', NULL, '', 2, 1430153775),
(1097, 0, 'local_wstemplate', '2015040728', '2015040728', 'Plugin upgraded', NULL, '', 2, 1430153775),
(1098, 0, 'local_wstemplate', '2015040728', '2015040729', 'Starting plugin upgrade', NULL, '', 2, 1430154279),
(1099, 0, 'local_wstemplate', '2015040729', '2015040729', 'Upgrade savepoint reached', NULL, '', 2, 1430154279),
(1100, 0, 'local_wstemplate', '2015040729', '2015040729', 'Plugin upgraded', NULL, '', 2, 1430154280),
(1101, 0, 'local_wstemplate', '2015040729', '2015040730', 'Starting plugin upgrade', NULL, '', 2, 1430154447),
(1102, 0, 'local_wstemplate', '2015040730', '2015040730', 'Upgrade savepoint reached', NULL, '', 2, 1430154447),
(1103, 0, 'local_wstemplate', '2015040730', '2015040730', 'Plugin upgraded', NULL, '', 2, 1430154447),
(1104, 0, 'local_wstemplate', '2015040730', '2015040731', 'Starting plugin upgrade', NULL, '', 2, 1430154670),
(1105, 0, 'local_wstemplate', '2015040731', '2015040731', 'Upgrade savepoint reached', NULL, '', 2, 1430154670),
(1106, 0, 'local_wstemplate', '2015040731', '2015040731', 'Plugin upgraded', NULL, '', 2, 1430154670),
(1107, 0, 'local_wstemplate', '2015040731', '2015040732', 'Starting plugin upgrade', NULL, '', 2, 1430154949),
(1108, 0, 'local_wstemplate', '2015040732', '2015040732', 'Upgrade savepoint reached', NULL, '', 2, 1430154949),
(1109, 0, 'local_wstemplate', '2015040732', '2015040732', 'Plugin upgraded', NULL, '', 2, 1430154949),
(1110, 0, 'local_wstemplate', '2015040732', '2015040733', 'Starting plugin upgrade', NULL, '', 2, 1430155545),
(1111, 0, 'local_wstemplate', '2015040733', '2015040733', 'Upgrade savepoint reached', NULL, '', 2, 1430155545),
(1112, 0, 'local_wstemplate', '2015040733', '2015040733', 'Plugin upgraded', NULL, '', 2, 1430155545),
(1113, 0, 'local_wstemplate', '2015040733', '2015040734', 'Starting plugin upgrade', NULL, '', 2, 1430155814),
(1114, 0, 'local_wstemplate', '2015040734', '2015040734', 'Upgrade savepoint reached', NULL, '', 2, 1430155814),
(1115, 0, 'local_wstemplate', '2015040734', '2015040734', 'Plugin upgraded', NULL, '', 2, 1430155814),
(1116, 0, 'local_wstemplate', '2015040734', '2015040735', 'Starting plugin upgrade', NULL, '', 2, 1430156100),
(1117, 0, 'local_wstemplate', '2015040735', '2015040735', 'Upgrade savepoint reached', NULL, '', 2, 1430156100),
(1118, 0, 'local_wstemplate', '2015040735', '2015040735', 'Plugin upgraded', NULL, '', 2, 1430156100),
(1119, 0, 'local_wstemplate', '2015040735', '2015040736', 'Starting plugin upgrade', NULL, '', 2, 1430236534),
(1120, 0, 'local_wstemplate', '2015040736', '2015040736', 'Upgrade savepoint reached', NULL, '', 2, 1430236534),
(1121, 0, 'local_wstemplate', '2015040736', '2015040736', 'Plugin upgraded', NULL, '', 2, 1430236535),
(1122, 0, 'local_wstemplate', '2015040736', '2015040737', 'Starting plugin upgrade', NULL, '', 2, 1430237189),
(1123, 0, 'local_wstemplate', '2015040737', '2015040737', 'Upgrade savepoint reached', NULL, '', 2, 1430237189),
(1124, 0, 'local_wstemplate', '2015040737', '2015040737', 'Plugin upgraded', NULL, '', 2, 1430237189),
(1125, 0, 'local_wstemplate', '2015040737', '2015040738', 'Starting plugin upgrade', NULL, '', 2, 1430237805),
(1126, 0, 'local_wstemplate', '2015040738', '2015040738', 'Upgrade savepoint reached', NULL, '', 2, 1430237805),
(1127, 0, 'local_wstemplate', '2015040738', '2015040738', 'Plugin upgraded', NULL, '', 2, 1430237805),
(1128, 0, 'local_wstemplate', '2015040738', '2015040739', 'Starting plugin upgrade', NULL, '', 2, 1430238124),
(1129, 0, 'local_wstemplate', '2015040739', '2015040739', 'Upgrade savepoint reached', NULL, '', 2, 1430238124),
(1130, 0, 'local_wstemplate', '2015040739', '2015040739', 'Plugin upgraded', NULL, '', 2, 1430238124),
(1131, 0, 'local_wstemplate', '2015040739', '2015040740', 'Starting plugin upgrade', NULL, '', 2, 1430238559),
(1132, 0, 'local_wstemplate', '2015040740', '2015040740', 'Upgrade savepoint reached', NULL, '', 2, 1430238559),
(1133, 0, 'local_wstemplate', '2015040740', '2015040740', 'Plugin upgraded', NULL, '', 2, 1430238559),
(1134, 0, 'local_wstemplate', '2015040740', '2015040741', 'Starting plugin upgrade', NULL, '', 2, 1430238983),
(1135, 0, 'local_wstemplate', '2015040741', '2015040741', 'Upgrade savepoint reached', NULL, '', 2, 1430238983),
(1136, 0, 'local_wstemplate', '2015040741', '2015040741', 'Plugin upgraded', NULL, '', 2, 1430238983),
(1137, 0, 'local_wstemplate', '2015040741', '2015040742', 'Starting plugin upgrade', NULL, '', 2, 1430239159),
(1138, 0, 'local_wstemplate', '2015040742', '2015040742', 'Upgrade savepoint reached', NULL, '', 2, 1430239159),
(1139, 0, 'local_wstemplate', '2015040742', '2015040742', 'Plugin upgraded', NULL, '', 2, 1430239159),
(1140, 0, 'local_wstemplate', '2015040742', '2015040743', 'Starting plugin upgrade', NULL, '', 2, 1430239423),
(1141, 0, 'local_wstemplate', '2015040743', '2015040743', 'Upgrade savepoint reached', NULL, '', 2, 1430239423),
(1142, 0, 'local_wstemplate', '2015040743', '2015040743', 'Plugin upgraded', NULL, '', 2, 1430239423),
(1143, 0, 'local_mobile', '2014060412', '2014060413', 'Starting plugin upgrade', NULL, '', 2, 1431452822),
(1144, 0, 'local_mobile', '2014060413', '2014060413', 'Upgrade savepoint reached', NULL, '', 2, 1431452822),
(1145, 0, 'local_mobile', '2014060413', '2014060413', 'Plugin upgraded', NULL, '', 2, 1431452822),
(1146, 0, 'local_mobile', '2014060413', '2014060414', 'Starting plugin upgrade', NULL, '', 2, 1432309577),
(1147, 0, 'local_mobile', '2014060414', '2014060414', 'Upgrade savepoint reached', NULL, '', 2, 1432309578),
(1148, 2, 'core', '2014051200', '2014051200', 'Exception: dml_write_exception', 'Error al escribir a la base de datos', '* line 446 of /lib/dml/moodle_database.php: dml_write_exception thrown\n* line 1098 of /lib/dml/mysqli_native_moodle_database.php: call to moodle_database->query_end()\n* line 1144 of /lib/dml/mysqli_native_moodle_database.php: call to mysqli_native_moodle_database->insert_record_raw()\n* line 1062 of /lib/upgradelib.php: call to mysqli_native_moodle_database->insert_record()\n* line 549 of /lib/upgradelib.php: call to external_update_descriptions()\n* line 1615 of /lib/upgradelib.php: call to upgrade_plugins()\n* line 432 of /admin/index.php: call to upgrade_noncore()\n', 2, 1432309578),
(1149, 0, 'local_mobile', '2014060414', '2014060415', 'Starting plugin upgrade', NULL, '', 2, 1432309908),
(1150, 0, 'local_mobile', '2014060415', '2014060415', 'Upgrade savepoint reached', NULL, '', 2, 1432309908),
(1151, 0, 'local_mobile', '2014060415', '2014060415', 'Plugin upgraded', NULL, '', 2, 1432309908),
(1152, 0, 'local_mobile', '2014060415', '2015090415', 'Starting plugin upgrade', NULL, '', 2, 1443541780),
(1153, 0, 'local_mobile', '2015090415', '2015090415', 'Upgrade savepoint reached', NULL, '', 2, 1443541780),
(1154, 0, 'local_mobile', '2015090415', '2015090415', 'Plugin upgraded', NULL, '', 2, 1443541780),
(1155, 0, 'local_mobile', '2015090415', '2015100215', 'Starting plugin upgrade', NULL, '', 2, 1443806289),
(1156, 0, 'local_mobile', '2015100215', '2015100215', 'Upgrade savepoint reached', NULL, '', 2, 1443806290),
(1157, 0, 'local_mobile', '2015100215', '2015100215', 'Plugin upgraded', NULL, '', 2, 1443806290),
(1158, 0, 'local_mobile', '2015100215', '2015100510', 'Starting plugin upgrade', NULL, '', 2, 1444059179),
(1159, 0, 'local_mobile', '2015100510', '2015100510', 'Upgrade savepoint reached', NULL, '', 2, 1444059180),
(1160, 0, 'local_mobile', '2015100510', '2015100510', 'Plugin upgraded', NULL, '', 2, 1444059180),
(1161, 0, 'local_mobile', '2015100510', '2015100520', 'Starting plugin upgrade', NULL, '', 2, 1444095001),
(1162, 0, 'local_mobile', '2015100520', '2015100520', 'Upgrade savepoint reached', NULL, '', 2, 1444095001),
(1163, 0, 'local_mobile', '2015100520', '2015100520', 'Plugin upgraded', NULL, '', 2, 1444095001),
(1164, 0, 'local_mobile', '2015100520', '2015101020', 'Starting plugin upgrade', NULL, '', 2, 1444756843),
(1165, 0, 'local_mobile', '2015101020', '2015101020', 'Upgrade savepoint reached', NULL, '', 2, 1444756843),
(1166, 2, 'core', '2014051200', '2014051200', 'Exception: downgrade_exception', 'No se puede degradar local_mobile de 2015101020 a 2015101012.', '* line 561 of /lib/upgradelib.php: downgrade_exception thrown\n* line 1615 of /lib/upgradelib.php: call to upgrade_plugins()\n* line 432 of /admin/index.php: call to upgrade_noncore()\n', 2, 1444757247),
(1167, 2, 'core', '2014051200', '2014051200', 'Exception: downgrade_exception', 'No se puede degradar local_mobile de 2015101020 a 2015101012.', '* line 561 of /lib/upgradelib.php: downgrade_exception thrown\n* line 1615 of /lib/upgradelib.php: call to upgrade_plugins()\n* line 432 of /admin/index.php: call to upgrade_noncore()\n', 2, 1444757274),
(1168, 2, 'core', '2014051200', '2014051200', 'Exception: downgrade_exception', 'No se puede degradar local_mobile de 2015101020 a 2015101012.', '* line 561 of /lib/upgradelib.php: downgrade_exception thrown\n* line 1615 of /lib/upgradelib.php: call to upgrade_plugins()\n* line 432 of /admin/index.php: call to upgrade_noncore()\n', 2, 1444757293),
(1169, 0, 'local_mobile', '2015101020', '2015101030', 'Starting plugin upgrade', NULL, '', 2, 1444757468),
(1170, 0, 'local_mobile', '2015101030', '2015101030', 'Upgrade savepoint reached', NULL, '', 2, 1444757468),
(1171, 0, 'local_mobile', '2015101030', '2015101030', 'Plugin upgraded', NULL, '', 2, 1444757468),
(1172, 0, 'local_wstemplate', '2015040743', '2015100743', 'Starting plugin upgrade', NULL, '', 2, 1444765736),
(1173, 0, 'local_wstemplate', '2015100743', '2015100743', 'Upgrade savepoint reached', NULL, '', 2, 1444765736),
(1174, 0, 'local_wstemplate', '2015100743', '2015100743', 'Plugin upgraded', NULL, '', 2, 1444765736),
(1175, 0, 'local_wstemplate', '2015100743', '2015100843', 'Starting plugin upgrade', NULL, '', 2, 1444766208),
(1176, 0, 'local_wstemplate', '2015100843', '2015100843', 'Upgrade savepoint reached', NULL, '', 2, 1444766208),
(1177, 0, 'local_wstemplate', '2015100843', '2015100843', 'Plugin upgraded', NULL, '', 2, 1444766208),
(1178, 0, 'local_mobile', '2015101030', '2015101130', 'Starting plugin upgrade', NULL, '', 2, 1444871556),
(1179, 0, 'local_mobile', '2015101130', '2015101130', 'Upgrade savepoint reached', NULL, '', 2, 1444871556),
(1180, 0, 'local_mobile', '2015101130', '2015101130', 'Plugin upgraded', NULL, '', 2, 1444871556),
(1181, 0, 'local_wstemplate', '2015100843', '2015101143', 'Starting plugin upgrade', NULL, '', 2, 1444871556),
(1182, 0, 'local_wstemplate', '2015101143', '2015101143', 'Upgrade savepoint reached', NULL, '', 2, 1444871556),
(1183, 0, 'local_wstemplate', '2015101143', '2015101143', 'Plugin upgraded', NULL, '', 2, 1444871556),
(1184, 0, 'local_mobile', '2015101130', '2015101230', 'Starting plugin upgrade', NULL, '', 2, 1444873099),
(1185, 0, 'local_mobile', '2015101230', '2015101230', 'Upgrade savepoint reached', NULL, '', 2, 1444873099),
(1186, 0, 'local_mobile', '2015101230', '2015101230', 'Plugin upgraded', NULL, '', 2, 1444873099),
(1187, 0, 'local_wstemplate', '2015101143', '2015101243', 'Starting plugin upgrade', NULL, '', 2, 1444873825),
(1188, 0, 'local_wstemplate', '2015101243', '2015101243', 'Upgrade savepoint reached', NULL, '', 2, 1444873825),
(1189, 0, 'local_wstemplate', '2015101243', '2015101243', 'Plugin upgraded', NULL, '', 2, 1444873825),
(1190, 0, 'local_mobile', '2015101230', '2015101330', 'Starting plugin upgrade', NULL, '', 2, 1444874097),
(1191, 0, 'local_mobile', '2015101330', '2015101330', 'Upgrade savepoint reached', NULL, '', 2, 1444874097),
(1192, 0, 'local_mobile', '2015101330', '2015101330', 'Plugin upgraded', NULL, '', 2, 1444874097),
(1193, 0, 'local_mobile', '2015101330', '2015101430', 'Starting plugin upgrade', NULL, '', 2, 1445887621),
(1194, 0, 'local_mobile', '2015101430', '2015101430', 'Upgrade savepoint reached', NULL, '', 2, 1445887621),
(1195, 0, 'local_mobile', '2015101430', '2015101430', 'Plugin upgraded', NULL, '', 2, 1445887621);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_url`
--

CREATE TABLE IF NOT EXISTS `mdl_url` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `externalurl` longtext NOT NULL,
  `display` smallint(4) NOT NULL DEFAULT '0',
  `displayoptions` longtext,
  `parameters` longtext,
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_url_cou_ix` (`course`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='each record is one url resource' AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `mdl_url`
--

INSERT INTO `mdl_url` (`id`, `course`, `name`, `intro`, `introformat`, `externalurl`, `display`, `displayoptions`, `parameters`, `timemodified`) VALUES
(1, 8, 'Cisco', 'Pagina de cisco', 1, 'http://www.cisco.com', 0, 'a:1:{s:10:"printintro";i:1;}', 'a:0:{}', 1431454223),
(2, 9, 'face', 'facebook ', 1, 'http://www.youtube.com/v/UKY3scPIMd8#https://youtube.com/devicesupport', 0, 'a:1:{s:10:"printintro";i:1;}', 'a:0:{}', 1431454608);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_user`
--

CREATE TABLE IF NOT EXISTS `mdl_user` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `auth` varchar(20) NOT NULL DEFAULT 'manual',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `policyagreed` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `mnethostid` bigint(10) NOT NULL DEFAULT '0',
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `idnumber` varchar(255) NOT NULL DEFAULT '',
  `firstname` varchar(100) NOT NULL DEFAULT '',
  `lastname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `emailstop` tinyint(1) NOT NULL DEFAULT '0',
  `icq` varchar(15) NOT NULL DEFAULT '',
  `skype` varchar(50) NOT NULL DEFAULT '',
  `yahoo` varchar(50) NOT NULL DEFAULT '',
  `aim` varchar(50) NOT NULL DEFAULT '',
  `msn` varchar(50) NOT NULL DEFAULT '',
  `phone1` varchar(20) NOT NULL DEFAULT '',
  `phone2` varchar(20) NOT NULL DEFAULT '',
  `institution` varchar(255) NOT NULL DEFAULT '',
  `department` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(120) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `lang` varchar(30) NOT NULL DEFAULT 'en',
  `calendartype` varchar(30) NOT NULL DEFAULT 'gregorian',
  `theme` varchar(50) NOT NULL DEFAULT '',
  `timezone` varchar(100) NOT NULL DEFAULT '99',
  `firstaccess` bigint(10) NOT NULL DEFAULT '0',
  `lastaccess` bigint(10) NOT NULL DEFAULT '0',
  `lastlogin` bigint(10) NOT NULL DEFAULT '0',
  `currentlogin` bigint(10) NOT NULL DEFAULT '0',
  `lastip` varchar(45) NOT NULL DEFAULT '',
  `secret` varchar(15) NOT NULL DEFAULT '',
  `picture` bigint(10) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` longtext,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '1',
  `mailformat` tinyint(1) NOT NULL DEFAULT '1',
  `maildigest` tinyint(1) NOT NULL DEFAULT '0',
  `maildisplay` tinyint(2) NOT NULL DEFAULT '2',
  `autosubscribe` tinyint(1) NOT NULL DEFAULT '1',
  `trackforums` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `trustbitmask` bigint(10) NOT NULL DEFAULT '0',
  `imagealt` varchar(255) DEFAULT NULL,
  `lastnamephonetic` varchar(255) DEFAULT NULL,
  `firstnamephonetic` varchar(255) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `alternatename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_user_mneuse_uix` (`mnethostid`,`username`),
  KEY `mdl_user_del_ix` (`deleted`),
  KEY `mdl_user_con_ix` (`confirmed`),
  KEY `mdl_user_fir_ix` (`firstname`),
  KEY `mdl_user_las_ix` (`lastname`),
  KEY `mdl_user_cit_ix` (`city`),
  KEY `mdl_user_cou_ix` (`country`),
  KEY `mdl_user_las2_ix` (`lastaccess`),
  KEY `mdl_user_ema_ix` (`email`),
  KEY `mdl_user_aut_ix` (`auth`),
  KEY `mdl_user_idn_ix` (`idnumber`),
  KEY `mdl_user_fir2_ix` (`firstnamephonetic`),
  KEY `mdl_user_las3_ix` (`lastnamephonetic`),
  KEY `mdl_user_mid_ix` (`middlename`),
  KEY `mdl_user_alt_ix` (`alternatename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='One record for each person' AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `mdl_user`
--

INSERT INTO `mdl_user` (`id`, `auth`, `confirmed`, `policyagreed`, `deleted`, `suspended`, `mnethostid`, `username`, `password`, `idnumber`, `firstname`, `lastname`, `email`, `emailstop`, `icq`, `skype`, `yahoo`, `aim`, `msn`, `phone1`, `phone2`, `institution`, `department`, `address`, `city`, `country`, `lang`, `calendartype`, `theme`, `timezone`, `firstaccess`, `lastaccess`, `lastlogin`, `currentlogin`, `lastip`, `secret`, `picture`, `url`, `description`, `descriptionformat`, `mailformat`, `maildigest`, `maildisplay`, `autosubscribe`, `trackforums`, `timecreated`, `timemodified`, `trustbitmask`, `imagealt`, `lastnamephonetic`, `firstnamephonetic`, `middlename`, `alternatename`) VALUES
(1, 'manual', 1, 0, 0, 0, 1, 'guest', '1234', '', 'Guest user', ' ', 'root@localhost', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', '', 0, '', 'This user is a special user that allows read-only access to some courses.', 1, 1, 0, 2, 1, 0, 0, 1422298882, 0, NULL, NULL, NULL, NULL, NULL),
(2, 'manual', 1, 0, 0, 0, 1, 'admin', '$2y$10$I1LdwDB/Q1hpLeQfFwBguOJmc/nflldGiiBO1KL5r9hg4pokOv8AK', '', 'Admin', 'User', 'admin_count@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'es_mx', 'gregorian', '', '99', 1422299536, 1446831392, 1445959645, 1446831073, '189.215.54.249', '', 17, '', '', 1, 1, 0, 1, 1, 0, 0, 1429210825, 0, '', '', '', '', ''),
(3, 'manual', 1, 0, 0, 0, 1, 'nayn', '$2y$10$IRy3e4UXEsoGOckH7nSyf.x4SAz4gF6cq.jbYYbw/kVt3/ibZl4C2', '', 'Nayn', 'Ek', 'naynkc15@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'es_mx', 'gregorian', '', '99', 1422465641, 1446868847, 1446839207, 1446868291, '189.221.39.231', '', 63, '', '', 1, 1, 0, 2, 1, 0, 1422385183, 1432644375, 0, '', '', '', '', ''),
(4, 'manual', 1, 0, 1, 0, 1, 'franciscosalas@gmail.com.1428941698', '$2y$10$nULHxauoK.y2OqWX0JE.j.hPku4JipqAegUT67tGcsbCUEEzT8Zg2', '', 'Francisco', 'Salas', '746b1028212d8961bff8c38fa384a67f', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'es_mx', 'gregorian', '', '99', 1425926392, 1425926392, 0, 1425926392, '0:0:0:0:0:0:0:1', '', 0, '', '', 1, 1, 0, 2, 1, 0, 1425925869, 1428941698, 0, '', '', '', '', ''),
(5, 'manual', 1, 0, 1, 0, 1, 'julian@gmail.com.1428941706', '$2y$10$NGscFLqJoFtsCtkARhY41OpRvqFXqD8rY6mXnvnkZd6xmS3GRiBu6', '', 'Julian', 'Martinez', '92477f4079129413d9ff9aec6ade6c5e', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'es_mx', 'gregorian', '', '99', 0, 0, 0, 0, '', '', 0, '', '', 1, 1, 0, 2, 1, 0, 1425926774, 1428941706, 0, '', '', '', '', ''),
(6, 'manual', 1, 0, 1, 0, 1, 'franciscosalas@aol.com.1443111600', '$2y$10$858GXb6sa10m2DxR4f4Te.Z4KxsXu6mIlFMsdqoe7lU/rQHMVNvTW', '', 'Francisco', 'Salas', '117735823fadae51db091c7d63e60eb0', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'es_mx', 'gregorian', '', '99', 1428941982, 1431455233, 1429813903, 1431455233, '187.185.155.234', '', 0, '', '', 1, 1, 0, 2, 1, 0, 1428941794, 1443111600, 0, '', '', '', '', ''),
(7, 'manual', 1, 0, 1, 0, 1, 'fernandop@aol.com.1443111614', '$2y$10$VZINc/aVtGxCXE.vYnyAc.leRS/Uw8ux8CRYqNOzgiW87LCSFnt2m', '', 'Fernando', 'Peréz', 'cebdd715d4ecaafee8f147c2e85e0754', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'es_mx', 'gregorian', '', '99', 1428941926, 1431453688, 1429290188, 1429290520, '5.152.208.245', '', 0, '', '', 1, 1, 0, 2, 1, 0, 1428941849, 1443111614, 0, '', '', '', '', ''),
(14, 'manual', 1, 0, 0, 0, 1, 'josue', '$2y$10$qj9kGkHyV9rK91KGkFN1bejYiDPe5F9hRZSXIfe5twCRGegTg5Rqm', '', 'Josue', 'Canul', 'josue@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', 'MX', 'es_mx', 'gregorian', '', '99', 1444243544, 1444785183, 0, 1444243544, '189.221.42.57', '', 0, '', '', 1, 1, 0, 2, 1, 0, 1444243322, 1444243322, 0, '', '', '', '', ''),
(9, 'manual', 1, 0, 0, 0, 1, 'alan', '$2y$10$4c/kkK75UA0KmKaOOkVWj.AE9E.PSVfDHa3gjhUoGGjmF1jNIvKFK', '', 'Alan', 'Blanco', 'alanblanco@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'es_mx', 'gregorian', '', '99', 1429897360, 1446662644, 1444142008, 1444320193, '200.68.137.228', '', 90, '', '', 1, 1, 0, 2, 1, 0, 1429210744, 1441990070, 0, '', '', '', '', ''),
(10, 'manual', 1, 0, 0, 0, 1, 'jannet', '$2y$10$gJqFmta2rd2eng2m3zvFJe9sTTBu4Ul8l1tKQqUTc/hsbSgWNEHsW', '', 'jannet', 'orozco', 'letty_217@hotmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'es_mx', 'gregorian', '', '99', 1443112037, 1446832122, 1443719752, 1446764599, '189.215.54.249', '', 0, '', '', 1, 1, 0, 2, 1, 0, 1430156894, 1443112010, 0, '', '', '', '', ''),
(11, 'manual', 1, 0, 0, 0, 1, 'rubi', '$2y$10$XbCiMfi5VIwAE1vl26jX0uHos6cwgwmiAeyXLT3piwBtiOyvZLs22', '', 'Rubi', 'Chan', 'rubi_hearty@hotmail.com', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'es_mx', 'gregorian', '', '99', 1431444933, 1445895582, 1443197117, 1445895582, '189.215.54.249', '', 0, '', '', 1, 1, 0, 2, 1, 0, 1431444502, 1443111726, 0, '', '', '', '', ''),
(12, 'email', 1, 0, 0, 0, 1, 'josemanuel', '$2y$10$f/BHaebmBbH2166BtMIVb.TT87Q4Y7MtFfYDXAY0zeglBLDSHmpsu', '', 'José Manuel', 'Cortés Aguilar', 'jmanuel_1407@hotmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'Chetumal', 'MX', 'es_mx', 'gregorian', '', '99', 1442597329, 1443469835, 1443197228, 1443468785, '189.221.34.249', '', 99, '', '<p>Mi nombre es José Manuel y soy un estudiante que imparte cursos :)<br /></p>', 1, 1, 0, 2, 1, 0, 1442596682, 1442596682, 0, '', '', '', '', ''),
(13, 'manual', 1, 0, 1, 0, 1, 'eduardo@gmail.com.1443721676', '$2y$10$C1Go6yC85P1PT73PQZ1w3eZQcppf8UD0sSqQ4Qhhc6tfuHrsyo21q', '', 'Eduardo', 'Carel', '6d6354ece40846bf7fca65dfabd5d9d4', 0, '', '', '', '', '', '', '', '', '', '', '', 'MX', 'es_mx', 'gregorian', '', '99', 0, 0, 0, 0, '', '', 0, '', '', 1, 1, 0, 2, 1, 0, 1443721582, 1443721676, 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_user_devices`
--

CREATE TABLE IF NOT EXISTS `mdl_user_devices` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `appid` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `model` varchar(32) NOT NULL DEFAULT '',
  `platform` varchar(32) NOT NULL DEFAULT '',
  `version` varchar(32) NOT NULL DEFAULT '',
  `pushid` varchar(255) NOT NULL DEFAULT '',
  `uuid` varchar(255) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userdevi_pususe_uix` (`pushid`,`userid`),
  UNIQUE KEY `mdl_userdevi_puspla_uix` (`pushid`,`platform`),
  KEY `mdl_userdevi_use_ix` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='This table stores user''s mobile devices information in order' AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `mdl_user_devices`
--

INSERT INTO `mdl_user_devices` (`id`, `userid`, `appid`, `name`, `model`, `platform`, `version`, `pushid`, `uuid`, `timecreated`, `timemodified`) VALUES
(1, 2, 'com.moodle.moodlemobile', '', 'LG-D680', 'Android', '4.4.2', 'APA91bGD8GKJWnpa4mE6ji5quL7JgBAq0_NRNbBl2kzYWqzq_wLFKZKLsGDF4TdQf3uKynu_m6-DZYct9_N5kwgzJknT3NR9PbETS8EokbuDWyKrmTZMSIypBK64GIuDV77wo_yBB9jKo8C92XnIyFW0BaiKZo6KaNqMIej3YAnyHd4CxTVAj_I', 'cd1428232dbb26cb', 1422464934, 1422464934),
(2, 5, 'com.moodle.moodlemobile', '', 'LG-D680', 'Android', '4.4.2', 'APA91bEwRIh7KXAY2ylVEJHm1NFJeVybvKMoHVesKsePshN7QHARQJ0wJZRbobAfJePlLJ67jOCdt3nyRZee0xObSlKr7iJvGiO-eVV4qtfAOrR0TXuHxmheV9t4M9ZhFBY5buYG11qWq8ZqoFv28NEwYl-4pTH52tl_Gm1J1N_3DQBZz8NXXzA', 'cd1428232dbb26cb', 1422466706, 1422466706),
(3, 4, 'com.moodle.moodlemobile', '', 'LG-P708g', 'Android', '4.0.3', 'APA91bE7B5UrnH2UQShfTAJcMxqVM3eO6HFDt5PnCnq-KLjDL1l_1Pz6nOQkneBg6RoSUdP5zNZT66evm53qemX3nH14C34GekmgWvtpUQG1-wYrOODk5mp6fVPEXygcZav--fyg8IISQUFuDtgFLSFGsvkRY3Ny6g', 'e9801dc3de9744cf', 1422468937, 1422468937),
(4, 2, 'com.moodle.moodlemobile', '', 'LG-D680', 'Android', '4.4.2', 'APA91bFg1vLrIpygqGoH1fktenvqmrWRocPdHlxHFXaD2dOi_AjESsm9O4-bcs8YKjC7Mgtv7tp5GfyxUT4rJkKazJScQ71nTZh_5mEj3bC-MIcF5X_y1YJau8HZnOtb59Q8FnNvVVPLqpGJooQa8iM1O1aqsmi609gAoJlzzpUu9gYKjGRjYNQ', 'cd1428232dbb26cb', 1424794157, 1424794157),
(5, 3, 'com.moodle.moodlemobile', 'emulation_fake_device_name', 'emulation_fake_device_model', 'emulation_fake_device_platform', 'emulation_fake_device_version', 'fake_push_id_gcm', 'emulation_fake_device_uuid', 1426174596, 1426174596),
(6, 3, 'com.moodle.moodlemobile', '', 'DUFF700', 'Android', '4.4.4', 'APA91bGB48UE4RaZ7QlJ29DBhRMgwz9Xs1gU5LKZK4L9RcAiyDeLmDltM26PGSChL3tuV9OkTXpm2uE1DQFFWAcnakg73OPkgE4ibVfPV6JkLz0cxjNg3MuUxayLmkg1ej4lkquZUOEo', '971a4982a8f13f0c', 1442507823, 1442507823),
(7, 3, 'com.moodle.moodlemobile', '', 'DUFF700', 'Android', '4.4.4', 'APA91bE41zppg8Dpt68spjl3OtycJqqjAdiuHyBn2IMPNBmr9KyUN1Q8bvGdK0mwGn1iMyhCi0SGpuwzqQNOYf4SUU9bwrXK5-EuwCFXtXbVIjRjNHHlNQqxqs9w216RVkxLCTbL-YiP', '971a4982a8f13f0c', 1442509087, 1442509087),
(8, 3, 'com.moodle.moodlemobile', '', 'LG-D320', 'Android', '4.4.2', 'APA91bEQtKR4zbZ5_jctkDiUWE65xW0RkgVoXoXmDED7Ukc0YJRpxHAFFmnDQf7V2NJPN4wZoW1D1p-ulD_FhZYDl84tyt11pVzMWY2GIqSTUiXjwQ-rr7gC0K-fG5DRqELXKrDf7Ekb', '744a40781e32e431', 1446764070, 1446764070);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_user_enrolments`
--

CREATE TABLE IF NOT EXISTS `mdl_user_enrolments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `status` bigint(10) NOT NULL DEFAULT '0',
  `enrolid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timestart` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '2147483647',
  `modifierid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userenro_enruse_uix` (`enrolid`,`userid`),
  KEY `mdl_userenro_enr_ix` (`enrolid`),
  KEY `mdl_userenro_use_ix` (`userid`),
  KEY `mdl_userenro_mod_ix` (`modifierid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Users participating in courses (aka enrolled users) - everyb' AUTO_INCREMENT=39 ;

--
-- Volcado de datos para la tabla `mdl_user_enrolments`
--

INSERT INTO `mdl_user_enrolments` (`id`, `status`, `enrolid`, `userid`, `timestart`, `timeend`, `modifierid`, `timecreated`, `timemodified`) VALUES
(36, 0, 19, 14, 1444194000, 0, 2, 1444243432, 1444243432),
(13, 0, 15, 3, 1428946653, 0, 3, 1428946653, 1428946653),
(14, 0, 21, 3, 1429032757, 0, 3, 1429032757, 1429032757),
(15, 0, 21, 9, 1429897743, 0, 9, 1429897743, 1429897743),
(16, 0, 15, 9, 1429897786, 0, 9, 1429897786, 1429897786),
(18, 0, 22, 9, 1431403200, 0, 2, 1431444730, 1431444730),
(35, 0, 21, 12, 1443197244, 0, 12, 1443197244, 1443197244),
(20, 0, 22, 11, 1431403200, 0, 2, 1431444899, 1431444899),
(22, 0, 25, 12, 1442534400, 0, 2, 1442598137, 1442598137),
(23, 0, 25, 10, 1442534400, 0, 2, 1442598142, 1442598142),
(38, 0, 25, 11, 1446789600, 0, 2, 1446831413, 1446831413),
(34, 0, 21, 10, 1443112054, 0, 10, 1443112054, 1443112054),
(27, 0, 28, 12, 1442534400, 0, 2, 1442599072, 1442599072),
(37, 0, 13, 14, 1444280400, 0, 2, 1444266104, 1444266104);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_user_info_category`
--

CREATE TABLE IF NOT EXISTS `mdl_user_info_category` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Customisable fields categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_user_info_data`
--

CREATE TABLE IF NOT EXISTS `mdl_user_info_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `fieldid` bigint(10) NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  `dataformat` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userinfodata_usefie_uix` (`userid`,`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Data for the customisable user fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_user_info_field`
--

CREATE TABLE IF NOT EXISTS `mdl_user_info_field` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(255) NOT NULL DEFAULT 'shortname',
  `name` longtext NOT NULL,
  `datatype` varchar(255) NOT NULL DEFAULT '',
  `description` longtext,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `categoryid` bigint(10) NOT NULL DEFAULT '0',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `required` tinyint(2) NOT NULL DEFAULT '0',
  `locked` tinyint(2) NOT NULL DEFAULT '0',
  `visible` smallint(4) NOT NULL DEFAULT '0',
  `forceunique` tinyint(2) NOT NULL DEFAULT '0',
  `signup` tinyint(2) NOT NULL DEFAULT '0',
  `defaultdata` longtext,
  `defaultdataformat` tinyint(2) NOT NULL DEFAULT '0',
  `param1` longtext,
  `param2` longtext,
  `param3` longtext,
  `param4` longtext,
  `param5` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Customisable user profile fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_user_lastaccess`
--

CREATE TABLE IF NOT EXISTS `mdl_user_lastaccess` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `timeaccess` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userlast_usecou_uix` (`userid`,`courseid`),
  KEY `mdl_userlast_use_ix` (`userid`),
  KEY `mdl_userlast_cou_ix` (`courseid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='To keep track of course page access times, used in online pa' AUTO_INCREMENT=36 ;

--
-- Volcado de datos para la tabla `mdl_user_lastaccess`
--

INSERT INTO `mdl_user_lastaccess` (`id`, `userid`, `courseid`, `timeaccess`) VALUES
(8, 2, 6, 1444266219),
(33, 12, 8, 1443469835),
(31, 10, 8, 1446832122),
(15, 3, 6, 1446868262),
(16, 2, 8, 1446831115),
(17, 3, 8, 1446868262),
(18, 9, 8, 1446662644),
(19, 9, 6, 1446662644),
(21, 2, 9, 1444243335),
(22, 11, 9, 1443469934),
(23, 9, 9, 1446662644),
(32, 10, 10, 1446832122),
(25, 2, 10, 1446831392),
(26, 12, 10, 1443469835),
(27, 2, 11, 1443113427),
(34, 14, 8, 1444785183),
(35, 14, 6, 1444785183),
(30, 12, 11, 1443469835);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_user_password_resets`
--

CREATE TABLE IF NOT EXISTS `mdl_user_password_resets` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `timerequested` bigint(10) NOT NULL,
  `timererequested` bigint(10) NOT NULL DEFAULT '0',
  `token` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_userpassrese_use_ix` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='table tracking password reset confirmation tokens' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdl_user_preferences`
--

CREATE TABLE IF NOT EXISTS `mdl_user_preferences` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(1333) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userpref_usenam_uix` (`userid`,`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Allows modules to store arbitrary user preferences' AUTO_INCREMENT=114 ;

--
-- Volcado de datos para la tabla `mdl_user_preferences`
--

INSERT INTO `mdl_user_preferences` (`id`, `userid`, `name`, `value`) VALUES
(1, 2, 'auth_manual_passwordupdatetime', '1425925680'),
(2, 2, 'htmleditor', ''),
(3, 2, 'email_bounce_count', '0'),
(4, 2, 'email_send_count', '2'),
(5, 2, 'login_failed_count_since_success', '35'),
(6, 3, 'auth_forcepasswordchange', '0'),
(7, 3, 'htmleditor', ''),
(8, 3, 'email_bounce_count', '1'),
(9, 3, 'email_send_count', '9'),
(14, 2, 'userselector_preserveselected', '0'),
(15, 2, 'userselector_autoselectunique', '0'),
(16, 2, 'userselector_searchanywhere', '0'),
(17, 3, 'login_failed_count_since_success', '122'),
(30, 2, 'definerole_showadvanced', '1'),
(45, 16, 'auth_forcepasswordchange', '0'),
(46, 16, 'htmleditor', ''),
(47, 16, 'email_bounce_count', '1'),
(48, 16, 'email_send_count', '1'),
(49, 16, 'login_failed_count_since_success', '4'),
(50, 17, 'auth_forcepasswordchange', '0'),
(51, 17, 'htmleditor', ''),
(52, 17, 'email_bounce_count', '1'),
(53, 17, 'email_send_count', '1'),
(58, 2, 'docked_block_instance_3', '0'),
(59, 2, 'block3hidden', '0'),
(113, 14, 'email_send_count', '2'),
(110, 14, 'auth_forcepasswordchange', '0'),
(111, 14, 'htmleditor', ''),
(112, 14, 'email_bounce_count', '1'),
(104, 10, 'auth_manual_passwordupdatetime', '1443112010'),
(105, 10, 'login_failed_count_since_success', '1'),
(73, 9, 'auth_forcepasswordchange', '0'),
(74, 9, 'htmleditor', ''),
(75, 9, 'email_bounce_count', '1'),
(76, 9, 'email_send_count', '13'),
(77, 2, 'filepicker_recentrepository', '4'),
(78, 2, 'filepicker_recentlicense', 'allrightsreserved'),
(79, 9, 'login_failed_count_since_success', '44'),
(103, 11, 'auth_manual_passwordupdatetime', '1443111726'),
(81, 9, 'auth_manual_passwordupdatetime', '1429897338'),
(82, 10, 'auth_forcepasswordchange', '0'),
(83, 10, 'htmleditor', ''),
(84, 10, 'email_bounce_count', '1'),
(85, 10, 'email_send_count', '3'),
(86, 3, 'filepicker_recentrepository', '3'),
(87, 3, 'filepicker_recentlicense', 'allrightsreserved'),
(88, 9, 'filepicker_recentrepository', '4'),
(89, 9, 'filepicker_recentlicense', 'allrightsreserved'),
(90, 11, 'auth_forcepasswordchange', '0'),
(91, 11, 'htmleditor', ''),
(92, 11, 'email_bounce_count', '1'),
(93, 11, 'email_send_count', '1'),
(94, 11, 'userselector_preserveselected', '0'),
(95, 11, 'userselector_autoselectunique', '0'),
(96, 11, 'userselector_searchanywhere', '0'),
(97, 11, 'filepicker_recentrepository', '8'),
(98, 11, 'filepicker_recentlicense', 'allrightsreserved'),
(99, 12, 'auth_forcepasswordchange', '0'),
(100, 12, 'htmleditor', 'atto'),
(101, 12, 'email_bounce_count', '1'),
(102, 12, 'email_send_count', '3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;