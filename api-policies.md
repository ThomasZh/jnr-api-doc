# API Policies

## 查询策略列表

### Method
POST

### URL
http://jnr.host:9022/api/auth/v3/policies/filter

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
    "searchs": [ { "column": "type", "op": "eq", "value": "role" }]
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
			"id": "043c46422aa111ec881d38c9860954df",
			"type": "role",
			"objId": "3d918282662911eb96fe821700fd42c0",
			"objName": "Viewer",
			"resPath": "/api/projects/filter",
			"action": "POST",
			"access": "allow",
			"priority": 10,
			"key": "043c46422aa111ec881d38c9860954df"
		},
        ......
	]
}
```

## 创建策略 

### Method
POST

### URL
http://jnr.host:9022/api/auth/v3/policies

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| type    | String       | 策略类型: User, Role | Yes |
| objId    | String       | 策略约束的对象ID | Yes |
| objName    | String       | 策略约束的对象名称 | Yes |
| resPath    | String       | 策略约束的URL | Yes |
| action    | String       | 策略约束的方法：*, POST, PUT, GET, DELETE | Yes |
| access    | String       | 策略: Allow, Deny | Yes |
| priority    | int       | 策略的优先级 | Yes |

### Request Example
```
{
    "type": "role",
    "objId": "3d918282662911eb96fe821700fd42c0",
    "objName": "Viewer",
    "resPath": "/api/projects/filter",
    "action": "POST",
    "access": "allow",
    "priority": 10,
    "key": "043c46422aa111ec881d38c9860954df"
}
```

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | 操作成功 |
| 400 | Bad Request | Role name not valided|
| 401 | Unauthorized | Not login |
| 403 | Forbidden | 无此权限 |

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success"
}
```


## 修改策略 

### Method
PUT

### URL
http://jnr.host:9022/api/auth/v3/policies/:policyId

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| type    | String       | 策略类型: User, Role | Yes |
| objId    | String       | 策略约束的对象ID | Yes |
| objName    | String       | 策略约束的对象名称 | Yes |
| resPath    | String       | 策略约束的URL | Yes |
| action    | String       | 策略约束的方法：*, POST, PUT, GET, DELETE | Yes |
| access    | String       | 策略: Allow, Deny | Yes |
| priority    | int       | 策略的优先级 | Yes |

### Request Example
```
{
    "id": "043c46422aa111ec881d38c9860954df",
    "type": "role",
    "objId": "3d918282662911eb96fe821700fd42c0",
    "objName": "Viewer",
    "resPath": "/api/projects/filter",
    "action": "POST",
    "access": "allow",
    "priority": 10,
    "key": "043c46422aa111ec881d38c9860954df"
}
```

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | 操作成功 |
| 400 | Bad Request | Role name not valided|
| 401 | Unauthorized | Not login |
| 403 | Forbidden | 无此权限 |

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success"
}
```

## 删除策略

### Method
DELETE

### URL
http://jnr.host:9022/api/auth/v3/policies/:policyId

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | 操作成功 |
| 400 | Bad Request | LoginName or md5pwd not valided|
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

## 查询策略

### Method
GET

### URL
http://jnr.host:9022/api/auth/v3/policies/:policyId

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | 操作成功 |
| 400 | Bad Request | LoginName or md5pwd not valided|
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
        "type": "role",
        "objId": "3d918282662911eb96fe821700fd42c0",
        "objName": "Viewer",
        "resPath": "/api/projects/filter",
        "action": "POST",
        "access": "allow",
        "priority": 10,
        "key": "043c46422aa111ec881d38c9860954df"
    }    
}
```