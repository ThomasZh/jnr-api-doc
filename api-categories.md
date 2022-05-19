# API Categories

## 查询分类列表

### Method
POST

### URL
http://jnr.host:9022/api/cyber/categories/filter

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| currPage    | int       | 当前页码数，默认=1 | No |
| pageSize | int        | 每页数据大小，默认=20 | No |
| orders | Object        | 排序规则，默认=[]。 | No |
| searchs | Object        | 查询条件，默认=[]。 | No |

### Request Example
```
{
	"currPage": 1,
	"pageSize": 20,
    "orders": [{ "column": "priority", "dir": "asc" }],
    "searchs": [{ "column": "name", "op": "like", "value": "linux" }]
}
```

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | Query success |
| 401 | Unauthorized | Not login |
| 403 | Forbidden | 无此权限 |

### Responses Example
```
{
    "errCode": 200,
    "errMsg": "Success",
    "currPage": 1,
    "pageSize": 10,
    "totalNum": 9,
    "totalPage": 1,
    "datas": [
        {
            "id": "1917f866ce5911ec85a638c9860954df",
            "name": "ui",
            "num": 36
        },
				......
    ]
}
```

## 创建分类

### Method
POST

### URL
http://jnr.host:9022/api/cyber/categories

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| name    | String       | 分类名称 | Yes |

### Request Example
```
{
    "name": "linux",
}
```

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | 操作成功 |
| 400 | Bad Request | Input fields not valided|
| 401 | Unauthorized | Not login |
| 403 | Forbidden | 无此权限 |

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success",
	"data": "46f7083dd6b611ec98b038c9860954df"
}
```


## 修改分类

### Method
PUT

### URL
http://jnr.host:9022/api/cyber/categories/:categoryId

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| name    | String       | 分类名称 | Yes |

### Request Example
```
{
    "name": "linux",
}
```

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | 操作成功 |
| 400 | Bad Request | Input fields not valided|
| 401 | Unauthorized | Not login |
| 403 | Forbidden | 无此权限 |

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success"
}
```

## 删除分类

### Method
DELETE

### URL
http://jnr.host:9022/api/cyber/categories/:categoryId

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | 操作成功 |
| 401 | Unauthorized | Not login |
| 403 | Forbidden | 无此权限 |
| 404 | Not Found | 无此角色 |

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success"
}
```

## 查询分类

### Method
GET

### URL
http://jnr.host:9022/api/cyber/categories/:categoryId

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | 操作成功 |
| 401 | Unauthorized | Not login |
| 403 | Forbidden | 无此权限 |
| 404 | Not Found | 无此策略 |

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success",
	"data":	{
        "id": "043c46422aa111ec881d38c9860954df",
        "name": "linux",
    }    
}
```
