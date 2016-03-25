CREATE TABLE `RestaurantDB`.`transaction_details` (
  `TransactionDetailsId` INT NOT NULL  AUTO_INCREMENT COMMENT '',
  `PaymentModeId` INT NULL COMMENT '',
  `Amount` DOUBLE NULL COMMENT '',
  `TransactionId` INT NULL COMMENT '',
  PRIMARY KEY (`TransactionDetailsId`)  COMMENT '',
  INDEX `FkTransactionDetailsPaymentModeId_idx` (`PaymentModeId` ASC)  COMMENT '',
  INDEX `FkTransactionDetailsTransactionId_idx` (`TransactionId` ASC)  COMMENT '',
  CONSTRAINT `FkTransactionDetailsPaymentModeId`
    FOREIGN KEY (`PaymentModeId`)
    REFERENCES `RestaurantDB`.`payment_mode_master` (`PaymentModeId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FkTransactionDetailsTransactionId`
    FOREIGN KEY (`TransactionId`)
    REFERENCES `RestaurantDB`.`transaction_master` (`TransactionId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
