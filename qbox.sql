CREATE TABLE IF NOT EXISTS `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `playerskins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `player_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL DEFAULT '0',
  `model` varchar(50) DEFAULT NULL,
  `props` text DEFAULT NULL,
  `components` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `citizenid_outfitname_model` (`citizenid`,`outfitname`,`model`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `management_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `minrank` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT 'Cool Outfit',
  `gender` varchar(50) NOT NULL DEFAULT 'male',
  `model` varchar(50) DEFAULT NULL,
  `props` text DEFAULT NULL,
  `components` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `player_outfit_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outfitid` int(11) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK_player_outfit_codes_player_outfits` (`outfitid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `ox_doorlock` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `ox_doorlock` (`id`, `name`, `data`) VALUES
	(1, 'vangelico_jewellery', '{"maxDistance":2,"groups":{"police":0},"doors":[{"model":1425919976,"coords":{"x":-631.9553833007813,"y":-236.33326721191407,"z":38.2065315246582},"heading":306},{"model":9467943,"coords":{"x":-630.426513671875,"y":-238.4375457763672,"z":38.2065315246582},"heading":306}],"state":1,"coords":{"x":-631.19091796875,"y":-237.38540649414063,"z":38.2065315246582},"hideUi":true}'),
    (2, 'BigBankThermite1', '{"heading":160,"doors":false,"maxDistance":2,"hideUi":true,"groups":{"police":0},"coords":{"x":251.85757446289063,"y":221.0654754638672,"z":101.83240509033203},"model":-1508355822,"state":1,"autolock":1800}'),
    (3, 'BigBankThermite2', '{"coords":{"x":261.3004150390625,"y":214.50514221191407,"z":101.83240509033203},"autolock":1800,"maxDistance":2,"groups":{"police":0},"model":-1508355822,"doors":false,"hideUi":true,"heading":250,"state":1}'),
    (4, 'BigBankLPDoor', '{"coords":{"x":256.3115539550781,"y":220.65785217285157,"z":106.42955780029297},"autolock":1800,"maxDistance":2,"model":-222270721,"doors":false,"lockpick":true,"hideUi":true,"heading":340,"state":1,"lockpickDifficulty":["hard"]}'),
    (5, 'PaletoThermiteDoor', '{"coords":{"x":-106.47130584716797,"y":6476.15771484375,"z":31.95479965209961},"autolock":1800,"maxDistance":2,"groups":{"police":0},"model":1309269072,"doors":false,"hideUi":true,"heading":315,"state":1}'),
    (6, 'BigBankRedCardDoor', '{"coords":{"x":262.1980895996094,"y":222.518798828125,"z":106.42955780029297},"autolock":1800,"maxDistance":2,"groups":{"police":0},"model":746855201,"doors":false,"hideUi":true,"heading":250,"state":1}');

CREATE TABLE IF NOT EXISTS `bank_accounts_new` (
  `id` varchar(50) NOT NULL,
  `amount` int(11) DEFAULT 0,
  `transactions` longtext,
  `auth` longtext,
  `isFrozen` int(11) DEFAULT 0,
  `creator` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `player_transactions` (
  `id` varchar(50) NOT NULL,
  `isFrozen` int(11) DEFAULT 0,
  `transactions` longtext,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
