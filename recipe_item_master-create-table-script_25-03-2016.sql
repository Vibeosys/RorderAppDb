CREATE TABLE `RestaurantDB`.`recipe_item_master` (
  `ItemId` INT NOT NULL  COMMENT '',
  `ItemName` VARCHAR(45) NULL COMMENT '',
  `UnitId` INT NULL COMMENT '',
  `SafetyLevel` DOUBLE NULL DEFAULT NULL COMMENT '',
  `RorderLevel` DOUBLE NULL DEFAULT NULL COMMENT '',
  `QtyInHand` DOUBLE NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`ItemId`)  COMMENT '',
  INDEX `FkRecipeItemMasterUnitId_idx` (`UnitId` ASC)  COMMENT '',
  CONSTRAINT `FkRecipeItemMasterUnitId`
    FOREIGN KEY (`UnitId`)
    REFERENCES `RestaurantDB`.`unit_master` (`UnitId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
	
	ALTER TABLE RestaurantDB.recipe_item_master AUTO_INCREMENT = 1000;
