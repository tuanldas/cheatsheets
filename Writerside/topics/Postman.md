# Postman

Case cần gọi api để lấy token đăng nhập
-------------

Yêu cầu token của các reuqest khác được lấy trong environments.  

Với request đăng nhập, thêm đoạn mã sau vào phần ```Test``` của postman.

```
const response = pm.response.json();
pm.environment.set('access_token', response.access_token);

pm.environment.set("auth_request", {
  parameters: {
    url: pm.request.url,
    method: pm.request.method,
    header: pm.request.headers,
    body: pm.request.body
  },
  callback: `(_, authResponse) => pm.environment.set("access_token", authResponse.json().access_token)`
})
```
Với đoạn mã này thì cũng ta ghi lại các thông tin mà request sử dụng vào environment để các request khác có thể sử dụng được.  

Để sử dụng trong các request khác thì đặt đoạn mã sau vào tab ```Pre-request script```

```
const { parameters, callback } = pm.environment.get("auth_request")

pm.sendRequest(parameters, eval(callback))
```
Khi đặt đoạn mã này thì trước khi gửi request hiện tại thì postman sẽ chạy đoạn mã trên trước và gửi request để lấy lại token mới.  
