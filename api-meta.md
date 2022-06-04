# API Meta

## 创建钱包

### Method
POST

### URL
http://jnr.host:9022/api/meta/accounts

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| sys    | String       | 系统 | No |

### Request Example
```
{
	"sys": "OTC"
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
	"id": "9902eac6e3c211ec80d238c9860954df"
}
```


## 查询我的钱包列表

### Method
POST

### URL
http://jnr.host:9022/api/meta/accounts/mine/filter

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
    "orders": [{
        "column": "ctime",
        "dir": "desc"
    }],
    "searchs": [
    ],
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
	"totalNum": 2,
	"totalPage": 1,
	"datas": [
		{
			"id": "9cb184d6e2c111ecbb5a38c9860954df",
			"sys": "OTC",
			"coinId": "ETH",
			"userId": "800be36b639211ebb61b821700fd42c0",
			"balance": "50.00000000",
			"frozenBalance": "10.00000000",
			"status": 1,
			"ctime": "2022-06-03 06:16:12",
			"mtime": "2022-06-04 06:54:57",
			"username": "Thomas Zhang"
		},
    ......
	]
}
```


## 查询钱包列表

### Method
POST

### URL
http://jnr.host:9022/api/meta/accounts/filter

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
    "orders": [{
        "column": "ctime",
        "dir": "desc"
    }],
    "searchs": [
    ],
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
	"totalNum": 2,
	"totalPage": 1,
	"datas": [
		{
			"id": "9cb184d6e2c111ecbb5a38c9860954df",
			"sys": "OTC",
			"coinId": "ETH",
			"userId": "800be36b639211ebb61b821700fd42c0",
			"balance": "50.00000000",
			"frozenBalance": "10.00000000",
			"status": 1,
			"ctime": "2022-06-03 06:16:12",
			"mtime": "2022-06-04 06:54:57",
			"username": "Thomas Zhang"
		},
    ......
	]
}
```


## 锁定钱包

### Method
PUT

### URL
http://jnr.host:9022/api/meta/accounts/lock

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| ids    | array       | 钱包ID数组 | Yes |

### Request Example
```
{
	"ids": [
		"9cb184d6e2c111ecbb5a38c9860954df"
	]
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
	"errMsg": "Success"
}
```


## 解锁钱包

### Method
PUT

### URL
http://jnr.host:9022/api/meta/accounts/unlock

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| ids    | array       | 钱包ID数组 | Yes |

### Request Example
```
{
	"ids": [
		"9cb184d6e2c111ecbb5a38c9860954df"
	]
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
	"errMsg": "Success"
}
```


## 查询钱包详情

### Method
GET

### URL
http://jnr.host:9022/api/meta/accounts/:id

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
	"data": {
		"id": "9cb184d6e2c111ecbb5a38c9860954df",
		"status": 1,
		"balance": "20.00000000",
		"sys": "OTC",
		"coinId": "USDT",
		"userId": "6395355c64ab11ebab61821700fd42c0",
		"frozenBalance": "0.00E-6",
		"ctime": "2022-06-03 06:16:12",
		"mtime": "2022-06-04 14:14:04"
	}
}
```


## 查询钱包变更记录

### Method
POST

### URL
http://jnr.host:9022/api/meta/accounts/access/filter

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
    "orders": [{
        "column": "ctime",
        "dir": "desc"
    }],
    "searchs": [
    ],
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
			"id": 1,
			"accountId": "9cb184d6e2c111ecbb5a38c9860954df",
			"coinId": "ETH",
			"amount": "10.00000000",
			"openingBalance": "60.00000000",
			"endingBalance": "50.00000000",
			"openingFrozenBalance": "10.00000000",
			"endingFrozenBalance": "20.00000000",
			"ctime": "2022-06-03 20:02:39",
			"action": "freeze_balance"
		},
    ......
	]
}
```


## 查询订单列表

### Method
POST

### URL
http://jnr.host:9022/api/meta/orders/filter

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
    "orders": [{
        "column": "ctime",
        "dir": "desc"
    }],
    "searchs": [
    ],
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
	"totalNum": 8,
	"totalPage": 1,
	"datas": [
		{
			"id": "31472ddee3f911ecb6ba38c9860954df",
			"fromSys": "OTC",
			"fromCoinId": "USDT",
			"fromUserId": "800be36b639211ebb61b821700fd42c0",
			"fromAccountId": "9902eac6e3c211ec80d238c9860954df",
			"toSys": "OTC",
			"toCoinId": "USDT",
			"toUserId": "800be36b639211ebb61b821700fd42c0",
			"toAccountId": "9902eac6e3c211ec80d238c9860954df",
			"amount": "1.00000000",
			"ctime": "2022-06-04 19:26:35",
			"mtime": "2022-06-04 19:26:35",
			"status": 200,
			"msg": "Success",
			"transactionId": "3149d7bee3f911ecb6ba38c9860954df",
			"businessId": "48810ddce25811ecaee738c9860954df",
			"businessType": "art",
			"operId": "800be36b639211ebb61b821700fd42c0"
		},
    ......
	]
}
```



## 查询交易列表

### Method
POST

### URL
http://jnr.host:9022/api/meta/orders/transactions/filter

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
    "orders": [{
        "column": "ctime",
        "dir": "desc"
    }],
    "searchs": [
    ],
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
	"totalNum": 57,
	"totalPage": 3,
	"datas": [
		{
			"id": "10c9b5d2e33511ecb32138c9860954df",
			"transactionType": "transferOut",
			"orderId": "10c9b546e33511ecb32138c9860954df",
			"fromSys": "OTC",
			"fromCoinId": "ETH",
			"fromUserId": "800be36b639211ebb61b821700fd42c0",
			"fromAccountId": "9cb184d6e2c111ecbb5a38c9860954df",
			"toSys": "OTC",
			"toCoinId": "BTC",
			"toUserId": "800be36b639211ebb61b821700fd42c0",
			"toAccountId": "9cb3861ee2c111ecbb5a38c9860954df",
			"amount": "10.00000000",
			"ctime": "2022-06-03 20:02:39",
			"status": 200,
			"msg": "Success",
			"businessId": "10c9b2eee33511ecb32138c9860954df",
			"operId": "800be36b639211ebb61b821700fd42c0"
		},
	]
}
```



## 交易

### Method
POST

### URL
http://jnr.host:9022/api/meta/orders/transfer

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| toAccountId    | String       | 转账入帐号 | Yes |
| amount | float        | 金额 | Yes |
| businessId | String        | 商品ID | Yes |
| businessType | String        | 商品类型 | Yes |

### Request Example
```
{
	"toAccountId": "9cb184d6e2c111ecbb5a38c9860954df",
	"amount": 20,
	"businessId": "673a6938e3cc11ecb5d438c9860954df",
  "businessType": "castle"
}
```

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | Query success |
| 401 | Unauthorized | Not login |
| 403 | Forbidden | 无此权限 |
| 10404 | fromAccount Not Found | 转出帐号不存在 |
| 10412 | fromAccount Is Lock | 转出帐号已经锁定 |
| 10416 | fromAccount Insufficient Balance | 转出帐号余额不足 |
| 20404 | toAccount Not Found | 转入帐号不存在 |
| 20412 | toAccount Is Lock | 转入帐号已经锁定 |
| 30404 | fromAccount Not Found | 提交转出帐号不存在 |
| 30412 | fromAccount Is Lock | 提交转出帐号已经锁定 |
| 40404 | fromAccount Not Found | 回滚转出帐号不存在 |
| 40412 | fromAccount Is Lock | 回滚转出帐号已经锁定 |

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success",
	"id": "88fb3ddae3cd11ecb45a38c9860954df"
}
```


## 查询城堡列表

### Method
POST

### URL
http://jnr.host:9022/api/meta/castles/filter

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
    "orders": [{
        "column": "ctime",
        "dir": "desc"
    }],
    "searchs": [
    ],
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
	"totalNum": 1,
	"totalPage": 1,
	"datas": [
		{
			"id": "48810ddce25811ecaee738c9860954df",
			"lat": "-38.42551122375836",
			"lng": "83.29769733567451",
			"price": "20.00000000",
			"status": 1,
			"ownerId": "800be36b639211ebb61b821700fd42c0",
			"artUrl": "https://tse1-mm.cn.bing.net/th/id/R-C.dbcd226729c91e21a4cba8a81c9fc951?rik=HsP20JbzdudfUA&riu=http%3a%2f%2fimgx.xiawu",
			"artPrice": "1.00000000",
			"ctime": "2022-06-02 17:42:14",
			"mtime": "2022-06-04 17:45:41"
		}
	]
}
```


## 购买城堡

### Method
POST

### URL
http://jnr.host:9022/api/meta/castles/:id/buy

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
| 10404 | fromAccount Not Found | 帐号不存在 |
| 10412 | fromAccount Is Lock | 帐号已经锁定 |
| 10416 | fromAccount Insufficient Balance | 帐号余额不足 |

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success"
}
```



## 修改艺术品

### Method
POST

### URL
http://jnr.host:9022/api/meta/castles/:id/art

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| artUrl    | int       | 艺术品URL | Yes |
| artPrice | float        | 价格 | Yes |

### Request Example
```
{
	"artUrl": "https://tse1-mm.cn.bing.net/th/id/R-C.dbcd226729c91e21a4cba8a81c9fc951?rik=HsP20JbzdudfUA&riu=http%3a%2f%2fimgx.xiawu",
	"artPrice": 1
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
	"errMsg": "Success"
}
```


## 购买艺术品

### Method
POST

### URL
http://jnr.host:9022/api/meta/castles/:id/art-buy

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
| 10404 | fromAccount Not Found | 帐号不存在 |
| 10412 | fromAccount Is Lock | 帐号已经锁定 |
| 10416 | fromAccount Insufficient Balance | 帐号余额不足 |

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success"
}
```
