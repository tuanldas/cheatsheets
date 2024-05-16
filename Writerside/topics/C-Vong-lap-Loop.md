# Vòng lặp (Loop)

Trong ngôn ngữ lập trình C, có ba loại vòng lặp chính được sử dụng để lặp qua mã nguồn hoặc thực hiện các tác vụ lặp đi
lặp lại. Các loại vòng lặp này là:

## Vòng lặp for

Vòng lặp for được sử dụng để lặp qua một khối mã nguồn một số lần xác định. Cú pháp tổng quan như sau:

```C
for (khởi_tạo; điều_kiện; cập_nhật) {
    // Khối mã thực hiện trong mỗi vòng lặp
}
```

VD:

```C
for (int i = 0; i < 5; i++) {
    printf("Giá trị của i: %d\n", i);
}
```

## Vòng lặp while

Vòng lặp while được sử dụng để lặp qua một khối mã nguồn trong khi một điều kiện là đúng (true). Cú pháp tổng quan như
sau:

```C
while (điều_kiện) {
    // Khối mã thực hiện trong mỗi vòng lặp
}
```

VD:

```C
int x = 0;
while (x < 5) {
    printf("Giá trị của x: %d\n", x);
    x++;
}
```

## Vòng lặp do...while:

Vòng lặp do...while tương tự với while, nhưng khối mã trong vòng lặp được thực hiện ít nhất một lần trước khi kiểm tra
điều kiện. Cú pháp tổng quan như sau:

```C
do {
    // Khối mã thực hiện ít nhất một lần
} while (điều_kiện);
```

VD:

```C
int y = 0;
do {
    printf("Giá trị của y: %d\n", y);
    y++;
} while (y < 5);
```

## Sự khác nhau giữa 3 loại vòng lặp

Sự khác nhau chính giữa ba vòng lặp chính trong ngôn ngữ lập trình C (for, while, và do...while) là cách chúng kiểm tra
và điều khiển việc lặp. Dưới đây là sự khác nhau giữa chúng và trường hợp nào nên sử dụng mỗi loại vòng lặp:

|                            | Vòng lặp for                                                                                                                                                                 | Vòng lặp while                                                                                                        | Vòng lặp do...while                                                                                                                                |
|----------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| Cú pháp	                   | sử dụng một biểu thức khởi tạo, một biểu thức điều kiện, và một biểu thức cập nhật	                                                                                          | sử dụng một biểu thức điều kiện	                                                                                      | sử dụng một biểu thức điều kiện                                                                                                                    |
| Thứ tự kiểm tra điều kiện	 | Đầu tiên kiểm tra điều kiện, sau đó thực hiện khối mã nếu điều kiện là true. Sau khi thực hiện khối mã, biểu thức cập nhật được thực hiện và sau đó kiểm tra lại điều kiện.	 | Đầu tiên kiểm tra điều kiện, sau đó thực hiện khối mã nếu điều kiện là true. Không thực hiện nếu điều kiện là false.	 | Thực hiện khối mã ít nhất một lần, sau đó kiểm tra điều kiện. Nếu điều kiện là true, thực hiện thêm vòng lặp.                                      |
| Thích hợp cho	             | Sử dụng khi bạn biết trước số lần lặp cụ thể hoặc cần thực hiện một số lần lặp cố định.	                                                                                     | Sử dụng khi bạn không biết trước số lần lặp và muốn thực hiện lặp dựa trên điều kiện nào đó.	                         | Sử dụng khi bạn muốn đảm bảo rằng khối mã ít nhất được thực hiện một lần, sau đó kiểm tra điều kiện để quyết định liệu cần tiếp tục lặp hay không. |
