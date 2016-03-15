CREATE TABLE `RestaurantDB`.`r_printers` (
  `PrinterId` INT NOT NULL COMMENT '',
  `IpAddress` VARCHAR(45) NOT NULL COMMENT '',
  `PrinterName` VARCHAR(45) NULL COMMENT '',
  `ModelName` VARCHAR(45) NULL COMMENT '',
  `Company` VARCHAR(45) NULL COMMENT '',
  `MacAddress` VARCHAR(45) NULL COMMENT '',
  `RestaurantId` INT NULL COMMENT '',
  `Active` INT NULL COMMENT '',
  PRIMARY KEY (`PrinterId`)  COMMENT '',
  INDEX `FkRprinters_idx` (`RestaurantId` ASC)  COMMENT '',
  CONSTRAINT `FkRprinters`
    FOREIGN KEY (`RestaurantId`)
    REFERENCES `RestaurantDB`.`restaurant` (`RestaurantId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);