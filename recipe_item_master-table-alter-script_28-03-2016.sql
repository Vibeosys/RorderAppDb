ALTER TABLE `RestaurantDB`.`recipe_item_master` 
ADD COLUMN `RestaurantId` INT NULL COMMENT '' AFTER `QtyInHand`,
ADD INDEX `FkRecipeItemRestaurantId_idx` (`RestaurantId` ASC)  COMMENT '';
ALTER TABLE `RestaurantDB`.`recipe_item_master` 
ADD CONSTRAINT `FkRecipeItemRestaurantId`
  FOREIGN KEY (`RestaurantId`)
  REFERENCES `RestaurantDB`.`restaurant` (`RestaurantId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
