# Con trỏ (Pointer)

Con trỏ (Pointer) trong ngôn ngữ lập trình C là một biến đặc biệt được sử dụng để lưu trữ địa chỉ bộ nhớ của một biến
khác. Con trỏ cho phép bạn truy cập và thao tác trực tiếp với bộ nhớ và dữ liệu, và nó là một trong những tính năng quan
trọng của C. Dưới đây là các khái niệm và cách sử dụng con trỏ trong C:

## Khai báo con trỏ

Để khai báo một con trỏ, bạn sử dụng dấu * sau kiểu dữ liệu. Ví dụ:

```C
int *ptr; // Con trỏ kiểu int
double *ptr2; // Con trỏ kiểu double
```

## Gán giá trị cho con trỏ

Con trỏ có thể được gán bất kỳ địa chỉ của biến nào cùng kiểu dữ liệu với nó. Điều này được thực hiện bằng cách sử dụng
toán tử & để lấy địa chỉ của biến. Ví dụ:

```C
int x = 10;
int *ptr = &x; // Gán địa chỉ của biến x cho con trỏ ptr
```

## Truy cập giá trị của con trỏ

Để truy cập giá trị mà con trỏ đang trỏ đến, bạn sử dụng toán tử *. Ví dụ:

```C
int y = *ptr; // Lấy giá trị mà con trỏ ptr đang trỏ đến (giá trị của biến x)
```

## Sử dụng con trỏ để thay đổi giá trị biến

Con trỏ cho phép bạn thay đổi giá trị của biến mà nó đang trỏ đến. Ví dụ:

```C
*ptr = 20; // Thay đổi giá trị của biến x thành 20
```

## Thực hiện các phép tính với con trỏ

Bạn có thể thực hiện các phép tính số học và logic với con trỏ để di chuyển giữa các địa chỉ bộ nhớ và thực hiện các
phép tính trên dữ liệu. Ví dụ:

```C
int arr[5] = {10, 20, 30, 40, 50};
int *ptr = arr; // Gán địa chỉ của mảng cho con trỏ

// Di chuyển con trỏ qua các phần tử mảng và in giá trị
for (int i = 0; i < 5; i++) {
    printf("Gia tri cua phan tu thu %d: %d\n", i, *ptr);
    ptr++; // Di chuyen con tro toi phan tu tiep theo
}
```

## Con trỏ và mảng

Mảng và con trỏ trong C có mối quan hệ mật thiết. Tên mảng một cách tường minh là một con trỏ tới phần tử đầu tiên trong
mảng, và bạn có thể sử dụng con trỏ để truy cập các phần tử của mảng.

Dưới đây là một ví dụ về cách sử dụng con trỏ và mảng trong ngôn ngữ lập trình C. Trong ví dụ này, chúng ta sẽ tạo một
mảng các số nguyên và sử dụng một con trỏ để truy cập các phần tử của mảng.

```C
#include <stdio.h>

int main() {
    int arr[5] = {10, 20, 30, 40, 50};

    // Khai báo một con trỏ kiểu int và gán địa chỉ của mảng cho nó
    int *ptr = arr;

    // Sử dụng con trỏ để truy cập và in các phần tử của mảng
    for (int i = 0; i < 5; i++) {
        printf("Gia tri cua phan tu thu %d: %d\n", i, *ptr);
        ptr++; // Di chuyển con trỏ tới phần tử tiếp theo trong mảng
    }

    return 0;
}
```

* Chúng ta đã khai báo một mảng arr có 5 phần tử và khởi tạo nó với các giá trị từ 10 đến 50.
* Sau đó, chúng ta đã khai báo một con trỏ kiểu int có tên ptr.
* Chúng ta gán địa chỉ của mảng arr cho con trỏ ptr bằng cách sử dụng tên mảng làm con trỏ vào phần tử đầu tiên của
  mảng.
* Trong vòng lặp for, chúng ta sử dụng con trỏ để truy cập và in giá trị của từng phần tử của mảng. Sau đó, chúng ta di
  chuyển con trỏ tới phần tử tiếp theo trong mảng bằng cách sử dụng ptr++.

Kết quả của chương trình sẽ in ra giá trị của các phần tử trong mảng:

```C
Gia tri cua phan tu thu 0: 10
Gia tri cua phan tu thu 1: 20
Gia tri cua phan tu thu 2: 30
Gia tri cua phan tu thu 3: 40
Gia tri cua phan tu thu 4: 50
```

## Con trỏ và chuỗi

Chuỗi trong C thường được biểu diễn bằng một mảng các ký tự và kết thúc bằng ký tự null ('\0'). Con trỏ thường được sử
dụng để xử lý chuỗi, vì chúng cho phép bạn truy cập và thay đổi từng ký tự trong chuỗi một cách dễ dàng.

Dưới đây là một ví dụ về cách sử dụng con trỏ để làm việc với chuỗi (string) trong ngôn ngữ lập trình C:

```C
#include <stdio.h>

int main() {
    char greeting[] = "Hello, World!"; // Một mảng ký tự (chuỗi)
    char *ptr = greeting; // Con trỏ kiểu char trỏ tới chuỗi

    // Sử dụng con trỏ để truy cập và in từng ký tự của chuỗi
    while (*ptr != '\0') {
        printf("%c", *ptr);
        ptr++; // Di chuyển con trỏ tới ký tự tiếp theo
    }

    return 0;
}
```

* Chúng ta đã khai báo một mảng ký tự có tên greeting và khởi tạo nó với chuỗi "Hello, World!".
* Sau đó, chúng ta đã khai báo một con trỏ kiểu char có tên ptr.
* Chúng ta gán địa chỉ của mảng greeting cho con trỏ ptr, vì mảng là một chuỗi ký tự và tên mảng chính là con trỏ tới
  phần tử đầu tiên của chuỗi.
* Sử dụng vòng lặp while, chúng ta duyệt qua chuỗi bằng cách sử dụng con trỏ. Chúng ta kiểm tra ký tự mỗi lần và in nó
  ra màn hình, sau đó di chuyển con trỏ tới ký tự tiếp theo trong chuỗi bằng cách sử dụng ptr++.
* Chuỗi kết thúc bằng ký tự null '\0', nên chúng ta dừng khi gặp ký tự null.

Kết quả của chương trình sẽ in ra chuỗi "Hello, World!" lên màn hình.

> Con trỏ là một tính năng mạnh mẽ trong ngôn ngữ C, nhưng nó cũng đòi hỏi kiểm soát cẩn thận và làm việc chính xác với
> bộ nhớ để tránh lỗi segmentation fault và rò rỉ bộ nhớ.
