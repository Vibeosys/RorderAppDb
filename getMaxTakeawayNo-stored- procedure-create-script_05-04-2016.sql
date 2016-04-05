USE `RestaurantDB`;
DROP procedure IF EXISTS `getMaxTakeawayNo`;

DELIMITER $$
USE `RestaurantDB`$$
CREATE DEFINER=`dev`@`%` PROCEDURE `getMaxTakawayNo`(IN restId INT(11),OUT takeawaymaxno INT(11))
BEGIN
declare count int default 0;
select COUNT(*) into count from restaurant_takeawayno where RestaurantId=restId;
IF count = 0 THEN
    SET takeawaymaxno = count + 1 ;
    insert into restaurant_takeawayno values(restId,takeawaymaxno);
    select takeawaymaxno as maxId;
ELSE
	select TakeawayNo into takeawaymaxno from restaurant_takeawayno where RestaurantId=restId;
   SET takeawaymaxno = takeawaymaxno + 1 ;
    update restaurant_takeawayno set TakeawayNo = takeawaymaxno where RestaurantId = restId;
    select takeawaymaxno as maxId;
END IF;
END$$

DELIMITER ;

