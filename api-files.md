# API Files

## 查询文件列表

### Method
POST

### URL
http://jnr.host:9022/api/sys/files/filter

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
    "orders": [ { "column": "ctime", "dir": "desc" }, { column: 'size', dir: 'asc' } ],
    "searchs": [ { column: 'filetype', op: 'in', value: ['image', 'audio', 'video', 'file'] } ]
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
    "totalNum": 53,
    "totalPage": 3,
    "datas": [
        {
            "id": "4c22923c0d255f83a0567a7d429ddd45",
            "localPath": "/var/tmp/jnr/4/4c22923c0d255f83a0567a7d429ddd45.mp4",
            "localUrl": "/static/api/tmpfiles/4/4c22923c0d255f83a0567a7d429ddd45.mp4",
            "cloudUrl": "http://video.cyber-life.cn/cyber/2022/05/17/9f576704d5d411ec9f5a38c9860954df.mp4",
            "filetype": "video",
            "filename": "车辆装置篇08_用一个电机驱动车轮.mp4",
            "blobTotalNum": 19,
            "size": 9536257,
            "ctime": "05/17/2022",
            "mtime": "05/17/2022",
            "md5": null,
            "ver": 0,
            "ext": ".mp4",
            "userId": "800be36b639211ebb61b821700fd42c0",
            "bizid": "rc-upload-1652753880393-16",
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


## 查询我上传的文件列表

### Method
POST

### URL
http://jnr.host:9022/api/sys/mine/files/filter

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
    "orders": [ { "column": "ctime", "dir": "desc" }, { column: 'size', dir: 'asc' } ],
    "searchs": [ { column: 'filetype', op: 'in', value: ['image', 'audio', 'video', 'file'] } ]
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
    "totalNum": 53,
    "totalPage": 3,
    "datas": [
        {
            "id": "4c22923c0d255f83a0567a7d429ddd45",
            "localPath": "/var/tmp/jnr/4/4c22923c0d255f83a0567a7d429ddd45.mp4",
            "localUrl": "/static/api/tmpfiles/4/4c22923c0d255f83a0567a7d429ddd45.mp4",
            "cloudUrl": "http://video.cyber-life.cn/cyber/2022/05/17/9f576704d5d411ec9f5a38c9860954df.mp4",
            "filetype": "video",
            "filename": "车辆装置篇08_用一个电机驱动车轮.mp4",
            "blobTotalNum": 19,
            "size": 9536257,
            "ctime": "05/17/2022",
            "mtime": "05/17/2022",
            "md5": null,
            "ver": 0,
            "ext": ".mp4",
            "userId": "800be36b639211ebb61b821700fd42c0",
            "bizid": "rc-upload-1652753880393-16",
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


## 删除文件

### Method
DELETE

### URL
http://jnr.host:9022/api/sys/files/:fileId

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


## 上传的文件块

### 函数
cutFile(filetype, file, callback, bizid);

### 输入参数

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| filetype | String | 文件类型: image, video, file, audio | Yes |
| file | Object | html表单的file | Yes |
| callback | Function | 回调函数，返回参数 completedNum, blobTotalNum, imgUrl, filename, bizid, errCode | No |
| bizid | String | 业务ID，上传时代入参数，返回此参数，客户端用于配对使用。 | No |

### Responses

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| completedNum | int | 已经传输完毕的块数 | Yes |
| blobTotalNum | int | 需要传输的总块数 | Yes |
| imgUrl | String | 上传完毕后文件的URL | No |
| filename | String | 上传文件的名称，只用于显示 | No |
| bizid | String | 业务ID，上传时代入参数，返回此参数，客户端用于配对使用。 | No |
| errCode | int | 返回码: 201-此块传输成功，200-所有块传输成功 | Yes |
