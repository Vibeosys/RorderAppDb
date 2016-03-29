ALTER TABLE `RestaurantDB`.`item_stock_level` 
ADD COLUMN `RestaurantId` INT NULL COMMENT '' AFTER `UnitId`,
ADD INDEX `FkItemStockLevelRestaurantId_idx` (`RestaurantId` ASC)  COMMENT '';
ALTER TABLE `RestaurantDB`.`item_stock_level` 
ADD CONSTRAINT `FkItemStockLevelRestaurantId`
  FOREIGN KEY (`RestaurantId`)
  REFERENCES `RestaurantDB`.`restaurant` (`RestaurantId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
