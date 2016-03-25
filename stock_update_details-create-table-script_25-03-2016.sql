CREATE TABLE `RestaurantDB`.`stock_update_details` (
  `StockUpdateDetailsId` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `StockUpdateId` INT NULL COMMENT '',
  `ItemId` INT NULL COMMENT '',
  `Quantity` DOUBLE NULL COMMENT '',
  `UnitId` INT NULL COMMENT '',
  PRIMARY KEY (`StockUpdateDetailsId`)  COMMENT '',
  INDEX `FkStockUpdateDetailsStockUpdateId_idx` (`StockUpdateId` ASC)  COMMENT '',
  INDEX `FkStockUpdateDetailsItemId_idx` (`ItemId` ASC)  COMMENT '',
  INDEX `FkStockUpdateDetailsUnitId_idx` (`UnitId` ASC)  COMMENT '',
  CONSTRAINT `FkStockUpdateDetailsStockUpdateId`
    FOREIGN KEY (`StockUpdateId`)
    REFERENCES `RestaurantDB`.`stock_update_header` (`StockUpdateId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FkStockUpdateDetailsItemId`
    FOREIGN KEY (`ItemId`)
    REFERENCES `RestaurantDB`.`recipe_item_master` (`ItemId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FkStockUpdateDetailsUnitId`
    FOREIGN KEY (`UnitId`)
    REFERENCES `RestaurantDB`.`unit_master` (`UnitId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
