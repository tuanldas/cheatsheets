# Mảng một chiều (Array)

Mảng (array) trong C là một tập hợp các phần tử có cùng kiểu dữ liệu được sắp xếp theo thứ tự. Mảng cho phép bạn lưu trữ
nhiều giá trị cùng loại trong một biến duy nhất.

## Định nghĩa và Khai báo Mảng

```C
kiểu_dữ_liệu tên_mảng[kích_thước];
```

* kiểu_dữ_liệu: Đây là kiểu dữ liệu của các phần tử trong mảng, ví dụ int, float, char, ...
* tên_mảng: Đây là tên của mảng.
* kích_thước: Số lượng phần tử trong mảng.

VD:

```C
int numbers[5]; // Định nghĩa mảng numbers với 5 phần tử kiểu int
char letters[10]; // Định nghĩa mảng letters với 10 phần tử kiểu char
```

## Truy cập phần tử trong Mảng

```C
int numbers[5] = {10, 20, 30, 40, 50};
int firstNumber = numbers[0]; // firstNumber = 10
int thirdNumber = numbers[2]; // thirdNumber = 30
```