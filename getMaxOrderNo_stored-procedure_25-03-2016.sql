CREATE DEFINER=`dev`@`%` PROCEDURE `getMaxOrderNo`(IN restId INT(11),OUT ordermaxno INT(11))
BEGIN
declare count int default 0;
select COUNT(*) into count from restaurant_orderno where RestaurantId=restId;
IF count = 0 THEN
    SET ordermaxno = count + 1 ;
    insert into restaurant_orderno values(restId,ordermaxno);
    select ordermaxno as maxId;
ELSE
	select OrderNo into ordermaxno from restaurant_orderno where RestaurantId=restId;
   SET ordermaxno = ordermaxno + 1 ;
    update restaurant_orderno set OrderNo = ordermaxno where RestaurantId = restId;
    select ordermaxno as maxId;
END IF;
END