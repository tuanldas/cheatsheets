# Rsync

Rsync là gì ?
-------------

Rsync (Remote Sync) là một công cụ dùng để sao chép và đồng bộ file/thư mục được dùng rất phổ biến. Với sự trợ giúp của
rsync, bạn có thể đồng bộ dữ liệu trên local hoặc giữa các server với nhau một cách dễ dàng.

Cài đặt
-------

Sử dụng đặt trên ubuntu

```Bash
apt-get install rsync
```

{prompt="$"}

Command
---------

```Bash
rsync options source destination
```

{prompt="$"}

Trong đó:

* Source: dữ liệu nguồn
* Destination: dữ liệu đích
* Options: một số tùy chọn thêm

Các opction cơ bản
------------------

| Opctions    | Mô tả                                                                                                                                            |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| `-v`        | Hiển thị trạng thái kết quả.                                                                                                                     |
| `-r`        | Copy mọi thứ từ thư mục gốc và thư mục con (đệ quy), nhưng không đảm bảo tính toàn vẹn thông số của file và thư mục.                             |
| `-a`        | Copy mọi thứ từ thư mục gốc và thư mục con (đệ quy), nhưng đảm bảo tính toàn vẹn thông số của file và thư mục.                                   |
| `-z`        | Nén dữ liệu trong khi transfer, việc này có thể tiết kiệm băng thông nhưng sẽ tốn thêm thời gian.                                                |
| `-h`        | Human-readable, output kết quả dễ đọc.                                                                                                           |
| `--delete`  | Xóa dữ liệu ở destination nếu như source không còn dữ liệu đó.                                                                                   |
| `--exclude` | Loại trừ một file hoặc folder được chỉ định ra khỏi quá trình đồng bộ. Mỗi file hoặc folder cần loại bỏ sẽ được đi kèm với một opction `exclude` |

# 1. Copy file và thư mục trong local
-------------------------------------

### Copy trên local

```Bash
rsync -zvh backup.tar /tmp/backups/
```

{prompt="$"}

Nếu thư mục trên máy chưa có thì sẽ được tạo mới trước khi copy.

# 2. Copy trên server qua ssh
-----------------------------

#### Copy từ server remote về local

Để sử dụng giao thức `ssh` thì bạn cần thêm opction `-e`.

```Bash
rsync -avzhe ssh root@192.168.0.35:/root/install.log /tmp/
```

{prompt="$"}

#### Copy từ local lên server remote

```Bash
rsync -avzhe ssh backup.tar root@192.168.0.100:/backups/
```

{prompt="$"}

> Server sử dụng port khác 22:
>
> ```rsync -avzhe "ssh -p 2222" ...```

# 3. Hiển thị tiến trình trong khi transfer dữ liệu với rsync
-------------------------------------------------------------

Sử dụng tùy chọn `--progress` để hiển thị tiến trình

```Bash
rsync -avzhe ssh --progress /home/rpmpkgs root@192.168.0.100:/root/rpmpkgs
```

{prompt="$"}

# 4. Sử dụng tùy chọn –include và –exclude
------------------------------------------

Hai tùy chọn giúp chúng ta có thể thêm hoặc bớt file khi đồng bộ

```Bash
rsync -avze ssh --include 'R*' --exclude '*' root@192.168.0.101:/var/lib/rpm/ /root/rpm
```

{prompt="$"}

# 5. Chạy thử nghiệm Rsync

Nếu bạn không chắc câu lệnh có thực hiện chính xác những gì mong muốn hay không, hãy thêm tùy chọn --dry-run.  
Rsync lúc này sẽ không thay đổi gì dữ liệu cả mà chỉ show output mà thôi. Nếu mọi thứ hoạt động ổn, hãy bỏ tùy chọn
--dry-run ra khỏi câu lệnh.

```Bash
rsync --dry-run --remove-source-files -zvh backup.tar /tmp/backups/
```

{prompt="$"}
