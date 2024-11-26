use warehouse;

INSERT INTO warehouse (warehouse_name, location, status)
VALUES 
('Main Warehouse', 'Shantou City, Guangdong', 1),
('Secondary Warehouse', 'Guangzhou City, Guangdong', 1);

INSERT INTO goods (goods_name, goods_type, owner_name, price, quantity, warehouse_id)
VALUES 
('Laptop', 'Electronics', 'ABC Corp.', 5000.00, 100, 1),
('Phone', 'Electronics', 'XYZ Ltd.', 1500.00, 200, 1),
('Chair', 'Furniture', 'Furniture Inc.', 300.00, 50, 2),
('Desk', 'Furniture', 'Office Supplies', 800.00, 30, 2),
('Monitor', 'Electronics', 'Tech World', 1200.00, 60, 1),
('Keyboard', 'Electronics', 'Office Gear', 100.00, 150, 2),
('Mouse', 'Electronics', 'Tech Gear', 50.00, 180, 1),
('Headset', 'Electronics', 'Audio Co.', 300.00, 100, 1),
('Printer', 'Electronics', 'Print Solutions', 800.00, 40, 2),
('Router', 'Electronics', 'NetCom', 450.00, 70, 1),
('Hard Drive', 'Electronics', 'Storage Inc.', 700.00, 120, 1),
('SSD', 'Electronics', 'Speed Tech', 1000.00, 130, 1),
('Smartwatch', 'Electronics', 'FitLife', 200.00, 90, 2),
('Tablet', 'Electronics', 'PadTech', 1500.00, 60, 2),
('Camera', 'Electronics', 'Snap Ltd.', 2500.00, 80, 2),
('Speaker', 'Electronics', 'SoundWorks', 400.00, 150, 1),
('Microwave', 'Appliances', 'HomeTech', 700.00, 200, 1),
('Fridge', 'Appliances', 'FreshCo', 1500.00, 50, 2),
('Washing Machine', 'Appliances', 'CleanCo', 1200.00, 80, 2),
('Dishwasher', 'Appliances', 'Shine Tech', 800.00, 60, 2),
('Sofa', 'Furniture', 'Cozy Living', 1500.00, 40, 2),
('Couch', 'Furniture', 'Living Space', 2500.00, 60, 1),
('Table', 'Furniture', 'Furniture World', 600.00, 100, 2),
('Cabinet', 'Furniture', 'Home Decor', 900.00, 50, 2),
('Bed', 'Furniture', 'SleepComfort', 2000.00, 70, 2),
('Wardrobe', 'Furniture', 'Storage Solutions', 1200.00, 80, 1),
('Curtains', 'Furniture', 'Soft Fabrics', 100.00, 150, 1),
('Bookshelf', 'Furniture', 'Library Solutions', 350.00, 130, 1),
('Lamp', 'Furniture', 'Light Works', 150.00, 180, 2),
('Fan', 'Appliances', 'Cool Breeze', 200.00, 220, 1),
('Air Conditioner', 'Appliances', 'ComfortCool', 2500.00, 60, 2),
('Heater', 'Appliances', 'HeatTech', 1500.00, 40, 1),
('Juicer', 'Appliances', 'FreshBlend', 300.00, 100, 2),
('Blender', 'Appliances', 'SmoothMix', 250.00, 150, 2),
('Electric Kettle', 'Appliances', 'BoilEase', 100.00, 200, 1),
('Toaster', 'Appliances', 'ToastMaster', 80.00, 150, 1),
('Iron', 'Appliances', 'IronCo', 120.00, 80, 2),
('Vacuum Cleaner', 'Appliances', 'CleanMaster', 350.00, 90, 2),
('Coffeemaker', 'Appliances', 'BrewPro', 500.00, 200, 1),
('Water Filter', 'Appliances', 'PureFlow', 150.00, 180, 1),
('Electric Fan', 'Appliances', 'WindTech', 80.00, 150, 2),
('Bicycle', 'Sports', 'CycleWorks', 800.00, 60, 2),
('Treadmill', 'Sports', 'FitTech', 1200.00, 30, 2),
('Dumbbells', 'Sports', 'PowerFit', 100.00, 150, 1),
('Yoga Mat', 'Sports', 'StretchFit', 50.00, 200, 1);

INSERT INTO inbound_log (goods_id, goods_name, quantity, price, warehouse_id, owner_name)
VALUES 
(1, 'Laptop', 100, 5000.00, 1, 'ABC Corp.'),
(2, 'Phone', 200, 1500.00, 1, 'XYZ Ltd.'),
(3, 'Chair', 50, 300.00, 2, 'Furniture Inc.'),
(4, 'Desk', 30, 800.00, 2, 'Office Supplies'),
(5, 'Monitor', 60, 1200.00, 1, 'Tech World'),
(6, 'Keyboard', 150, 100.00, 2, 'Office Gear'),
(7, 'Mouse', 180, 50.00, 1, 'Tech Gear'),
(8, 'Headset', 100, 300.00, 1, 'Audio Co.'),
(9, 'Printer', 40, 800.00, 2, 'Print Solutions'),
(10, 'Router', 70, 450.00, 1, 'NetCom'),
(11, 'Hard Drive', 120, 700.00, 1, 'Storage Inc.'),
(12, 'SSD', 130, 1000.00, 1, 'Speed Tech'),
(13, 'Smartwatch', 90, 200.00, 2, 'FitLife'),
(14, 'Tablet', 60, 1500.00, 2, 'PadTech'),
(15, 'Camera', 80, 2500.00, 2, 'Snap Ltd.'),
(16, 'Speaker', 150, 400.00, 1, 'SoundWorks'),
(17, 'Microwave', 200, 700.00, 1, 'HomeTech'),
(18, 'Fridge', 50, 1500.00, 2, 'FreshCo'),
(19, 'Washing Machine', 80, 1200.00, 2, 'CleanCo'),
(20, 'Dishwasher', 60, 800.00, 2, 'Shine Tech'),
(21, 'Sofa', 40, 1500.00, 2, 'Cozy Living'),
(22, 'Couch', 60, 2500.00, 1, 'Living Space'),
(23, 'Table', 100, 600.00, 2, 'Furniture World'),
(24, 'Cabinet', 50, 900.00, 2, 'Home Decor'),
(25, 'Bed', 70, 2000.00, 2, 'SleepComfort'),
(26, 'Wardrobe', 80, 1200.00, 1, 'Storage Solutions'),
(27, 'Curtains', 150, 100.00, 1, 'Soft Fabrics'),
(28, 'Bookshelf', 130, 350.00, 1, 'Library Solutions'),
(29, 'Lamp', 180, 150.00, 2, 'Light Works'),
(30, 'Fan', 220, 200.00, 1, 'Cool Breeze'),
(31, 'Air Conditioner', 60, 2500.00, 2, 'ComfortCool'),
(32, 'Heater', 40, 1500.00, 1, 'HeatTech'),
(33, 'Juicer', 100, 300.00, 2, 'FreshBlend'),
(34, 'Blender', 150, 250.00, 2, 'SmoothMix'),
(35, 'Electric Kettle', 200, 100.00, 1, 'BoilEase'),
(36, 'Toaster', 150, 80.00, 1, 'ToastMaster'),
(37, 'Iron', 80, 120.00, 2, 'IronCo'),
(38, 'Vacuum Cleaner', 90, 350.00, 2, 'CleanMaster'),
(39, 'Coffeemaker', 200, 500.00, 1, 'BrewPro'),
(40, 'Water Filter', 180, 150.00, 1, 'PureFlow'),
(41, 'Electric Fan', 150, 80.00, 2, 'WindTech'),
(42, 'Bicycle', 60, 800.00, 2, 'CycleWorks'),
(43, 'Treadmill', 30, 1200.00, 2, 'FitTech'),
(44, 'Dumbbells', 150, 100.00, 1, 'PowerFit'),
(45, 'Yoga Mat', 200, 50.00, 1, 'StretchFit');

INSERT INTO outbound_log (goods_id, goods_name, quantity, price, warehouse_id, owner_name)
VALUES 
(1, 'Laptop', 10, 5000.00, 1, 'ABC Corp.'),
(2, 'Phone', 20, 1500.00, 1, 'XYZ Ltd.'),
(3, 'Chair', 5, 300.00, 2, 'Furniture Inc.'),
(4, 'Desk', 3, 800.00, 2, 'Office Supplies'),
(5, 'Monitor', 15, 1200.00, 1, 'Tech World'),
(6, 'Keyboard', 20, 100.00, 2, 'Office Gear'),
(7, 'Mouse', 10, 50.00, 1, 'Tech Gear'),
(8, 'Headset', 15, 300.00, 1, 'Audio Co.'),
(9, 'Printer', 5, 800.00, 2, 'Print Solutions'),
(10, 'Router', 10, 450.00, 1, 'NetCom'),
(11, 'Hard Drive', 15, 700.00, 1, 'Storage Inc.'),
(12, 'SSD', 25, 1000.00, 1, 'Speed Tech'),
(13, 'Smartwatch', 30, 200.00, 2, 'FitLife'),
(14, 'Tablet', 10, 1500.00, 2, 'PadTech'),
(15, 'Camera', 5, 2500.00, 2, 'Snap Ltd.'),
(16, 'Speaker', 10, 400.00, 1, 'SoundWorks'),
(17, 'Microwave', 5, 700.00, 1, 'HomeTech'),
(18, 'Fridge', 3, 1500.00, 2, 'FreshCo'),
(19, 'Washing Machine', 2, 1200.00, 2, 'CleanCo'),
(20, 'Dishwasher', 4, 800.00, 2, 'Shine Tech'),
(21, 'Sofa', 2, 1500.00, 2, 'Cozy Living'),
(22, 'Couch', 3, 2500.00, 1, 'Living Space'),
(23, 'Table', 10, 600.00, 2, 'Furniture World'),
(24, 'Cabinet', 5, 900.00, 2, 'Home Decor'),
(25, 'Bed', 3, 2000.00, 2, 'SleepComfort'),
(26, 'Wardrobe', 7, 1200.00, 1, 'Storage Solutions'),
(27, 'Curtains', 10, 100.00, 1, 'Soft Fabrics'),
(28, 'Bookshelf', 5, 350.00, 1, 'Library Solutions'),
(29, 'Lamp', 15, 150.00, 2, 'Light Works'),
(30, 'Fan', 5, 200.00, 1, 'Cool Breeze'),
(31, 'Air Conditioner', 2, 2500.00, 2, 'ComfortCool'),
(32, 'Heater', 1, 1500.00, 1, 'HeatTech'),
(33, 'Juicer', 3, 300.00, 2, 'FreshBlend'),
(34, 'Blender', 4, 250.00, 2, 'SmoothMix'),
(35, 'Electric Kettle', 5, 100.00, 1, 'BoilEase'),
(36, 'Toaster', 2, 80.00, 1, 'ToastMaster'),
(37, 'Iron', 1, 120.00, 2, 'IronCo'),
(38, 'Vacuum Cleaner', 2, 350.00, 2, 'CleanMaster'),
(39, 'Coffeemaker', 5, 500.00, 1, 'BrewPro'),
(40, 'Water Filter', 10, 150.00, 1, 'PureFlow'),
(41, 'Electric Fan', 7, 80.00, 2, 'WindTech'),
(42, 'Bicycle', 5, 800.00, 2, 'CycleWorks'),
(43, 'Treadmill', 2, 1200.00, 2, 'FitTech'),
(44, 'Dumbbells', 20, 100.00, 1, 'PowerFit'),
(45, 'Yoga Mat', 30, 50.00, 1, 'StretchFit');