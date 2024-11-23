# 获取仓库货物表API
**请求方法**: GET  
**请求路径**: /api/goods  
**请求参数**:
```json
{
  "table": "goods"
}
```

**成功返回数据**:
```json
{
  "success": true,
  "code": 200,
  "message": "successful",
  "date": {
    "items": [
      { "goods_name": "coffee",
        "goods_type": "drinks",
        "owner_name": "John",
        "price": 100.00,
        "quantity": 50, 
        "warehouse_id": 1,
      },
      { "goods_name": "coke",
        "goods_type": "drinks",
        "owner_name": "johnson",
        "price": "2.5",
        "quantity": 100, 
        "warehouse_id": 1,
      }
    ]
  }
}
```

**失败返回数据**:
```json
{
  "success": false,
  "code": 400,
  "message": "unsuccessful",
  "data": {}
}
```

# 获取入库日志表API
**请求方法**: GET  
**请求路径**: /api/inbound_log  
**请求参数**:
```json
{
  "table": "inbound_log"
}
```

**成功返回数据**:
```json
{
  "success": true,
  "code": 200,
  "message": "successful",
  "date": {
    "items": [
      { "log_id": 1,
        "goods_id": 1,
        "quantity": 50,
        "price": 100.00,
        "warehouse_id": 1,
        "owner_name": "john",
        "inbound_date": "",
      },
      { "log_id": 2,
        "goods_id": 2,
        "quantity": 100,
        "price": 2.50,
        "warehouse_id": 2,
        "owner_name": "johnson",
        "inbound_date": "",
      }
    ]
  }
}
```

**失败返回数据**:
```json
{
  "success": false,
  "code": 400,
  "message": "unsuccessful",
  "data": {}
}
```

# 获取出库日志表API
**请求方法**: GET  
**请求路径**: /api/outbound_log   
**请求参数**:
```json
{
  "table": "outbound_log"
}
```

**成功返回数据**:
```json
{
  "success": true,
  "code": 200,
  "message": "successful",
  "date": {
    "items": [
      { "log_id": 1,
        "goods_id": 1,
        "quantity": 50,
        "price": 100.00,
        "warehouse_id": 1,
        "owner_name": "john",
        "inbound_date": "",
      },
      { "log_id": 2,
        "goods_id": 2,
        "quantity": 100,
        "price": 2.50,
        "warehouse_id": 2,
        "owner_name": "johnson",
        "inbound_date": "",
      }
    ]
  }
}
```

**失败返回数据**:
```json
{
  "success": false,
  "code": 400,
  "message": "unsuccessful",
  "data": {}
}
```