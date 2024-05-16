# Enum (Liệt kê)

Enum (liệt kê) trong ngôn ngữ lập trình C là một cấu trúc dữ liệu cho phép bạn xác định một tập hợp các giá trị nguyên
có tên. Thông thường, liệt kê được sử dụng để đặt tên cho các hằng số hoặc để tạo các biểu thức nguyên với ý nghĩa dễ
đọc. Dưới đây là cách bạn định nghĩa và làm việc với liệt kê trong C:

## Định nghĩa enum

Để định nghĩa enum trong C, bạn sử dụng từ khóa enum sau đó là tên liệt kê và danh sách các giá trị liệt kê trong dấu
ngoặc nhọn {}. Ví dụ:

```C
enum Season {
    Spring,
    Summer,
    Autumn,
    Winter
};
```

## Gán giá trị tùy chỉnh cho các trạng thái

```C
enum Day {
    Monday = 1,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday,
    Sunday
};
```

Trong ví dụ này, Monday có giá trị là 1, và các giá trị tiếp theo sẽ được tự động tăng thêm một đơn vị (2, 3, 4,...).

## Sử dụng enum

Sau khi bạn đã định nghĩa enum, bạn có thể sử dụng nó để khai báo biến hoặc trong các biểu thức. Ví dụ:

```C
enum Season currentSeason = Spring;
```

Ngoài ra bạn có thể sử dụng enum làm tham số cho hàm để biểu thị trạng thái hoặc tùy chọn.

```C
void printDay(enum Day day) {
    switch (day) {
        case Monday:
            printf("Monday");
            break;
        case Tuesday:
            printf("Tuesday");
            break;
        // ...
    }
}
```

> Enum giúp làm cho mã nguồn dễ đọc hơn và giúp tránh sử dụng các số nguyên cứng.