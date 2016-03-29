ALTER TABLE `RestaurantDB`.`stock_update_header` 
ADD COLUMN `RestaurantId` INT NULL COMMENT '' AFTER `UpdatedDate`,
ADD INDEX `FkStockUpdateRestaurantId_idx` (`RestaurantId` ASC)  COMMENT '';
ALTER TABLE `RestaurantDB`.`stock_update_header` 
ADD CONSTRAINT `FkStockUpdateRestaurantId`
  FOREIGN KEY (`RestaurantId`)
  REFERENCES `RestaurantDB`.`restaurant` (`RestaurantId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
