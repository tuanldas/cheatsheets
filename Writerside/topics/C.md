# C

## main

```C
#include<stdio.h>
int main()
{
    // Your code here
    return(0);
}
```

## Hảm printf

Dùng để hiển thị output

```C
printf("Hello World!")
```

## Hàm scanf

Dùng để lấy dữ liệu từ người dùng

```C
scanf("format_specifier", &variables)
```

## Data Type

Cách đọc bảng

Cú pháp: cú pháp khai báo biến với kiểu dữ liệu.  
scanf: ký tự đặc biệt xác định kiểu dữ liệu khi người dùng nhập.  
printf: ký tự đặc biệt để thay thế chuỗi tại vị trí mà ký tự xuất hiện

Ví dụ:

```C
// Biến
Char x;
scanf("%c", &x);
printf("character is %c",x);
```

| Type                 | Variable | scanf | printf |
|----------------------|----------|-------|--------|
| Chuỗi                | char     | %c    | %c     |
| Số nguyên            | int      | %d    | %d     |
| Float (Số thập phân) | float    | %f    | %f     |
| Double               | double   | %lf   | %lf    |

### Void Type

Kiểu void thường được sử dụng để biểu thị hàm không có dữ liệu trả về.

```C
void myFunction() {
  // Function code here
}
```

### Toán tử

[Toán tử](C-Toan_tu.md)