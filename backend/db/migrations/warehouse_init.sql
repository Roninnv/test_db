CREATE DATABASE IF NOT EXISTS warehouse;
USE warehouse;

-- 仓库表
CREATE TABLE warehouse (
    warehouse_id INT AUTO_INCREMENT PRIMARY KEY,
    warehouse_name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    status TINYINT(1) NOT NULL DEFAULT 1
);

-- 货物表
CREATE TABLE goods (
    goods_id INT AUTO_INCREMENT PRIMARY KEY,
    goods_name VARCHAR(18) NOT NULL,
    goods_type VARCHAR(18) NOT NULL,
    owner_name VARCHAR(10) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    warehouse_id INT,
    FOREIGN KEY (warehouse_id) REFERENCES warehouse(warehouse_id)
);

-- 入库日志表
CREATE TABLE inbound_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    goods_id INT NOT NULL,
    goods_name VARCHAR(18) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    warehouse_id INT NOT NULL,
    owner_name VARCHAR(255) NOT NULL,
    inbound_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (goods_id) REFERENCES goods(goods_id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouse(warehouse_id)
);

-- 出库日志表
CREATE TABLE outbound_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    goods_id INT NOT NULL,
    goods_name VARCHAR(18) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    warehouse_id INT NOT NULL,
    owner_name VARCHAR(255) NOT NULL,
    outbound_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (goods_id) REFERENCES goods(goods_id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouse(warehouse_id)
);
