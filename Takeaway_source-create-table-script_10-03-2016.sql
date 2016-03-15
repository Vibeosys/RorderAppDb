CREATE TABLE `RestaurantDB`.`takeaway_source` (
  `SourceId` INT NOT NULL COMMENT '',
  `SourceName` VARCHAR(45) NULL COMMENT '',
  `SourceImg` VARCHAR(45) NULL COMMENT '',
  `Discount` DOUBLE NULL COMMENT '',
  `Active` INT NULL COMMENT '',
  PRIMARY KEY (`SourceId`)  COMMENT '');
