USE `RestaurantDB`;
DROP procedure IF EXISTS `getMaxDeliveryNo`;

DELIMITER $$
USE `RestaurantDB`$$
CREATE DEFINER=`dev`@`%` PROCEDURE `getMaxDelivryNo`(IN restId INT(11),OUT deliverymaxno INT(11))
BEGIN
declare count int default 0;
select COUNT(*) into count from restaurant_deliveryno where RestaurantId=restId;
IF count = 0 THEN
    SET deliverymaxno = count + 1 ;
    insert into restaurant_deliveryno values(restId,deliverymaxno);
    select deliverymaxno as maxId;
ELSE
	select DeliveryNo into deliverymaxno from restaurant_deliveryno where RestaurantId=restId;
   SET deliverymaxno = deliverymaxno + 1 ;
    update restaurant_deliveryno set DeliveryNo = deliverymaxno where RestaurantId = restId;
    select deliverymaxno as maxId;
END IF;
END$$

DELIMITER ;

