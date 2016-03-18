CREATE TABLE `RestaurantDB`.`r_room_printer` (
  `RoomId` INT NOT NULL COMMENT '',
  `RoomTypeId` INT NOT NULL COMMENT '',
  `PrinterId` INT NOT NULL COMMENT '',
  `Description` VARCHAR(45) NULL COMMENT '',
  `Active` INT NULL COMMENT '',
  PRIMARY KEY (`RoomId`, `RoomTypeId`, `PrinterId`)  COMMENT '',
  INDEX `FkRRoomPrinterRoomTypeId_idx` (`RoomTypeId` ASC)  COMMENT '',
  INDEX `FkRRoomPrinterPrinterId_idx` (`PrinterId` ASC)  COMMENT '',
  CONSTRAINT `FkRRoomPrinterRoomId`
    FOREIGN KEY (`RoomId`)
    REFERENCES `RestaurantDB`.`r_rooms` (`RoomId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FkRRoomPrinterRoomTypeId`
    FOREIGN KEY (`RoomTypeId`)
    REFERENCES `RestaurantDB`.`room_types` (`RoomTypeId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FkRRoomPrinterPrinterId`
    FOREIGN KEY (`PrinterId`)
    REFERENCES `RestaurantDB`.`r_printers` (`PrinterId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
