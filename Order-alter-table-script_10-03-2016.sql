ALTER TABLE `RestaurantDB`.`orders` 
ADD COLUMN `TakeawayNo` DOUBLE NULL COMMENT '' AFTER `RestaurantId`,
ADD COLUMN `OrderType` INT NULL COMMENT '' AFTER `TakeawayNo`,
ADD INDEX `FkOrderOrderTypeId_idx` (`OrderType` ASC)  COMMENT '';
ALTER TABLE `RestaurantDB`.`orders` 
ADD CONSTRAINT `FkOrderOrderTypeId`
  FOREIGN KEY (`OrderType`)
  REFERENCES `RestaurantDB`.`order_type` (`OrderTypeId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;