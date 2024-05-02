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

