ALTER TABLE `RestaurantDB`.`order_details` 
ADD COLUMN `SubMenuId` INT NULL COMMENT '' AFTER `MenuId`,
ADD INDEX `FkOrderDetailsSubMenuId_idx` (`SubMenuId` ASC)  COMMENT '';
ALTER TABLE `RestaurantDB`.`order_details` 
ADD CONSTRAINT `FkOrderDetailsSubMenuId`
  FOREIGN KEY (`SubMenuId`)
  REFERENCES `RestaurantDB`.`sub_menu` (`SubMenuId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
