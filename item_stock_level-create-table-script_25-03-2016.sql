CREATE TABLE `RestaurantDB`.`item_stock_level` (
  `StockLevelId` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `ItemId` INT NULL COMMENT '',
  `Opening` DOUBLE NULL COMMENT '',
  `Closing` DOUBLE NULL COMMENT '',
  `Day` VARCHAR(45) NULL COMMENT '',
  `Month` VARCHAR(45) NULL COMMENT '',
  `Year` VARCHAR(45) NULL COMMENT '',
  `UnitId` INT NULL COMMENT '',
  `RestaurantId` INT NULL COMMENT '',
  PRIMARY KEY (`StockLevelId`)  COMMENT '',
  INDEX `FkItemStockLevelItemId_idx` (`ItemId` ASC)  COMMENT '',
  INDEX `FkItemStockLevelUnitId_idx` (`UnitId` ASC)  COMMENT '',
  INDEX `FkItemStockLevelRestaurantId_idx` (`RestaurantId` ASC)  COMMENT '',
  CONSTRAINT `FkItemStockLevelItemId`
    FOREIGN KEY (`ItemId`)
    REFERENCES `RestaurantDB`.`recipe_item_master` (`ItemId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FkItemStockLevelUnitId`
    FOREIGN KEY (`UnitId`)
    REFERENCES `RestaurantDB`.`unit_master` (`UnitId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION),
  CONSTRAINT `FkItemStockLevelRestaurantId`
  FOREIGN KEY (`RestaurantId`)
  REFERENCES `RestaurantDB`.`restaurant` (`RestaurantId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
