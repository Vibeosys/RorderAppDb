CREATE TABLE `RestaurantDB`.`sales_history` (
  `RestaurantId` INT NOT NULL COMMENT '',
  `Month` VARCHAR(45) NOT NULL COMMENT '',
  `Year` VARCHAR(45) NOT NULL COMMENT '',
  `BillNetAmount` VARCHAR(45) NULL COMMENT '',
  `BillTaxAmount` VARCHAR(45) NULL COMMENT '',
  `BillTotalAmount` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`RestaurantId`, `Month`, `Year`)  COMMENT '');
  
  
