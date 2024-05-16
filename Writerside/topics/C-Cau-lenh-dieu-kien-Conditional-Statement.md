# Câu lệnh điều kiện (Conditional Statement)

## Câu lệnh if...else

Câu lệnh if...else cho phép bạn thực hiện một khối mã nguồn nếu điều kiện kiểm tra là đúng (true), và một khối mã nguồn
khác nếu điều kiện là sai (false). Cú pháp tổng quan như sau:

```C
if (điều_kiện) {
    // Khối mã thực hiện nếu điều_kiện là true
} else {
    // Khối mã thực hiện nếu điều_kiện là false
}
```

VD:

```C
int x = 3;
    printf("x lớn hơn 5.\n");
} else {
    printf("x không lớn hơn 5.\n");
}
```

## Câu lệnh if... elseif ...else

```C
if (điều_kiện_1) {
    // Khối mã thực hiện nếu điều_kiện_1 là true
} else if (điều_kiện_2) {
    // Khối mã thực hiện nếu điều_kiện_2 là true
} else {
    // Khối mã thực hiện nếu không có điều kiện nào là true
}
```

## Câu lệnh switch

Câu lệnh switch cho phép bạn kiểm tra một biểu thức hoặc giá trị và thực hiện các tác vụ tương ứng với từng giá trị. Cú
pháp tổng quan như sau:

```C
switch (biểu_thức) {
    case giá_trị_1:
        // Khối mã thực hiện nếu biểu_thức bằng giá_trị_1
        break;
    case giá_trị_2:
        // Khối mã thực hiện nếu biểu_thức bằng giá_trị_2
        break;
    // Các trường hợp khác
    default:
        // Khối mã thực hiện nếu không có trường hợp nào khớp
}
```

VD:

```C
int choice = 2;
switch (choice) {
    case 1:
        printf("Bạn đã chọn tùy chọn 1.\n");
        break;
    case 2:
        printf("Bạn đã chọn tùy chọn 2.\n");
        break;
    default:
        printf("Tùy chọn không hợp lệ.\n");
}
```