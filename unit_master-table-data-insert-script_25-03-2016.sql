INSERT INTO `RestaurantDB`.`unit_master` (`UnitId`, `UnitTitle`, `CunitTitle`, `Cfactor`, `Quantity`) VALUES ('1', 'Kg', 'grams', '1000', '1');
INSERT INTO `RestaurantDB`.`unit_master` (`UnitId`, `UnitTitle`, `CunitTitle`, `Cfactor`, `Quantity`, `ParentId`) VALUES ('2', 'grams', 'Kg', '0.0001', '1', '1');
INSERT INTO `RestaurantDB`.`unit_master` (`UnitId`, `UnitTitle`, `CunitTitle`, `Cfactor`, `Quantity`) VALUES ('3', 'Litre', 'ml', '1000', '1');
INSERT INTO `RestaurantDB`.`unit_master` (`UnitId`, `UnitTitle`, `CunitTitle`, `Cfactor`, `Quantity`, `ParentId`) VALUES ('4', 'ml', 'Litre', '0.0001', '1', '3');
INSERT INTO `RestaurantDB`.`unit_master` (`UnitId`, `UnitTitle`, `Quantity`) VALUES ('5', 'Units', '1');
