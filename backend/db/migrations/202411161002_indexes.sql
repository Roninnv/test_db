-- 为货物名称创建索引
CREATE INDEX idx_goods_name ON goods (goods_name);

-- 为出库日志的日期创建索引
CREATE INDEX idx_outbound_date ON outbound_log (outbound_date);

-- 为货主ID创建索引
CREATE INDEX idx_owner_id ON outbound_log (owner_id);