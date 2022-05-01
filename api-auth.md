# API Auth

## Login
Login use name and password.

### Method
POST

### URL
http://jnr.host:9022/api/auth/v3/login

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| loginName    | String       | Login name as user | Yes |
| md5pwd | String        | Use md5 function encrypt password | Yes |

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
| 200    | OK       | Login success |
| 400 | Bad Request        | LoginName or md5pwd not valided |
| 404 | Not Found | LoginName or password is wrong |

### Responses Example
```
{
	"errCode": 200,
	"errMsg": "Success",
	"sessionTicket": {
		"accessToken": "f58403b6c84211ec92aa38c9860954df",
		"expiresAt": 1651899845,
		"scope": "user",
		"tokenType": "Bearer",
		"userId": "800be36b639211ebb61b821700fd42c0",
		"refreshToken": "f5840b5ec84211ec92aa38c9860954df",
		"loginName": "admin",
		"roleIds": "507b9fd4646711ebb586821700fd42c0",
		"roleNames": "Administrator",
		"companyId": "d62e5f58cf3b11eba543a45e60efbf2d"
	}
}
```

## Logout
Logout after login.

### Method
DELETE

### URL
http://jnr.host:9022/api/auth/v3/logout

### Header
| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| Authorization    | String       | Bearer accessToken | Yes |

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | Login success |
| 401 | Unauthorized | Not login |

## Send lost password verify code
忘记密码操作时发送获取验证码。

输入的loginName联系方式（手机或email）会收到短信或信件，内容中包含验证码。

5分钟内有效，并且5分钟内不能重新发送。

### Method
POST

### URL
http://jnr.host:9022/api/auth/v3/verify-code

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| loginName    | String       | Login name as user | Yes |

### Request Example
```
{
	"loginName": "admin"
}
```

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | Send verify code success |
| 400 | Bad Request        | LoginName or md5pwd not valided |
| 404 | Not Found | LoginName is not exist |


## Lost password
忘记密码操作

### Method
POST

### URL
http://jnr.host:9022/api/auth/v3/lostpwd

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| loginName    | String       | Login name as user | Yes |
| md5pwd | String        | Use md5 function encrypt password | Yes |
| code | String        | 验证码 | Yes |

### Request Example
```
{
	"loginName": "admin",
    "md5pwd": "e10adc3949ba59abbe56e057f20f883e",
    "code": 123456
}
```

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | Modify password success |
| 400 | Bad Request        | LoginName or md5pwd not valided |
| 404 | Not Found | LoginName is not exist |
| 408 | Timeout | 校验码过期 |
| 412 | Precondition Failed | 校验码错误 |

## Send signup verify code
注册时发送校验码。

输入的loginName联系方式（手机或email）会收到短信或信件，内容中包含验证码。

5分钟内有效，并且5分钟内不能重新发送。

### Method
POST

### URL
http://jnr.host:9022/api/auth/v3/signup/verify-code

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| loginName    | String       | Login name as user | Yes |

### Request Example
```
{
	"loginName": "admin"
}
```

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | Send verify code success |
| 400 | Bad Request        | LoginName not valided |
| 409 | Conflict | 用户名已经存在 |

## Signup
注册

### Method
POST

### URL
http://jnr.host:9022/api/auth/v3/signup

### Body

| Key    | Type | Description | Required |
| --------- | ----------- | ----------- | ----------- |
| loginName    | String       | Login name as user | Yes |
| md5pwd | String        | Use md5 function encrypt password | Yes |
| code | String        | 验证码 | Yes |

### Request Example
```
{
	"loginName": "admin",
    "md5pwd": "e10adc3949ba59abbe56e057f20f883e",
    "code": 123456
}
```

### Responses
| Code    | Message | Description |
| --------- | ----------- | ----------- |
| 200    | OK       | Modify password success |
| 400 | Bad Request        | LoginName or md5pwd not valided |
| 408 | Timeout | 校验码过期 |
| 409 | Conflict | 用户名已经存在 |
| 412 | Precondition Failed | 校验码错误 |
