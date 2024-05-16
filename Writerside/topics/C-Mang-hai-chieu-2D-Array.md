# Mảng hai chiều (2D Array)

Mảng hai chiều (2D array) trong ngôn ngữ lập trình C là một cấu trúc dữ liệu cho phép bạn lưu trữ dữ liệu dưới dạng ma
trận hoặc lưới có hai chiều (hàng và cột).

## Định nghĩa và Khai báo Mảng hai chiều

```C
kiểu_dữ_liệu tên_mảng[số_hàng][số_cột];
```

* kiểu_dữ_liệu: Đây là kiểu dữ liệu của các phần tử trong mảng 2D, ví dụ int, float, char, ...
* tên_mảng: Đây là tên của mảng.
* số_hàng: Số lượng hàng trong mảng.
* số_cột: Số lượng cột trong mảng.

VD:

```C
int matrix[3][3]; // Định nghĩa mảng 2D với 3 hàng và 3 cột
float data[2][4]; // Định nghĩa mảng 2D với 2 hàng và 4 cột
```

## Truy cập phần tử trong Mảng hai chiều

Bạn có thể truy cập các phần tử trong mảng 2D bằng cách sử dụng chỉ mục của hàng và cột trong dấu ngoặc vuông [][]. Chỉ
mục hàng và cột bắt đầu từ 0. Ví dụ:

```C
int matrix[3][3] = {
    {1, 2, 3},
    {4, 5, 6},
    {7, 8, 9}
};
int element = matrix[1][2]; // element = 6
```