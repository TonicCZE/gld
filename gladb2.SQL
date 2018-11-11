-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Servidor: custsql-ipg117.eigbox.net
-- Tiempo de generación: 30-08-2015 a las 11:50:42
-- Versión del servidor: 5.5.44
-- Versión de PHP: 4.4.9
-- 
-- Base de datos: `risk_gladb`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `accounts`
-- 

CREATE TABLE `accounts` (
  `acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_name` varchar(24) NOT NULL,
  `acc_pass` text NOT NULL,
  `acc_email` text NOT NULL,
  `acc_provin` int(11) NOT NULL,
  `acc_afk` int(1) NOT NULL DEFAULT '0',
  `acc_cash` int(11) NOT NULL,
  `acc_registerIP` text NOT NULL,
  `acc_lastIP` text NOT NULL,
  `acc_registerDATE` datetime NOT NULL,
  `acc_lastDATE` datetime NOT NULL,
  PRIMARY KEY (`acc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `accounts`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `count_locu`
-- 

CREATE TABLE `count_locu` (
  `clu_id` int(11) NOT NULL AUTO_INCREMENT,
  `clu_userID` int(11) NOT NULL,
  `clu_monsterID` int(11) NOT NULL,
  `clu_fights` int(11) NOT NULL DEFAULT '0',
  `clu_wins` int(11) NOT NULL DEFAULT '0',
  `clu_bonusGold` int(11) NOT NULL DEFAULT '0',
  `clu_bonusExp` int(11) NOT NULL DEFAULT '0',
  `clu_bonusDrop` int(11) NOT NULL DEFAULT '0',
  `clu_bonusHonor` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`clu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `count_locu`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `doll`
-- 

CREATE TABLE `doll` (
  `id` int(2) NOT NULL,
  `p2_1_1` int(4) DEFAULT NULL,
  `p3_1_1` int(4) DEFAULT '1',
  `p4_1_1` int(4) DEFAULT NULL,
  `p5_1_1` int(4) DEFAULT NULL,
  `p6_1_1` int(4) DEFAULT NULL,
  `p7_1_1` int(4) DEFAULT NULL,
  `p8_1_1` int(4) DEFAULT NULL,
  `p9_1_1` int(4) DEFAULT NULL,
  `p10_1_1` int(4) DEFAULT NULL,
  `p11_1_1` int(4) DEFAULT NULL,
  `p12_1_1` int(4) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `doll`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `forge`
-- 

CREATE TABLE `forge` (
  `forge_id` int(11) NOT NULL AUTO_INCREMENT,
  `forge_userID` int(11) NOT NULL,
  `forge_exp` int(11) NOT NULL DEFAULT '0',
  `forge_expMAX` int(11) NOT NULL DEFAULT '3',
  `forge_level` int(11) NOT NULL DEFAULT '1',
  `forge_points` int(11) NOT NULL DEFAULT '5',
  PRIMARY KEY (`forge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `forge`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `gods`
-- 

CREATE TABLE `gods` (
  `gods_id` int(11) NOT NULL AUTO_INCREMENT,
  `gods_userID` int(11) NOT NULL,
  `gods_1c` int(11) NOT NULL DEFAULT '0',
  `gods_2c` int(11) NOT NULL DEFAULT '0',
  `gods_3c` int(11) NOT NULL DEFAULT '0',
  `gods_4c` int(11) NOT NULL DEFAULT '0',
  `gods_5c` int(11) NOT NULL DEFAULT '0',
  `gods_6c` int(11) NOT NULL DEFAULT '0',
  `gods_cc` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `gods`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `godsa`
-- 

CREATE TABLE `godsa` (
  `ga_id` int(11) NOT NULL AUTO_INCREMENT,
  `ga_userID` int(11) NOT NULL,
  `ga_g1n1` int(11) NOT NULL,
  `ga_g1n2` int(11) NOT NULL,
  `ga_g1n3` int(11) NOT NULL,
  `ga_g2n1` int(11) NOT NULL,
  `ga_g2n2` int(11) NOT NULL,
  `ga_g2n3` int(11) NOT NULL,
  `ga_g3n1` int(11) NOT NULL,
  `ga_g3n2` int(11) NOT NULL,
  `ga_g3n3` int(11) NOT NULL,
  `ga_g4n1` int(11) NOT NULL,
  `ga_g4n2` int(11) NOT NULL,
  `ga_g4n3` int(11) NOT NULL,
  `ga_g5n1` int(11) NOT NULL,
  `ga_g5n2` int(11) NOT NULL,
  `ga_g5n3` int(11) NOT NULL,
  `ga_g6n1` int(11) NOT NULL,
  `ga_g6n2` int(11) NOT NULL,
  `ga_g6n3` int(11) NOT NULL,
  PRIMARY KEY (`ga_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `godsa`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `guilds`
-- 

CREATE TABLE `guilds` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `g_masterID` int(11) NOT NULL,
  `g_forum` int(11) NOT NULL DEFAULT '1',
  `g_bank` int(11) NOT NULL DEFAULT '1',
  `g_bibly` int(11) NOT NULL DEFAULT '1',
  `g_bath` int(11) NOT NULL DEFAULT '1',
  `g_hall` int(11) NOT NULL DEFAULT '1',
  `g_market` int(11) NOT NULL DEFAULT '0',
  `g_depos` int(11) NOT NULL DEFAULT '0',
  `g_camp` int(11) NOT NULL DEFAULT '0',
  `g_medici` int(11) NOT NULL DEFAULT '0',
  `g_templum` int(11) NOT NULL DEFAULT '0',
  `g_nx` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `g_id` (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `guilds`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `guilds_apply`
-- 

CREATE TABLE `guilds_apply` (
  `gp_id` int(11) NOT NULL AUTO_INCREMENT,
  `gp_userID` int(11) NOT NULL,
  `gp_guildID` int(11) NOT NULL,
  UNIQUE KEY `gp_id` (`gp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `guilds_apply`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `guilds_banks`
-- 

CREATE TABLE `guilds_banks` (
  `gbk_id` int(11) NOT NULL AUTO_INCREMENT,
  `gbk_guildID` int(11) NOT NULL,
  `gbk_userID` int(11) NOT NULL,
  `gbk_date` datetime NOT NULL,
  `gbk_amount` int(11) NOT NULL,
  UNIQUE KEY `gbk_id` (`gbk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `guilds_banks`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `guilds_baths`
-- 

CREATE TABLE `guilds_baths` (
  `gbr_id` int(11) NOT NULL AUTO_INCREMENT,
  `gbr_guildID` int(11) NOT NULL,
  `gbr_userID` int(11) NOT NULL,
  `gbr_date` datetime NOT NULL,
  `gbr_text` text NOT NULL,
  UNIQUE KEY `gbr_id` (`gbr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `guilds_baths`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `guilds_biblys`
-- 

CREATE TABLE `guilds_biblys` (
  `gb_id` int(11) NOT NULL AUTO_INCREMENT,
  `gb_guildID` int(11) NOT NULL,
  `gb_type` int(11) NOT NULL,
  `gb_level` int(11) NOT NULL,
  `gb_userID` int(11) NOT NULL,
  UNIQUE KEY `gb_id` (`gb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `guilds_biblys`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `guilds_data`
-- 

CREATE TABLE `guilds_data` (
  `gd_id` int(11) NOT NULL AUTO_INCREMENT,
  `gd_name` varchar(24) NOT NULL,
  `gd_tag` varchar(24) NOT NULL,
  `gd_link` text,
  `gd_gold` int(11) NOT NULL DEFAULT '0',
  `gd_desc` text,
  `gd_color` int(11) NOT NULL DEFAULT '1',
  `gd_flag` int(11) NOT NULL DEFAULT '1',
  `gd_honor` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `gd_id` (`gd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `guilds_data`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `guilds_members`
-- 

CREATE TABLE `guilds_members` (
  `gmb_id` int(11) NOT NULL AUTO_INCREMENT,
  `gmb_userID` int(11) NOT NULL,
  `gmb_guildID` int(11) NOT NULL,
  `gmb_rank` int(11) NOT NULL,
  `gmb_donate` int(11) NOT NULL,
  PRIMARY KEY (`gmb_id`),
  UNIQUE KEY `gmb_id` (`gmb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `guilds_members`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `guilds_ranks`
-- 

CREATE TABLE `guilds_ranks` (
  `gr_id` int(11) NOT NULL AUTO_INCREMENT,
  `gr_guildID` int(11) NOT NULL,
  `gr_name` varchar(24) NOT NULL,
  `gr_pAccept` int(11) NOT NULL DEFAULT '0',
  `gr_pBuilds` int(11) NOT NULL DEFAULT '0',
  `gr_pMessages1` int(11) NOT NULL DEFAULT '0',
  `gr_pMessages2` int(11) NOT NULL DEFAULT '0',
  `gr_pVox1` int(11) NOT NULL DEFAULT '0',
  `gr_pVox2` int(11) NOT NULL DEFAULT '0',
  `gr_pVox3` int(11) NOT NULL DEFAULT '0',
  `gr_pBibly1` int(11) NOT NULL DEFAULT '0',
  `gr_pBibly2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gr_id`),
  UNIQUE KEY `gr_id` (`gr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `guilds_ranks`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `inventory`
-- 

CREATE TABLE `inventory` (
  `id` int(2) NOT NULL,
  `p512_1_1` int(4) DEFAULT '0',
  `p512_1_2` int(4) DEFAULT NULL,
  `p512_1_3` int(4) DEFAULT NULL,
  `p512_1_4` int(4) DEFAULT NULL,
  `p512_1_5` int(4) DEFAULT NULL,
  `p512_2_1` int(4) DEFAULT NULL,
  `p512_2_2` int(4) DEFAULT NULL,
  `p512_2_3` int(4) DEFAULT NULL,
  `p512_2_4` int(4) DEFAULT NULL,
  `p512_2_5` int(4) DEFAULT NULL,
  `p512_3_1` int(4) DEFAULT NULL,
  `p512_3_2` int(4) DEFAULT NULL,
  `p512_3_3` int(4) DEFAULT NULL,
  `p512_3_4` int(4) DEFAULT NULL,
  `p512_3_5` int(4) DEFAULT NULL,
  `p512_4_1` int(4) DEFAULT NULL,
  `p512_4_2` int(4) DEFAULT NULL,
  `p512_4_3` int(4) DEFAULT NULL,
  `p512_4_4` int(4) DEFAULT NULL,
  `p512_4_5` int(4) DEFAULT NULL,
  `p512_5_1` int(4) DEFAULT NULL,
  `p512_5_2` int(4) DEFAULT NULL,
  `p512_5_3` int(4) DEFAULT NULL,
  `p512_5_4` int(4) DEFAULT NULL,
  `p512_5_5` int(4) DEFAULT NULL,
  `p512_6_1` int(4) DEFAULT NULL,
  `p512_6_2` int(4) DEFAULT NULL,
  `p512_6_3` int(4) DEFAULT NULL,
  `p512_6_4` int(4) DEFAULT NULL,
  `p512_6_5` int(4) DEFAULT NULL,
  `p512_7_1` int(4) DEFAULT NULL,
  `p512_7_2` int(4) DEFAULT NULL,
  `p512_7_3` int(4) DEFAULT NULL,
  `p512_7_4` int(4) DEFAULT NULL,
  `p512_7_5` int(4) DEFAULT NULL,
  `p512_8_1` int(4) DEFAULT NULL,
  `p512_8_2` int(4) DEFAULT NULL,
  `p512_8_3` int(4) DEFAULT NULL,
  `p512_8_4` int(4) DEFAULT NULL,
  `p512_8_5` int(4) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `inventory`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `inventory2`
-- 

CREATE TABLE `inventory2` (
  `id` int(2) NOT NULL,
  `p513_1_1` int(4) DEFAULT NULL,
  `p513_1_2` int(4) DEFAULT NULL,
  `p513_1_3` int(4) DEFAULT NULL,
  `p513_1_4` int(4) DEFAULT NULL,
  `p513_1_5` int(4) DEFAULT NULL,
  `p513_2_1` int(4) DEFAULT NULL,
  `p513_2_2` int(4) DEFAULT NULL,
  `p513_2_3` int(4) DEFAULT NULL,
  `p513_2_4` int(4) DEFAULT NULL,
  `p513_2_5` int(4) DEFAULT NULL,
  `p513_3_1` int(4) DEFAULT NULL,
  `p513_3_2` int(4) DEFAULT NULL,
  `p513_3_3` int(4) DEFAULT NULL,
  `p513_3_4` int(4) DEFAULT NULL,
  `p513_3_5` int(4) DEFAULT NULL,
  `p513_4_1` int(4) DEFAULT NULL,
  `p513_4_2` int(4) DEFAULT NULL,
  `p513_4_3` int(4) DEFAULT NULL,
  `p513_4_4` int(4) DEFAULT NULL,
  `p513_4_5` int(4) DEFAULT NULL,
  `p513_5_1` int(4) DEFAULT NULL,
  `p513_5_2` int(4) DEFAULT NULL,
  `p513_5_3` int(4) DEFAULT NULL,
  `p513_5_4` int(4) DEFAULT NULL,
  `p513_5_5` int(4) DEFAULT NULL,
  `p513_6_1` int(4) DEFAULT NULL,
  `p513_6_2` int(4) DEFAULT NULL,
  `p513_6_3` int(4) DEFAULT NULL,
  `p513_6_4` int(4) DEFAULT NULL,
  `p513_6_5` int(4) DEFAULT NULL,
  `p513_7_1` int(4) DEFAULT NULL,
  `p513_7_2` int(4) DEFAULT NULL,
  `p513_7_3` int(4) DEFAULT NULL,
  `p513_7_4` int(4) DEFAULT NULL,
  `p513_7_5` int(4) DEFAULT NULL,
  `p513_8_1` int(4) DEFAULT NULL,
  `p513_8_2` int(4) DEFAULT NULL,
  `p513_8_3` int(4) DEFAULT NULL,
  `p513_8_4` int(4) DEFAULT NULL,
  `p513_8_5` int(4) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `inventory2`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `items`
-- 

CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL,
  `name_green` varchar(24) NOT NULL,
  `name_blue` varchar(24) NOT NULL,
  `name_purple` varchar(24) NOT NULL,
  `soul-bound` int(11) DEFAULT NULL,
  `damage` text NOT NULL,
  `damage_+` int(11) DEFAULT NULL,
  `damage_add_green` int(11) DEFAULT NULL,
  `strenght` int(11) DEFAULT NULL,
  `strenght_%` int(11) DEFAULT NULL,
  `strenght_add_green` int(11) DEFAULT NULL,
  `dexterity` int(11) DEFAULT NULL,
  `dexterity_%` int(11) DEFAULT NULL,
  `dexterity_add_green` int(11) DEFAULT NULL,
  `agility` int(11) DEFAULT NULL,
  `agility_%` int(11) DEFAULT NULL,
  `agility_add_green` int(11) DEFAULT NULL,
  `constitution` int(11) DEFAULT NULL,
  `constitution_%` int(11) DEFAULT NULL,
  `constitution_add_green` int(11) DEFAULT NULL,
  `charisma` int(11) DEFAULT NULL,
  `charisma_%` int(11) DEFAULT NULL,
  `charisma_add_green` int(11) DEFAULT NULL,
  `intelligence` int(11) DEFAULT NULL,
  `intelligence_%` int(11) DEFAULT NULL,
  `intelligence_add_green` int(11) DEFAULT NULL,
  `crit_attack` int(11) DEFAULT NULL,
  `block` int(11) DEFAULT NULL,
  `hardening` int(11) DEFAULT NULL,
  `threat` int(11) DEFAULT NULL,
  `healing` int(11) DEFAULT NULL,
  `crit_heal` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `image` text,
  `type` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `bsize` int(11) NOT NULL DEFAULT '1',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `items`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `location_users`
-- 

CREATE TABLE `location_users` (
  `lu_id` int(11) NOT NULL AUTO_INCREMENT,
  `lu_userID` int(11) NOT NULL,
  `lu_inv` int(11) NOT NULL DEFAULT '1',
  `lu_loc` int(11) NOT NULL DEFAULT '0',
  `lu_cc` int(11) NOT NULL DEFAULT '2',
  `lu_map` int(11) NOT NULL DEFAULT '0',
  `lu_dun` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `location_users`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mdoll`
-- 

CREATE TABLE `mdoll` (
  `id` int(2) NOT NULL,
  `mpos` int(2) NOT NULL,
  `p2_1_1` int(4) DEFAULT NULL,
  `p3_1_1` int(4) DEFAULT '1',
  `p4_1_1` int(4) DEFAULT NULL,
  `p5_1_1` int(4) DEFAULT NULL,
  `p6_1_1` int(4) DEFAULT NULL,
  `p7_1_1` int(4) DEFAULT NULL,
  `p8_1_1` int(4) DEFAULT NULL,
  `p9_1_1` int(4) DEFAULT NULL,
  `p10_1_1` int(4) DEFAULT NULL,
  `p11_1_1` int(4) DEFAULT NULL,
  `p12_1_1` int(4) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `mdoll`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mercy`
-- 

CREATE TABLE `mercy` (
  `mercy_id` int(11) NOT NULL AUTO_INCREMENT,
  `mercy_name` varchar(24) NOT NULL,
  `mercy_color` text NOT NULL,
  `mercy_level` int(11) NOT NULL,
  `mercy_cost` int(11) NOT NULL,
  `mercy_type` int(11) NOT NULL,
  `mercy_image` text NOT NULL,
  `mercy_tip` text NOT NULL,
  PRIMARY KEY (`mercy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `mercy`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mercy_stats`
-- 

CREATE TABLE `mercy_stats` (
  `ms_id` int(11) NOT NULL AUTO_INCREMENT,
  `ms_mercyID` int(11) NOT NULL,
  `ms_life` int(11) NOT NULL,
  `ms_strenght` int(11) NOT NULL,
  `ms_skill` int(11) NOT NULL,
  `ms_agility` int(11) NOT NULL,
  `ms_constitution` int(11) NOT NULL,
  `ms_charisma` int(11) NOT NULL,
  `ms_intelligence` int(11) NOT NULL,
  `ms_defense` int(11) NOT NULL,
  `ms_damageMIN` int(11) NOT NULL,
  `ms_damageMAX` int(11) NOT NULL,
  PRIMARY KEY (`ms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `mercy_stats`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mercy_user`
-- 

CREATE TABLE `mercy_user` (
  `mu_id` int(11) NOT NULL AUTO_INCREMENT,
  `mu_userID` int(11) NOT NULL,
  `mu_user2` int(11) NOT NULL,
  `mu_mercyID` int(11) NOT NULL,
  `mu_mercyIUid` int(11) NOT NULL,
  `mu_pos` int(11) NOT NULL,
  `mu_onUse` int(11) NOT NULL,
  `mu_typeA` int(11) NOT NULL,
  PRIMARY KEY (`mu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `mercy_user`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `messages`
-- 

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_userID` int(11) NOT NULL,
  `msg_date` datetime NOT NULL,
  `msg_type` int(1) NOT NULL,
  `msg_userNAME` text NOT NULL,
  `msg_subj` text NOT NULL,
  `msg_text` text NOT NULL,
  `msg_reported` int(1) NOT NULL DEFAULT '0',
  `msg_deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `messages`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `missions`
-- 

CREATE TABLE `missions` (
  `ms_id` int(11) NOT NULL AUTO_INCREMENT,
  `ms_userID` int(11) NOT NULL,
  `ms_1` int(11) NOT NULL DEFAULT '0',
  `ms_2` int(11) NOT NULL DEFAULT '0',
  `ms_3` int(11) NOT NULL DEFAULT '0',
  `ms_4` int(11) DEFAULT '0',
  `ms_5` int(11) NOT NULL DEFAULT '0',
  `ms_6` int(11) NOT NULL DEFAULT '0',
  `ms_7` int(11) NOT NULL DEFAULT '0',
  `ms_8` int(11) NOT NULL DEFAULT '0',
  `ms_9` int(11) NOT NULL DEFAULT '0',
  `ms_10` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ms_id`),
  UNIQUE KEY `ms_id` (`ms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `missions`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mob_reports`
-- 

CREATE TABLE `mob_reports` (
  `mr_id` int(11) NOT NULL AUTO_INCREMENT,
  `mr_codeP` varchar(24) NOT NULL,
  `mr_userID` int(11) NOT NULL,
  `mr_mobID` int(11) NOT NULL,
  `mr_ww` int(11) NOT NULL,
  `mr_winner` text NOT NULL,
  `mr_price` text NOT NULL,
  `mr_price2` text NOT NULL,
  `mr_price3` text NOT NULL,
  `mr_vs` text NOT NULL,
  `mr_report0` text NOT NULL,
  `mr_round1` text NOT NULL,
  `mr_round2` text NOT NULL,
  `mr_round3` text NOT NULL,
  `mr_round4` text NOT NULL,
  `mr_round5` text NOT NULL,
  `mr_round6` text NOT NULL,
  `mr_round7` text NOT NULL,
  `mr_round8` text NOT NULL,
  `mr_round9` text NOT NULL,
  `mr_round10` text NOT NULL,
  `mr_round11` text NOT NULL,
  `mr_round12` text NOT NULL,
  `mr_round13` text NOT NULL,
  `mr_round14` text NOT NULL,
  `mr_round15` text NOT NULL,
  `mr_round16` text NOT NULL,
  `mr_round17` text NOT NULL,
  `mr_round18` text NOT NULL,
  `mr_round19` text NOT NULL,
  `mr_round20` text NOT NULL,
  `mr_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mr_gold` int(11) NOT NULL,
  `mr_item` int(11) NOT NULL,
  `mr_mbox` int(11) NOT NULL,
  `mr_bonus` int(11) NOT NULL,
  PRIMARY KEY (`mr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `mob_reports`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `monsters`
-- 

CREATE TABLE `monsters` (
  `monster_id` int(11) NOT NULL AUTO_INCREMENT,
  `monster_dataID` int(11) NOT NULL,
  PRIMARY KEY (`monster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `monsters`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `news`
-- 

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_type` int(11) NOT NULL,
  `news_title` varchar(24) NOT NULL,
  `news_date` datetime NOT NULL,
  `news_text` text NOT NULL,
  `news_link` text NOT NULL,
  `news_autor` varchar(24) NOT NULL,
  PRIMARY KEY (`news_id`),
  UNIQUE KEY `news_id` (`news_id`),
  UNIQUE KEY `news_id_2` (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `news`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `packages`
-- 

CREATE TABLE `packages` (
  `pack_id` int(11) NOT NULL AUTO_INCREMENT,
  `pack_userID` int(11) NOT NULL,
  `pack_itemID` int(11) NOT NULL,
  PRIMARY KEY (`pack_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `packages`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `premiuminv`
-- 

CREATE TABLE `premiuminv` (
  `pi_id` int(11) NOT NULL AUTO_INCREMENT,
  `pi_userID` int(11) NOT NULL,
  `pi_box1` int(11) NOT NULL DEFAULT '0',
  `pi_1` int(11) NOT NULL DEFAULT '0',
  `pi_2` int(11) NOT NULL DEFAULT '0',
  `pi_3` int(11) NOT NULL DEFAULT '0',
  `pi_4` int(11) NOT NULL DEFAULT '0',
  `pi_5` int(11) NOT NULL DEFAULT '0',
  `pi_6` int(11) NOT NULL DEFAULT '0',
  `pi_7` int(11) NOT NULL DEFAULT '0',
  `pi_8` int(11) NOT NULL DEFAULT '0',
  `pi_9` int(11) NOT NULL DEFAULT '0',
  `pi_10` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `pi_id` (`pi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `premiuminv`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `provinces`
-- 

CREATE TABLE `provinces` (
  `provin_id` int(11) NOT NULL AUTO_INCREMENT,
  `provin_name` varchar(24) NOT NULL,
  `provin_server` int(11) NOT NULL,
  `provin_leng` varchar(24) NOT NULL,
  PRIMARY KEY (`provin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `provinces`
-- 

INSERT INTO `provinces` VALUES (1, 'TEST', 0, 'ES');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `quests`
-- 

CREATE TABLE `quests` (
  `quest_id` int(11) NOT NULL AUTO_INCREMENT,
  `quest_userID` int(11) NOT NULL,
  `quest_type` int(11) NOT NULL,
  `quest_name` text NOT NULL,
  `quest_gold` int(11) NOT NULL,
  `quest_god1` int(11) NOT NULL,
  `quest_cgod1` int(11) NOT NULL,
  `quest_god2` int(11) NOT NULL,
  `quest_cgod2` int(11) NOT NULL,
  `quest_honor` int(11) NOT NULL,
  `quest_exp` int(11) NOT NULL,
  `quest_itemID` int(11) NOT NULL DEFAULT '0',
  `quest_enemyID` int(11) NOT NULL,
  `quest_enemyK` int(11) NOT NULL DEFAULT '0',
  `quest_enemyKM` int(11) NOT NULL DEFAULT '0',
  `quest_accept` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `quests`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `server`
-- 

CREATE TABLE `server` (
  `server_id` int(11) NOT NULL AUTO_INCREMENT,
  `server_name` text NOT NULL,
  `server_country` varchar(24) NOT NULL,
  `server_maintenance` int(1) NOT NULL,
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `server`
-- 

INSERT INTO `server` VALUES (0, 'GladClone TEST', 'VE', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `serverevents`
-- 

CREATE TABLE `serverevents` (
  `se_id` int(11) NOT NULL AUTO_INCREMENT,
  `se_image` text NOT NULL,
  `se_title` varchar(24) NOT NULL,
  `se_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `se_text` text NOT NULL,
  PRIMARY KEY (`se_id`),
  UNIQUE KEY `se_id` (`se_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `serverevents`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `session`
-- 

CREATE TABLE `session` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT,
  `session_ip` text NOT NULL,
  `session_accid` int(11) NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `session`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `sshop1`
-- 

CREATE TABLE `sshop1` (
  `id` int(2) NOT NULL,
  `p274_1_1` int(4) DEFAULT NULL,
  `p274_1_2` int(4) DEFAULT NULL,
  `p274_1_3` int(4) DEFAULT NULL,
  `p274_1_4` int(4) DEFAULT NULL,
  `p274_1_5` int(4) DEFAULT NULL,
  `p274_1_6` int(4) DEFAULT NULL,
  `p274_1_7` int(4) DEFAULT NULL,
  `p274_1_8` int(4) DEFAULT NULL,
  `p274_2_1` int(4) DEFAULT NULL,
  `p274_2_2` int(4) DEFAULT NULL,
  `p274_2_3` int(4) DEFAULT NULL,
  `p274_2_4` int(4) DEFAULT NULL,
  `p274_2_5` int(4) DEFAULT NULL,
  `p274_2_8` int(4) DEFAULT NULL,
  `p274_2_7` int(4) DEFAULT NULL,
  `p274_2_6` int(4) DEFAULT NULL,
  `p274_3_1` int(4) DEFAULT NULL,
  `p274_3_2` int(4) DEFAULT NULL,
  `p274_3_3` int(4) DEFAULT NULL,
  `p274_3_4` int(4) DEFAULT NULL,
  `p274_3_5` int(4) DEFAULT NULL,
  `p274_3_6` int(4) DEFAULT NULL,
  `p274_3_7` int(4) DEFAULT NULL,
  `p274_3_8` int(4) DEFAULT NULL,
  `p274_4_1` int(4) DEFAULT NULL,
  `p274_4_2` int(4) DEFAULT NULL,
  `p274_4_3` int(4) DEFAULT NULL,
  `p274_4_4` int(4) DEFAULT NULL,
  `p274_4_5` int(4) DEFAULT NULL,
  `p274_4_6` int(4) DEFAULT NULL,
  `p274_4_7` int(4) DEFAULT NULL,
  `p274_4_8` int(4) DEFAULT NULL,
  `p274_5_1` int(4) DEFAULT NULL,
  `p274_5_2` int(4) DEFAULT NULL,
  `p274_5_3` int(4) DEFAULT NULL,
  `p274_5_4` int(4) DEFAULT NULL,
  `p274_5_5` int(4) DEFAULT NULL,
  `p274_5_6` int(4) DEFAULT NULL,
  `p274_5_7` int(4) DEFAULT NULL,
  `p274_5_8` int(4) DEFAULT NULL,
  `p274_6_1` int(4) DEFAULT NULL,
  `p274_6_2` int(4) DEFAULT NULL,
  `p274_6_3` int(4) DEFAULT NULL,
  `p274_6_4` int(4) DEFAULT NULL,
  `p274_6_5` int(4) DEFAULT NULL,
  `p274_6_6` int(4) DEFAULT NULL,
  `p274_6_7` int(4) DEFAULT NULL,
  `p274_6_8` int(4) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `sshop1`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `users`
-- 

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_accID` int(11) NOT NULL,
  `user_gender` varchar(24) NOT NULL,
  `user_gold` int(11) NOT NULL DEFAULT '500',
  `user_honor` int(11) NOT NULL DEFAULT '0',
  `user_fame` int(11) NOT NULL DEFAULT '0',
  `user_level` int(11) NOT NULL DEFAULT '1',
  `user_newLn` int(1) NOT NULL,
  `user_exp` int(11) NOT NULL DEFAULT '0',
  `user_expMAX` int(11) NOT NULL DEFAULT '10',
  `user_life` int(11) NOT NULL DEFAULT '100',
  `user_lastREG` int(11) NOT NULL,
  `user_strenght` int(11) NOT NULL DEFAULT '5',
  `user_skill` int(11) NOT NULL DEFAULT '5',
  `user_agility` int(11) NOT NULL DEFAULT '5',
  `user_constitution` int(11) NOT NULL DEFAULT '5',
  `user_charisma` int(11) NOT NULL DEFAULT '5',
  `user_intelligence` int(11) NOT NULL DEFAULT '5',
  `user_quests` int(11) NOT NULL DEFAULT '0',
  `user_newsN` int(11) NOT NULL DEFAULT '0',
  `user_seN` int(11) NOT NULL,
  `user_packN` int(11) NOT NULL DEFAULT '0',
  `user_rptsN` int(11) NOT NULL DEFAULT '0',
  `user_msgsN` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `users`
-- 

