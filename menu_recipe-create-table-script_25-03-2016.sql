CREATE TABLE `RestaurantDB`.`menu_recipe` (
  `MenuId` INT NOT NULL COMMENT '',
  `ItemId` INT NOT NULL COMMENT '',
  `quantity` DOUBLE NULL COMMENT '',
  `UnitId` INT NULL COMMENT '',
  PRIMARY KEY (`MenuId`, `ItemId`)  COMMENT '',
  INDEX `FkMenuRecipeItemId_idx` (`ItemId` ASC)  COMMENT '',
  INDEX `FkMenuRecipeUnitId_idx` (`UnitId` ASC)  COMMENT '',
  CONSTRAINT `FkMenuRecipeMenuId`
    FOREIGN KEY (`MenuId`)
    REFERENCES `RestaurantDB`.`menu` (`MenuId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FkMenuRecipeItemId`
    FOREIGN KEY (`ItemId`)
    REFERENCES `RestaurantDB`.`recipe_item_master` (`ItemId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FkMenuRecipeUnitId`
    FOREIGN KEY (`UnitId`)
    REFERENCES `RestaurantDB`.`unit_master` (`UnitId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
