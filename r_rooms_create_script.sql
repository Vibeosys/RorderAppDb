CREATE TABLE `RestaurantDB`.`r_rooms` (
  `RoomId` INT NOT NULL COMMENT '',
  `Description` VARCHAR(45) NULL COMMENT '',
  `RestaurantId` INT NULL COMMENT '',
  `Active` INT NULL COMMENT '',
  PRIMARY KEY (`RoomId`)  COMMENT '',
  INDEX `FkRroomsRestaurantId_idx` (`RestaurantId` ASC)  COMMENT '',
  CONSTRAINT `FkRroomsRestaurantId`
    FOREIGN KEY (`RestaurantId`)
    REFERENCES `RestaurantDB`.`restaurant` (`RestaurantId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);