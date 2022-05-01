# API Users

## 查询用户列表

### Method
POST

### URL
http://jnr.host:9022/api/auth/v3/users/filter

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
	"totalNum": 19,
	"totalPage": 1,
	"datas": [
		{
			"userId": "50538712a41211ec95465254006e0804",
			"loginName": "michael@consulting.com",
			"status": 0,
			"ctime": "2022-03-15 11:45:10",
			"mtime": "2022-03-15 11:45:10",
			"key": "50538712a41211ec95465254006e0804"
		},
        ......
	]
}
```

## 锁定账号

### Method
PUT

### URL
http://jnr.host:9022/api/auth/v3/users/lock

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| ids    | array       | 用户ID数组 | Yes |

### Request Example
```
{
    "ids": ["50538712a41211ec95465254006e0804"]
}
```

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | 操作成功 |
| 401 | Unauthorized | Not login |
| 403 | Forbidden | 无此权限 |

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success"
}
```


## 解锁账号

### Method
PUT

### URL
http://jnr.host:9022/api/auth/v3/users/unlock

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| ids    | array       | 用户ID数组 | Yes |

### Request Example
```
{
    "ids": ["50538712a41211ec95465254006e0804"]
}
```

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | 操作成功 |
| 401 | Unauthorized | Not login |
| 403 | Forbidden | 无此权限 |

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success"
}
```

## 重置用户密码

### Method
POST

### URL
http://jnr.host:9022/api/auth/v3/users/:userId

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| loginName    | String       | 用户账号 | No |
| md5pwd    | String       | 使用md5加密后的密码 | Yes |

### Request Example
```
{
	"loginName": "admin",
	"md5pwd": "e10adc3949ba59abbe56e057f20f883e"
}
```

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | 操作成功 |
| 400 | Bad Request | LoginName or md5pwd not valided|
| 401 | Unauthorized | Not login |
| 403 | Forbidden | 无此权限 |
| 404 | Not Found | 无此账号 |

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success"
}
```

## 用户绑定角色

### Method
PUT

### URL
http://jnr.host:9022/api/auth/v3/users/:userId/roles/:roleId

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
| 404 | Not Found | 无此账号 |

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success"
}
```

## 用户解绑角色

### Method
DELETE

### URL
http://jnr.host:9022/api/auth/v3/users/:userId/roles/:roleId

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
| 404 | Not Found | 无此账号 |

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success"
}
```

## 查询用户的角色列表


### Method
POST

### URL
http://jnr.host:9022/api/auth/v3/users/:userId/roles/filter

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
			"id": "3d918282662911eb96fe821700fd42c0",
			"name": "Viewer",
			"status": 0,
			"ctime": "2021-02-03 22:08:07",
			"mtime": "2021-02-03 22:08:07",
			"checked": 0
		},
		{
			"id": "08c5291e649911ebaa41821700fd42c0",
			"name": "Editor",
			"status": 0,
			"ctime": "2021-02-01 22:23:20",
			"mtime": "2021-02-01 22:23:20",
			"checked": 0
		},
		{
			"id": "507b9fd4646711ebb586821700fd42c0",
			"name": "Administrator",
			"status": 0,
			"ctime": "2021-02-01 16:27:25",
			"mtime": "2021-02-01 16:27:25",
			"checked": 1
		}
	]
}
```