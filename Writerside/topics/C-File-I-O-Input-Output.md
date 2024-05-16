# File I/O (Input/Output)

File I/O (Input/Output) trong ngôn ngữ lập trình C là quá trình đọc và ghi dữ liệu từ và vào các tệp (file). Các tệp
được sử dụng để lưu trữ và truyền dữ liệu giữa chương trình và hệ thống tệp. Dưới đây là một số ví dụ về cách thực hiện
File I/O trong C:

## Ghi dữ liệu vào tệp

Để ghi dữ liệu vào một tệp, bạn cần mở tệp để ghi bằng cách sử dụng hàm fopen(). Sau đó, bạn có thể sử dụng các hàm như
fprintf() hoặc fputc() để ghi dữ liệu vào tệp. Ví dụ:

```C
#include <stdio.h>

int main() {
    FILE *file;
    file = fopen("example.txt", "w"); // Mở tệp để ghi

    if (file != NULL) {
        fprintf(file, "Hello, World!\n");
        fclose(file);
    } else {
        printf("Khong the mo tệp.\n");
    }

    return 0;
}
```

Trong ví dụ này, chúng ta mở tệp "example.txt" để ghi (mode "w" - viết tắt của write). Sau đó, chúng ta sử dụng
fprintf() để ghi chuỗi "Hello, World!" vào tệp và đóng tệp sau khi đã hoàn thành.

## Đọc dữ liệu từ tệp

Để đọc dữ liệu từ một tệp, bạn cũng cần mở tệp nhưng trong mode đọc bằng fopen(). Sau đó, bạn có thể sử dụng các hàm như
fscanf() hoặc fgetc() để đọc dữ liệu từ tệp. Ví dụ:

```C
#include <stdio.h>

int main() {
    FILE *file;
    char data[100]; // Mảng để lưu dữ liệu từ tệp

    file = fopen("example.txt", "r"); // Mở tệp để đọc

    if (file != NULL) {
        fscanf(file, "%s", data); // Đọc dữ liệu từ tệp vào mảng
        printf("Noi dung trong tệp: %s\n", data);
        fclose(file);
    } else {
        printf("Khong the mo tệp.\n");
    }

    return 0;
}
```

Trong ví dụ này, chúng ta mở tệp "example.txt" để đọc (mode "r" - viết tắt của read). Sau đó, chúng ta sử dụng fscanf()
để đọc dữ liệu từ tệp vào mảng data và in ra nội dung đã đọc.

> File I/O trong C là một phần quan trọng của việc làm việc với tệp và dữ liệu trên hệ thống tệp. Nó cho phép bạn lưu
> trữ, đọc, và xử lý dữ liệu từ và vào các tệp theo nhiều cách khác nhau.
