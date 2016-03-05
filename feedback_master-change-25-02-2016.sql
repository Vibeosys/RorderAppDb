ALTER TABLE `RestaurantDB`.`feedback_master` 
DROP FOREIGN KEY `FkFeedbackRestaurantId`;
ALTER TABLE `RestaurantDB`.`feedback_master` 
DROP COLUMN `RestaurantId`,
DROP INDEX `FkFeedbackRestaurantId_idx` ;