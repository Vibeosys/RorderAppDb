ALTER TABLE `RestaurantDB`.`takeaway` 
CHANGE COLUMN `UserId` `UserId` VARCHAR(45) NULL DEFAULT NULL COMMENT '' ,
ADD INDEX `TakeAwayCustId_idx` (`CustId` ASC)  COMMENT '',
ADD INDEX `TakeawayRestaurantId_idx` (`RestaurantId` ASC)  COMMENT '',
ADD INDEX `TakeawayUserId_idx` (`UserId` ASC)  COMMENT '',
ADD INDEX `TakeawaySourceId_idx` (`SourceId` ASC)  COMMENT '';
ALTER TABLE `RestaurantDB`.`takeaway` 
ADD CONSTRAINT `TakeawayCustId`
  FOREIGN KEY (`CustId`)
  REFERENCES `RestaurantDB`.`customer` (`CustId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `TakeawayRestaurantId`
  FOREIGN KEY (`RestaurantId`)
  REFERENCES `RestaurantDB`.`restaurant` (`RestaurantId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `TakeawayUserId`
  FOREIGN KEY (`UserId`)
  REFERENCES `RestaurantDB`.`users` (`UserId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `TakeawaySourceId`
  FOREIGN KEY (`SourceId`)
  REFERENCES `RestaurantDB`.`takeaway_source` (`SourceId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
