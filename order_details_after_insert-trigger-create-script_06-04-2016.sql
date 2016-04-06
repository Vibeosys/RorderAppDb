CREATE DEFINER=`dev`@`%` TRIGGER `RestaurantDB`.`order_details_AFTER_INSERT` AFTER INSERT ON `order_details` FOR EACH ROW
BEGIN
declare done int default false;
DECLARE ids int;
DECLARE qty float;
DECLARE recipeunit int;
DECLARE itemunit int;
DECLARE factor float default 1;
DECLARE cur CURSOR FOR select ItemId,quantity,UnitId from `RestaurantDB`.`menu_recipe` where MenuId = NEW.MenuId;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
        ins_loop: LOOP
            FETCH cur INTO ids,qty,recipeunit;
            IF done THEN
                LEAVE ins_loop;
            END IF;
            select UnitId from `RestaurantDB`.`recipe_item_master` where ItemId = ids INTO itemunit;
            IF recipeunit = itemunit THEN
            update `RestaurantDB`.`recipe_item_master` set QtyInHand = ROUND(QtyInHand- NEW.OrderQuantity * qty,2) where ItemId = ids;
            ELSE 
            select Cfactor from `RestaurantDB`.`unit_master` where UnitId = recipeunit INTO factor; 
            update `RestaurantDB`.`recipe_item_master` set QtyInHand = ROUND(QtyInHand- NEW.OrderQuantity * (qty * factor),2) where ItemId = ids;
            END IF;
        END LOOP;
    CLOSE cur;
END