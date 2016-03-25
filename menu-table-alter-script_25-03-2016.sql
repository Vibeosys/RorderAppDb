ALTER TABLE `RestaurantDB`.`menu` 
ADD COLUMN `FbTypeId` INT NULL COMMENT '' AFTER `RoomId`,
ADD INDEX `FkMenuFbTypeId_idx` (`FbTypeId` ASC)  COMMENT '';
ALTER TABLE `RestaurantDB`.`menu` 
ADD CONSTRAINT `FkMenuFbTypeId`
  FOREIGN KEY (`FbTypeId`)
  REFERENCES `RestaurantDB`.`fb_types` (`FbTypeId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
