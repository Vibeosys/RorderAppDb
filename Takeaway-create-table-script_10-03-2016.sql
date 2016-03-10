CREATE TABLE `RestaurantDB`.`takeaway` (
  `TakeawayId` VARCHAR(45) NOT NULL COMMENT '',
  `TakeawayNo` DOUBLE NULL COMMENT '',
  `Discount` DOUBLE NULL COMMENT '',
  `DeliveryCharges` DOUBLE NULL COMMENT '',
  `CustId` VARCHAR(45) NULL COMMENT '',
  `RestaurantId` INT NULL COMMENT '',
  `UserId` INT NULL COMMENT '',
  `SourceId` INT NULL COMMENT '',
  `CreatedDate` DATETIME NULL COMMENT '',
  `UpdatedDate` DATETIME NULL COMMENT '',
  PRIMARY KEY (`TakeawayId`)  COMMENT '');