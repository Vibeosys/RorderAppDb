ALTER TABLE `RestaurantDB`.`menu` 
ADD COLUMN `RoomId` INT NULL COMMENT '' AFTER `RestaurantId`,
ADD INDEX `FkMenuRoomId_idx` (`RoomId` ASC)  COMMENT '';
ALTER TABLE `RestaurantDB`.`menu` 
ADD CONSTRAINT `FkMenuRoomId`
  FOREIGN KEY (`RoomId`)
  REFERENCES `RestaurantDB`.`r_rooms` (`RoomId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
