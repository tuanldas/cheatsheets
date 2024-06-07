# Struct (Cấu trúc)

Struct (cấu trúc) trong ngôn ngữ lập trình C là một cấu trúc dữ liệu cho phép bạn tổng hợp nhiều biến có kiểu dữ liệu
khác nhau vào một đối tượng duy nhất. Cấu trúc giúp bạn tạo ra kiểu dữ liệu tùy chỉnh để biểu diễn các thực thể có tính
chất phức tạp hơn. Dưới đây là cách bạn định nghĩa và làm việc với cấu trúc trong C:

## Định nghĩa cấu trúc

Để định nghĩa cấu trúc trong C, bạn sử dụng từ khóa struct theo sau là tên cấu trúc và danh sách các biến thành viên (
members) trong cấu trúc. Cú pháp tổng quan như sau:

```C
struct TenCauTruc {
    kieu_du_lieu1 thanh_vien1;
    kieu_du_lieu2 thanh_vien2;
    // ...
};
```

VD:

```C
struct Person {
    char name[50];
    int age;
    float height;
};
```

## Khai báo biến kiểu struct trong C

```C
{
    int id;
    char firstName[20];
    char lastName[20];
    int age;
    char address[100];
};

int main(){
    struct Person ps1, ps2;

    // Khai báo mảng
    struct Person ps[100];
}
```

## Truy xuất các thuộc tính của struct

C cung cấp cho chúng ta 2 toán tử để truy xuất các thuộc tính của struct:  
Sử dụng . => Truy xuất tới thuộc tính khi khai báo biến bình thường.  
Sử dụng -> => Truy xuất tới thuộc tính khi biến là con trỏ.  
Ví dụ chúng ta muốn truy xuất đến thuộc tính firstName của Person ta làm như sau:

```C
Person ps;
printf("First name: %s", ps.firstName);
```