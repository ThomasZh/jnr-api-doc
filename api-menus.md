# API Menus


## 查询菜单列表

### Method
POST

### URL
http://jnr.host:9022/api/auth/v3/menus/filter

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
    "orders": [{ "column": "ctime", "dir": "desc" }],
    "searchs": [ { "column": "status", "op": "eq", "value": "0" }]
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
	"pageSize": 20,
	"totalNum": 3,
	"totalPage": 1,
	"datas": [
		{
			"id": "50538712a41211ec95465254006e0804",
			"seq": 1,
            "type": "menu",
            "name": "权限管理",
            "icon": "icon-widget",
            "url": "/admin/auth/index",
			"budgeName": "权限管理",
            "budgeNum": 0,
			"key": "50538712a41211ec95465254006e0804"
		},
        ......
	]
}
```

## 创建菜单 

### Method
POST

### URL
http://jnr.host:9022/api/auth/v3/menus

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| seq    | int       | 菜单排列顺序号 | Yes |
| type    | String       | 菜单类型 | Yes |
| name    | String       | 菜单名称 | Yes |
| icon    | String       | 菜单图标 | Yes |
| url    | String       | 菜单URL | Yes |
| budgeName    | String       | 菜单对应的budgeNum名称 | Yes |

### Request Example
```
{
    "seq": 1,
    "type": "menu",
    "name": "权限管理",
    "icon": "icon-widget",
    "url": "/admin/auth/index",
    "budgeName": "权限管理",
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


## 修改菜单 

### Method
PUT

### URL
http://jnr.host:9022/api/auth/v3/menus/:menuId

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| id    | String       | 菜单ID | Yes |
| seq    | int       | 菜单排列顺序号 | Yes |
| type    | String       | 菜单类型 | Yes |
| name    | String       | 菜单名称 | Yes |
| icon    | String       | 菜单图标 | Yes |
| url    | String       | 菜单URL | Yes |
| budgeName    | String       | 菜单对应的budgeNum名称 | Yes |

### Request Example
```
{
    "id": "50538712a41211ec95465254006e0804",
    "seq": 1,
    "type": "menu",
    "name": "权限管理",
    "icon": "icon-widget",
    "url": "/admin/auth/index",
    "budgeName": "权限管理"
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

## 删除菜单

### Method
DELETE

### URL
http://jnr.host:9022/api/auth/v3/menus/:menuId

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
| 404 | Not Found | 无此菜单 |

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success"
}
```

## 查询菜单

### Method
GET

### URL
http://jnr.host:9022/api/auth/v3/menus/:menuId

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
| 404 | Not Found | 无此菜单 |

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success",
	"data":	{
        "id": "50538712a41211ec95465254006e0804",
        "seq": 1,
        "type": "menu",
        "name": "权限管理",
        "icon": "icon-widget",
        "url": "/admin/auth/index",
        "budgeName": "权限管理"
    }    
}
```