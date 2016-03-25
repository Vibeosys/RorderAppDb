CREATE TABLE `RestaurantDB`.`unit_master` (
  `UnitId` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `UnitTitle` VARCHAR(45) NULL COMMENT '',
  `CunitTitle` VARCHAR(45) NULL COMMENT '',
  `Cfactor` DOUBLE NULL COMMENT '',
  `Quantity` DOUBLE NULL COMMENT '',
  `ParentId` INT NULL COMMENT '',
  PRIMARY KEY (`UnitId`)  COMMENT '');
