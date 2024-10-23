# Cấu hình Swap Memory

Để tạo bộ nhớ swap trên một server Ubuntu, bạn có thể làm theo các bước sau:

* Bước 1: Kiểm tra xem đã có swap chưa

Chạy lệnh sau để kiểm tra xem hệ thống đã có swap hay chưa:

```Bash
sudo swapon --show
```

Nếu không có output, điều đó có nghĩa là bạn chưa có phân vùng swap.

* Bước 2: Kiểm tra dung lượng đĩa trống

Chạy lệnh sau để kiểm tra dung lượng trống trên ổ đĩa:

```Bash
df -h
```

Điều này giúp bạn biết được dung lượng còn trống để tạo swap.

* Bước 3: Tạo một file swap

Giả sử bạn muốn tạo một swap 2GB, chạy lệnh sau để tạo một file swap:

```Bash
sudo fallocate -l 2G /swapfile
```

Nếu fallocate không khả dụng, bạn có thể sử dụng dd:

```Bash
sudo dd if=/dev/zero of=/swapfile bs=1M count=2048
```

* Bước 4: Phân quyền cho file swap

Thay đổi quyền của file swap để đảm bảo rằng chỉ có root mới có thể truy cập:

```Bash
sudo chmod 600 /swapfile
```

* Bước 5: Thiết lập file swap

Thiết lập file vừa tạo thành vùng nhớ swap:

```Bash
sudo mkswap /swapfile
```

* Bước 6: Kích hoạt swap

Kích hoạt swap với lệnh:

```Bash
sudo swapon /swapfile
```

* Bước 7: Kiểm tra lại

Kiểm tra lại vùng swap vừa tạo bằng lệnh:

```Bash
sudo swapon --show
```

* Bước 8: Cấu hình kích hoạt swap tự động sau khi khởi động lại

Để đảm bảo swap tự động kích hoạt mỗi khi khởi động lại, bạn cần chỉnh sửa file /etc/fstab. Mở file này:

```Bash
sudo nano /etc/fstab
```

Thêm dòng sau vào cuối file:

```Bash
/swapfile none swap sw 0 0
```