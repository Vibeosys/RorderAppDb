CREATE TABLE `RestaurantDB`.`sub_menu` (
  `SubMenuId` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `MenuId` INT NULL COMMENT '',
  `SubMenuTitle` VARCHAR(45) NULL COMMENT '',
  `Price` DOUBLE NULL COMMENT '',
  PRIMARY KEY (`SubMenuId`)  COMMENT '');
