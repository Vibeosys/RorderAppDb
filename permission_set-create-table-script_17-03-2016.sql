CREATE TABLE `RestaurantDB`.`permission_set` (
  `PermissionId` INT NOT NULL COMMENT '',
  `PermissionKey` VARCHAR(45) NULL COMMENT '',
  `Description` VARCHAR(45) NULL COMMENT '',
  `Active` INT NULL COMMENT '',
  PRIMARY KEY (`PermissionId`)  COMMENT '');
