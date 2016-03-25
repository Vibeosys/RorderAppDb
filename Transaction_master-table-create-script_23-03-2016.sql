CREATE TABLE `RestaurantDB`.`transaction_master` (
  `TransactionId` INT NOT NULL  AUTO_INCREMENT COMMENT '',
  `RestaurantId` INT NULL COMMENT '',
  `Day` VARCHAR(45) NULL COMMENT '',
  `Month` VARCHAR(45) NULL COMMENT '',
  `Year` VARCHAR(45) NULL COMMENT '',
  `TotalSales` DOUBLE NULL COMMENT '',
  PRIMARY KEY (`TransactionId`)  COMMENT '',
  INDEX `FkTransactionMasterRestaurantId_idx` (`RestaurantId` ASC)  COMMENT '',
  CONSTRAINT `FkTransactionMasterRestaurantId`
    FOREIGN KEY (`RestaurantId`)
    REFERENCES `RestaurantDB`.`restaurant` (`RestaurantId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
