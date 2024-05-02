# In và đọc kiểu dữ liệu

C cung cấp sẵn 2 phương thức ```printf``` và ```scanf``` dùng để đọc và in dữ liệu.

## printf

Cú pháp:

```C
    printf("Chuỗi", than số 1, tham số 2,...);
```

Ví dụ

```C
int age = 30;
float salary = 1000.50;
printf("Tuổi: %d\n", age);
printf("Lương: %.2f\n", salary);
```

## scanf

Dùng để đọc dữ liệu được nhập vào từ bàn phím

Cú pháp

```C
    scanf("Chuỗi", &biến1, &biến2,...);
```

Ví dụ:

```C
int age;
float salary;
printf("Nhập tuổi: ");
scanf("%d", &age);
printf("Nhập lương: ");
scanf("%f", &salary);
```

> Lưu ý: trong scanf cần phải sử dụng dấu ```&``` trước tên biến để truyền địa chỉ biến đó cho scanf.

## Định dạng kiểu dữ liệu

| Ký hiệu  |                                              |
|----------|----------------------------------------------|
| ```%c``` | Ký tự đơn                                    |
| ```%s``` | Chuỗi                                        |
| ```%d``` | Số nguyên hệ 10 có dấu                       |
| ```%f``` | Số chấm động (VD 7.44 khi in sẽ ra 7.440000) |
| ```%e``` | Số chấm động (ký hiệu có số mũ)              |
| ```%g``` | Số chấm động (VD 7.44 khi in sẽ in ra 7.44)  |
| ```%x``` | Số nguyên hex không dấu (hệ 16)              |
| ```%o``` | Số nguyên bát phân không dấu (hệ 8)          |
| ```%p``` | Địa chỉ con trỏ                              |
