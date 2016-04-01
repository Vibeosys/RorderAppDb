CREATE TABLE `RestaurantDB`.`application_error` (
  `ErrorId` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `Source` VARCHAR(45) NULL COMMENT '',
  `Method` VARCHAR(45) NULL COMMENT '',
  `Description` VARCHAR(255) NULL COMMENT '',
  `UserId` VARCHAR(45) NULL COMMENT '',
  `RestaurantId` INT NULL COMMENT '',
  `ErrorDate` DATE NULL COMMENT '' ,
  `ErrorTime` TIME NULL COMMENT '',
  `CreatedDate` DATETIME NULL COMMENT '',
  PRIMARY KEY (`ErrorId`)  COMMENT ''),
  INDEX `FkApplicationErrorUserId_idx` (`UserId` ASC)  COMMENT '',
  INDEX `FkApplicationErrorRestaurantId_idx` (`RestaurantId` ASC)  COMMENT '',
CONSTRAINT `FkApplicationErrorUserId`
  FOREIGN KEY (`UserId`)
  REFERENCES `RestaurantDB`.`users` (`UserId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
CONSTRAINT `FkApplicationErrorRestaurantId`
  FOREIGN KEY (`RestaurantId`)
  REFERENCES `RestaurantDB`.`restaurant` (`RestaurantId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  
  

