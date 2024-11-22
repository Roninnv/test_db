CREATE VIEW view_inbound_goods AS
SELECT 
    g.goods_id,
    g.goods_name,
    g.owner_id,
    g.warehouse_id,
    w.warehouse_name,
    il.quantity AS inbound_quantity,
    il.price AS inbound_price,
    il.inbound_date
FROM 
    inbound_log il
JOIN 
    goods g ON il.goods_id = g.goods_id
JOIN 
    warehouse w ON il.warehouse_id = w.warehouse_id;


CREATE VIEW view_outbound_goods AS
SELECT 
    g.goods_id,
    g.goods_name,
    g.owner_id,
    g.warehouse_id,
    w.warehouse_name,
    ol.quantity AS outbound_quantity,
    ol.price AS outbound_price,
    ol.outbound_date
FROM 
    outbound_log ol
JOIN 
    goods g ON ol.goods_id = g.goods_id
JOIN 
    warehouse w ON ol.warehouse_id = w.warehouse_id;


CREATE VIEW view_goods_inventory AS
SELECT 
    g.goods_id,
    g.goods_name,
    g.owner_id,
    g.warehouse_id,
    w.warehouse_name,
    g.quantity AS current_quantity
FROM 
    goods g
JOIN 
    warehouse w ON g.warehouse_id = w.warehouse_id;


CREATE VIEW view_goods_price_history AS
SELECT 
    g.goods_id,
    g.goods_name,
    g.owner_id,
    g.price AS current_price,
    gph.old_price,
    gph.new_price,
    gph.change_date
FROM 
    goods_price_history gph
JOIN 
    goods g ON gph.goods_id = g.goods_id;


CREATE VIEW view_owner_inventory AS
SELECT 
    g.goods_id,
    g.goods_name,
    g.owner_id,
    g.warehouse_id,
    w.warehouse_name,
    g.quantity AS current_quantity
FROM 
    goods g
JOIN 
    warehouse w ON g.warehouse_id = w.warehouse_id;


CREATE VIEW view_goods_flow AS
SELECT 
    g.goods_id,
    g.goods_name,
    g.owner_id,
    g.warehouse_id,
    w.warehouse_name,
    COALESCE(SUM(il.quantity), 0) AS total_inbound,
    COALESCE(SUM(ol.quantity), 0) AS total_outbound,
    (COALESCE(SUM(il.quantity), 0) - COALESCE(SUM(ol.quantity), 0)) AS current_stock
FROM 
    goods g
JOIN 
    warehouse w ON g.warehouse_id = w.warehouse_id
LEFT JOIN 
    inbound_log il ON g.goods_id = il.goods_id
LEFT JOIN 
    outbound_log ol ON g.goods_id = ol.goods_id
GROUP BY 
    g.goods_id, g.goods_name, g.owner_id, g.warehouse_id, w.warehouse_name;
