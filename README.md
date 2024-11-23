## 后端返回统一JSON格式

### 成功返回列表类型数据

```json
{
  "success": true,
  "code": 200,
  "message": "成功",
  "data": {
    "items": [
      {
        "id": "1",
        "name": "刘德华",
        "intro": "毕业于师范大学数学系，热爱教育事业，执教数学思维6年有余"
      }
    ]
  }
}

```

### 成功返回分页类型数据

```json
{
  "success": true,
  "code": 20000,
  "message": "成功",
  "data": {
    "total": 17,
    "rows": [
      {
        "id": "1",
        "name": "刘德华",
        "intro": "毕业于师范大学数学系，热爱教育事业，执教数学思维6年有余"
      }
    ]
  }
}

```

### 成功但无需返回数据

```json
{
  "success": true,
  "code": 20000,
  "message": "成功",
  "data": {}
}

```

### 失败

```json
{
  "success": false,
  "code": 20001,
  "message": "失败",
  "data": {}
}

```

### 统一定义格式

```json
{
  "success": 布尔, //响应是否成功
  "code": 数字, //响应码
  "message": 字符串, //返回消息
  "data": HashMap //返回数据，放在键值对中
}

```



## 仓库管理

| 仓库号 | 商品种类 | 地址 |  状态  |                          |
| :----: | :------: | :--: | :----: | :----------------------: |
|   1    |   999    | 广东 | active | **(停用\|启用) \| 删除** |

#### 显示仓库信息

​	http请求方式：GET

​	/vue/warehouse/get_all

```json
{
  "success": true,
  "code": 200,
  "message": "成功",
  "data": {
    "items": [
      {
        "warehouse_id": "1",
        "warehouse_name": "1",
        "type_count": "999"
        "location": "广东",
        "state": "1"
      }
    ]
  }
}
```



#### 增加仓库

  http请求方式：POST

​	/vue/warehouse/add

接受的data参数：

| warehouse_name | location |
| -------------- | -------- |
| string         | string   |

返回状态，无需返回数据

```json
//添加成功
{
  "success": true,
  "code": 20000,
  "message": "成功",
  "data": {}
}

//添加失败，可以考虑加个弹出框，提示失败原因
{
  "success": false,
  "code": 20001,
  "message": "失败",
  "data": {}
}
```



#### 修改仓库状态（active=1，inactive=0）

  http请求方式：PUT

/vue/warehouse/change

接受的data参数：

将当前该仓库的状态码返回后端，后端判断当前状态，是否该仓库当前状态一致，一致则改变当前状态响应成功，不一致则返回失败

| state |      |
| ----- | ---- |
| int   |      |

返回状态，无需返回数据

```json
//修改成功
{
  "success": true,
  "code": 20000,
  "message": "成功",
  "data": {}
}

//修改失败，可以考虑加个弹出框，提示失败原因
{
  "success": false,
  "code": 20001,
  "message": "失败",
  "data": {}
}
```

#### 删除仓库

http请求方式：DELETE

/vue/warehouse/remove

接受的data参数：

将需要删除的仓库的id返回给后端，后端判断是否满足删除条件，满足删除条件可以删除，不满足则提示失败。

| warehouse_id |
| ------------ |
| int          |

返回状态，无需返回数据

```json
//删除成功
{
  "success": true,
  "code": 20000,
  "message": "成功",
  "data": {}
}

//删除失败，可以考虑加个弹出框，提示失败原因
{
  "success": false,
  "code": 20001,
  "message": "失败",
  "data": {}
}
```

