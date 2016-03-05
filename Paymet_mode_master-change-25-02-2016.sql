ALTER TABLE `RestaurantDB`.`payment_mode_master` 
DROP FOREIGN KEY `FkPaymentModeRestaurantId`;
ALTER TABLE `RestaurantDB`.`payment_mode_master` 
DROP COLUMN `RestaurantId`,
DROP INDEX `FkPaymentModeRestaurantId_idx` ;