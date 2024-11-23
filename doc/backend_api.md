# 获取仓库货物表API
**请求方法**: GET  
**请求路径**: /api/goods  
**请求参数**:
```json
{
  "table": "goods"
}
```

**返回示例**:
```json
{
  "goods_id": [
    { "goods_name": "coffee",
      "goods_type": "drinks",
      "owner_id": "John",
      "price": 100.00,
      "quantity": 50, 
      "warehouse_id": 1,
    }
  ],
  "goods_id": [
    { "goods_name": "coke",
      "goods_type": "drinks",
      "owner_id": "johnson",
      "price": "2.5",
      "quantity": 100, 
      "warehouse_id": 1,
    }
  ]
}
```

# 获取入库日志表API
**请求方法**: GET  
**请求路径**: /api/goods  
**请求参数**:
```json
{
  "table": "inbound_log"
}
```

**返回示例**:
```json
{
  "goods_id": [
    { "log_id": 1,
      "goods_id": 1,
      "quantity": 50,
      "price": 100.00,
      "warehouse_id": 1,
      "owner_id": "john",
      "inbound_date": "",
    }
  ],
  "goods_id": [
    { "log_id": 2,
      "goods_id": 2,
      "quantity": 100,
      "price": 2.50,
      "warehouse_id": 2,
      "owner_id": "johnson",
      "inbound_date": "",
    }
  ]
}
```