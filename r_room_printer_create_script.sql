CREATE TABLE `RestaurantDB`.`r_room_printer` (
  `RoomPrinterId` INT NOT NULL COMMENT '',
  `RoomType` INT NULL COMMENT '',
  `PrinterId` INT NULL COMMENT '',
  `Description` VARCHAR(45) NULL COMMENT '',
  `Active` INT NULL COMMENT '',
  PRIMARY KEY (`RoomPrinterId`)  COMMENT '',
  INDEX `FkRoomPrinterRoomType_idx` (`RoomType` ASC)  COMMENT '',
  INDEX `FkRoomPrinterPrinterId_idx` (`PrinterId` ASC)  COMMENT '',
  CONSTRAINT `FkRoomPrinterRoomType`
    FOREIGN KEY (`RoomType`)
    REFERENCES `RestaurantDB`.`room_types` (`RoomTypeId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FkRoomPrinterPrinterId`
    FOREIGN KEY (`PrinterId`)
    REFERENCES `RestaurantDB`.`r_printers` (`PrinterId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);