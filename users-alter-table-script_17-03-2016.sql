ALTER TABLE `RestaurantDB`.`users` 
ADD COLUMN `Permissions` VARCHAR(45) NULL  DEFAULT 0 COMMENT '' AFTER `RestaurantId`;
