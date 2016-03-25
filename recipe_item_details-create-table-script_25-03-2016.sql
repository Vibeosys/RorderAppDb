CREATE TABLE `RestaurantDB`.`recipe_item_details` (
  `ItemDetailsId` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `ItemId` INT NULL COMMENT '',
  `BrandId` INT NULL COMMENT '',
  `Quantity` DOUBLE NULL COMMENT '',
  `RorderLevel` DOUBLE NULL COMMENT '',
  PRIMARY KEY (`ItemDetailsId`)  COMMENT '',
  INDEX `FkRecipeItemItemId_idx` (`ItemId` ASC)  COMMENT '',
  INDEX `FkRecipeItemBrandId_idx` (`BrandId` ASC)  COMMENT '',
  CONSTRAINT `FkRecipeItemItemId`
    FOREIGN KEY (`ItemId`)
    REFERENCES `RestaurantDB`.`recipe_item_master` (`ItemId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FkRecipeItemBrandId`
    FOREIGN KEY (`BrandId`)
    REFERENCES `RestaurantDB`.`item_brand` (`BrandId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
