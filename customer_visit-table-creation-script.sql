CREATE TABLE `RestaurantDB`.`customer_visit` (
  `RestaurantId` INT NOT NULL COMMENT '',
  `Month` INT NOT NULL COMMENT '',
  `Year` INT NOT NULL COMMENT '',
  `Day` INT NOT NULL COMMENT '',
  `11-2` INT NULL COMMENT '',
  `2-3` INT NULL COMMENT '',
  `4-6` INT NULL COMMENT '',
  `6-8` INT NULL COMMENT '',
  `8-10` INT NULL COMMENT '',
  `10-12` INT NULL COMMENT '',
  PRIMARY KEY (`RestaurantId`, `Month`, `Year`, `Day`)  COMMENT '');

  
  ALTER TABLE `RestaurantDB`.`customer_visit` 
CHANGE COLUMN `11-2` `11-2` INT(11) NULL DEFAULT 0 COMMENT '' ,
CHANGE COLUMN `2-3` `2-3` INT(11) NULL DEFAULT 0 COMMENT '' ,
CHANGE COLUMN `4-6` `4-6` INT(11) NULL DEFAULT 0 COMMENT '' ,
CHANGE COLUMN `6-8` `6-8` INT(11) NULL DEFAULT 0 COMMENT '' ,
CHANGE COLUMN `8-10` `8-10` INT(11) NULL DEFAULT 0 COMMENT '' ,
CHANGE COLUMN `10-12` `10-12` INT(11) NULL DEFAULT 0 COMMENT '' ;

ALTER TABLE `RestaurantDB`.`customer_visit` 
CHANGE COLUMN `11-2` `f11to2` INT(11) NULL DEFAULT '0' COMMENT '' ,
CHANGE COLUMN `2-3` `f2to3` INT(11) NULL DEFAULT '0' COMMENT '' ,
CHANGE COLUMN `4-6` `f4to6` INT(11) NULL DEFAULT '0' COMMENT '' ,
CHANGE COLUMN `6-8` `f6to8` INT(11) NULL DEFAULT '0' COMMENT '' ,
CHANGE COLUMN `8-10` `f8to10` INT(11) NULL DEFAULT '0' COMMENT '' ,
CHANGE COLUMN `10-12` `f10to12` INT(11) NULL DEFAULT '0' COMMENT '' ;

