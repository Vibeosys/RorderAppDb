ALTER TABLE `RestaurantDB`.`recipe_item_master` 
ADD COLUMN `LeadTime` INT NULL COMMENT '' AFTER `QtyInHand`;
ADD COLUMN `ItemCategoryId` INT NULL COMMENT '' AFTER `RestaurantId`,
ADD COLUMN `UnitPrice` DOUBLE NULL COMMENT '' AFTER `ItemCategoryId`,
ADD INDEX `FkRecipeItemMasterCategoryId_idx` (`ItemCategoryId` ASC)  COMMENT '';
ALTER TABLE `RestaurantDB`.`recipe_item_master` 
ADD CONSTRAINT `FkRecipeItemMasterCategoryId`
  FOREIGN KEY (`ItemCategoryId`)
  REFERENCES `RestaurantDB`.`item_category` (`ItemCategoryId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

