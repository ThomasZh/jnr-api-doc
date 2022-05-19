# API Articles

## 查询文章列表

### Method
POST

### URL
http://jnr.host:9022/api/cyber/articles/filter

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
    "searchs": [{ "column": "type", "op": "eq", "value": "notebook" }]
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
    "pageSize": 12,
    "totalNum": 24,
    "totalPage": 2,
    "datas": [
        {
            "id": "85ec8c28d31c11eca01a38c9860954df",
            "type": "markdown",
            "title": "React + antd pro + umi 番外篇",
            "description": "本篇文章主要介绍从 0 使用umi搭建React项目的过程，记录了相关umi的使用以及react的相关知识点。",
            "imgUrl": "/static/api/tmpfiles/f/f947e59a95675bdb8e8317a06d33addf.jpeg",
            "ctime": "05/14/2022",
            "mtime": "05/18/2022",
            "status": 1,
            "readNum": 51,
            "likeNum": 0,
            "commNum": 0,
            "userId": "800be36b639211ebb61b821700fd42c0",
            "key": "85ec8c28d31c11eca01a38c9860954df",
            "author": {
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
        },
				......
    ]
}
```


## 查询我的文章列表

### Method
POST

### URL
http://jnr.host:9022/api/cyber/mine/articles/filter

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
    "searchs": [{ "column": "type", "op": "eq", "value": "notebook" }]
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
    "pageSize": 12,
    "totalNum": 24,
    "totalPage": 2,
    "datas": [
        {
            "id": "85ec8c28d31c11eca01a38c9860954df",
            "type": "markdown",
            "title": "React + antd pro + umi 番外篇",
            "description": "本篇文章主要介绍从 0 使用umi搭建React项目的过程，记录了相关umi的使用以及react的相关知识点。",
            "imgUrl": "/static/api/tmpfiles/f/f947e59a95675bdb8e8317a06d33addf.jpeg",
            "ctime": "05/14/2022",
            "mtime": "05/18/2022",
            "status": 1,
            "readNum": 51,
            "likeNum": 0,
            "commNum": 0,
            "userId": "800be36b639211ebb61b821700fd42c0",
            "key": "85ec8c28d31c11eca01a38c9860954df",
            "author": {
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
        },
				......
    ]
}
```

## 创建文章

### Method
POST

### URL
http://jnr.host:9022/api/cyber/articles

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| title | String | 文章标题 | Yes |
| description | String | 文章描述 | Yes |
| type | String | 文章类型：html,markdown,notebook | Yes |

### Request Example
```
{
    "title": "linux",
		"description": "linux",
		"type": "markdown",
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


## 修改文章

### Method
PUT

### URL
http://jnr.host:9022/api/cyber/articles/:articleId

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| title | String | 文章标题 | Yes |
| description | String | 文章描述 | Yes |
| imgUrl | String | 图片链接 | Yes |
| content | Object | 文章段落 | Yes |

### Request Example
```
{
	"title": "linux",
	"description": "linux",
	"imgUrl": "/static/api/tmpfiles/b/b39a491a55765273977d239167d44f3b.png",
	"content": "[{"id":"1","type":"markdown","paragraph":"#Title"]",
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

## 删除文章

### Method
DELETE

### URL
http://jnr.host:9022/api/cyber/articles/:articleId

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

## 查询文章

### Method
GET

### URL
http://jnr.host:9022/api/cyber/articles/:articleId

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
				"type": "markdown",
				"title": "React + antd pro + umi 番外篇",
				"description": "本篇文章主要介绍从 0 使用umi搭建React项目的过程，记录了相关umi的使用以及react的相关知识点。",
				"imgUrl": "/static/api/tmpfiles/f/f947e59a95675bdb8e8317a06d33addf.jpeg",
				"ctime": "05/14/2022",
				"mtime": "05/18/2022",
				"status": 1,
				"readNum": 51,
				"likeNum": 0,
				"commNum": 0,
				"userId": "800be36b639211ebb61b821700fd42c0",
				"key": "85ec8c28d31c11eca01a38c9860954df",
				"author": {
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
}
```


## 发布文章

### Method
POST

### URL
http://jnr.host:9022/api/cyber/articles/:articleId/publish

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


## 召回文章

### Method
POST

### URL
http://jnr.host:9022/api/cyber/articles/:articleId/revoke

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


## 查询文章的分类列表

### Method
POST

### URL
http://jnr.host:9022/api/cyber/articles/:articleId/categories/filter

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
    "searchs": [{ "column": "type", "op": "eq", "value": "notebook" }]
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
    "pageSize": 12,
    "totalNum": 24,
    "totalPage": 2,
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


## 查询文章的标签列表

### Method
POST

### URL
http://jnr.host:9022/api/cyber/articles/:articleId/tags/filter

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
    "searchs": [{ "column": "type", "op": "eq", "value": "notebook" }]
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
    "pageSize": 12,
    "totalNum": 24,
    "totalPage": 2,
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


## 文章绑定分类

### Method
POST

### URL
http://jnr.host:9022/api/cyber/categories/:categoryId/articles/:articleId

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |


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
}
```

## 文章解绑分类

### Method
DELETE

### URL
http://jnr.host:9022/api/cyber/categories/:categoryId/articles/:articleId

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |


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
}
```

## 文章绑定标签

### Method
POST

### URL
http://jnr.host:9022/api/cyber/tags/:tagId/articles/:articleId

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |


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
}
```


## 文章解绑标签

### Method
DELETE

### URL
http://jnr.host:9022/api/cyber/tags/:tagId/articles/:articleId

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |


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
}
```
