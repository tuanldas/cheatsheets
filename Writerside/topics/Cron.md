# Cron

Format
-------

```
Min  Hour Day  Mon  Weekday
*    *    *    *    *  command to be executed
┬    ┬    ┬    ┬    ┬
│    │    │    │    └─  Day of Week   (0=Sun .. 6=Sat)
│    │    │    └──────  Month         (1..12)
│    │    └───────────  Day of Month  (1..31)
│    └────────────────  Hour          (0..23)
└─────────────────────  Minute        (0..59)
```

| Field        | Range  | Special characters |
|--------------|--------|--------------------|
| Minute       | 0 - 59 | , - * /            |
| Hour         | 0 - 23 | , - * /            |
| Day of Month | 1 - 31 | , - * ? / L W      |
| Month        | 1 - 12 | , - * /            |
| Day of Week  | 0 - 6  | , - * ? / L #      |

Ví dụ
--------

| Ví dụ          | Mô tả                                          |
|----------------|------------------------------------------------|
| `*/15 * * * *` | Chạy sau 15 phút                               |
| `0 * * * *`    | Mỗi tiếng                                      |
| `0 */2 * * *`  | Chạy sau 2 giờ                                 |
| `15 2 * * *`   | Vào lúc 2h15 sáng hàng ngày                    |
| `15 2 * * ?`   | Vào lúc 2h15 sáng hàng ngày                    |
| `10 9 * * 5`   | Vào lúc 9:10 sáng Thứ Sáu hàng tuần            |
| `0 0 * * 0`    | Vào nửa đêm Chủ Nhật hàng tuần                 |
| `15 2 * * 1L`  | Vào lúc 2h15 sáng Thứ Hai cuối cùng hàng tháng |
| `15 0 * * 4#2` | Vào lúc 00:15 sáng thứ Năm thứ hai hàng tháng  |
| `0 0 1 * *`    | Ngày 1 hàng tháng (hàng tháng)                 |
| `0 0 1 1 *`    | Ngày 1 tháng 1 hàng năm (hàng năm)             |
| `@reboot`      | Mỗi lần khởi động lại                          |

Special strings
---------------

| Special String | Ý nghĩa                              |
|----------------|--------------------------------------|
| @reboot        | Chạy một lần, khi khởi động hệ thống |
| @yearly        | Chạy mỗi năm một lần, "0 0 1 1 *"    |
| @annually      | (giống như @yearly)                  |
| @monthly       | Chạy mỗi tháng một lần, "0 0 1 * *"  |
| @weekly        | Chạy mỗi tuần một lần, "0 0 1 * *"   |
| @daily         | Chạy một lần mỗi ngày, "0 0 * * *"   |
| @midnight      | (giống như @daily)                   |
| @hourly        | Chạy mỗi giờ một lần, "0 * * * *"    |

Crontab command
---------------

| Command      | Mô tả                                                      |
|--------------|------------------------------------------------------------|
| `crontab -e` | Chỉnh sửa hoặc tạo tệp crontab nếu chưa tồn tại.           |
| `crontab -l` | Hiển thị tập tin crontab.                                  |
| `crontab -r` | Xóa tệp crontab.                                           |
| `crontab -v` | Hiển thị lần cuối cùng bạn chỉnh sửa tệp crontab của mình. |

Special characters
------------------

| Special Character   | Mô tả                                                                                                                                                           |
|---------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `Asterik(*)`        | Khớp tất cả các giá trị trong trường hoặc bất kỳ giá trị nào có thể.                                                                                            |
| `Hyphen(-)`         | Được sử dụng để xác định một phạm vi. Ví dụ: 1-5 trong trường thứ 5 (Ngày trong tuần) Mỗi ngày trong tuần, tức là từ Thứ Hai đến Thứ Sáu                        |
| `Slash (/)`         | Trường thứ nhất (Phút) /15 nghĩa là cứ sau mười lăm phút hoặc khoảng tăng dần.                                                                                  |
| `Comma (,)`         | Được sử dụng để phân tách các mục. Ví dụ: 2,6,8 trong trường thứ 2 (Giờ) thực hiện lúc 2 giờ sáng, 6 giờ sáng và 8 giờ sáng.                                    |
| `L`                 | Nó chỉ được phép đối với trường Ngày trong tháng hoặc Ngày trong tuần, 2L trong Ngày trong tuần biểu thị Thứ ba cuối cùng của mỗi tháng.                        |
| `Hash (#)`          | Nó chỉ được phép đối với trường Ngày trong tuần, phải được theo sau trong phạm vi từ 1 đến 5. Ví dụ: 4#1 có nghĩa là "Thứ Năm đầu tiên" của tháng nhất định.    |
| `Question mark (?)` | Có thể thay vì '*' và được phép cho Ngày trong tháng và Ngày trong tuần. Việc sử dụng bị giới hạn ở Ngày trong tháng hoặc Ngày trong tuần trong biểu thức cron. |

Xem thêm
--------

* [Devhints](https://devhints.io/cron) _(devhints.io)_
* [Crontab Generator](https://crontab-generator.org/) _(crontab-generator.org)_
* [Crontab guru](https://crontab.guru/) _(crontab.guru)_
