# API Profile

## 修改自己的Profile

### Method
PUT

### URL
http://jnr.host:9022/api/sys/profiles

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| firstName    | String       | 名 | Yes |
| lastName    | String       | 姓 | Yes |
| email    | String       | 电子邮箱 | Yes |
| telephone    | String       | 手机 | Yes |
| workphone    | String       | 工作电话 | Yes |
| avatar    | String       | 头像URL | Yes |
| jobTitle    | String       | 职务 | Yes |
| biography    | String       | 描述 | Yes |

### Request Example
```
{
    "firstName": "Thomas",
    "lastName": "Zhang",
    "email": "",
    "telephone": "",
    "workphone": "",
    "avatar": "http://image.cyber-life.cn/cyber2022/01/12/831e1fc873a611ecaf6f5254006e0804",
    "jobTitle": "Professor of Mathematical Analysis",
    "biography": "Professor of Mathematical Analysis"
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


## 获取自己的Profile

### Method
GET

### URL
http://jnr.host:9022/api/sys/profiles

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

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
	"errMsg": "Success",
	"data": {
		"userId": "800be36b639211ebb61b821700fd42c0",
		"firstName": "Thomas",
		"lastName": "Zhang",
		"email": "",
		"telephone": "",
		"workphone": "",
		"avatar": "http://image.cyber-life.cn/cyber2022/01/12/831e1fc873a611ecaf6f5254006e0804",
		"jobTitle": "Professor of Mathematical Analysis",
		"biography": "Professor of Mathematical Analysis"
	}
}
```


## 获取某用户的Profile

### Method
GET

### URL
http://jnr.host:9022/api/sys/profiles/:userId

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

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
	"errMsg": "Success",
	"data": {
		"userId": "800be36b639211ebb61b821700fd42c0",
		"firstName": "Thomas",
		"lastName": "Zhang",
		"email": "",
		"telephone": "",
		"workphone": "",
		"avatar": "http://image.cyber-life.cn/cyber2022/01/12/831e1fc873a611ecaf6f5254006e0804",
		"jobTitle": "Professor of Mathematical Analysis",
		"biography": "Professor of Mathematical Analysis"
	}
}
```