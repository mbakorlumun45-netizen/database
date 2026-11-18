USE cape_codd

-- SELECT SKU, SKU_Description, WarehouseID, WarehouseCity, WarehouseState
-- FROM INVENTORY
-- WHERE WarehouseCity = 'Atlanta'
  -- OR WarehouseCity = 'Bangor'
  -- OR WarehouseCity = 'Chicago';

 SELECT SKU, SKU_Description, warehouseID, WarehouseCity, WarehouseState
 FROM INVENTORY
 WHERE Warehouse = 'Atlanta',
   OR  Warehouse = 'Bangor',
   OR  Warehouse = 'Chicago';