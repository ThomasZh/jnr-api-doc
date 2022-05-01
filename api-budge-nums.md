# API BudgeNums

## 获取自己的BudgeNums

### Method
GET

### URL
http://jnr.host:9022/api/sys/budge-nums

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

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success",
	"datas": [
        {"权限管理": 1}
    ]
}
```