# Chuỗi

Trong C, chuỗi (string) thường được biểu diễn bằng một mảng các ký tự (char). Mảng này chứa các ký tự liên tiếp kết thúc
bằng một ký tự null ('\0') để xác định kết thúc của chuỗi. Dưới đây là cách bạn có thể định nghĩa, khai báo và làm việc
với chuỗi trong C:

## Định nghĩa chuỗi

```C
char myString[20] = "Hello, World!";
```

## Làm việc với chuỗi

### In chuỗi: Để hiển thị một chuỗi trong C lên màn hình chúng ta sẽ dùng kí hiệu %s

```C
char result = "Hello"
printf("Ket qua la %s", result);
```

### Sao chép chuỗi: Bạn có thể sử dụng hàm strcpy để sao chép một chuỗi vào một chuỗi khác.

```C
char source[] = "Hello";
char destination[20];
strcpy(destination, source); // Sao chép chuỗi source vào chuỗi destination
```

### Nối chuỗi: Để nối một chuỗi vào cuối chuỗi khác, bạn có thể sử dụng hàm strcat.

```C
char str1[] = "Hello";
char str2[] = ", World!";
strcat(str1, str2); // Kết quả: "Hello, World!"
```

### So sánh chuỗi: Hàm strcmp được sử dụng để so sánh hai chuỗi.

```C
char str1[] = "apple";
char str2[] = "banana";
int result = strcmp(str1, str2);
// Kết quả: result < 0 (str1 đứng trước str2 trong thứ tự từ điển)
```

### Tính độ dài chuỗi: Để tính độ dài của chuỗi, bạn có thể sử dụng hàm strlen.

```C
char str[] = "Hello, World!";
int length = strlen(str); // Kết quả: 13
```

Lưu ý rằng chuỗi kết thúc bằng ký tự null '\0', nên khi bạn làm việc với chuỗi, hãy đảm bảo rằng bạn duyệt đến ký tự null để xác định kết thúc của chuỗi.