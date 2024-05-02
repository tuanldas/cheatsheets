# Hàm (Function)

## Cú pháp

```C
kieu_du_lieu ten_ham(tham_so) {

    return gia_tri_tra_ve;
}
```

> Hàm không cần giá trị trả về với kiểu dữ liệu void 

## Gọi hàm

```C
int sum(int a, int b) {
    return a + b;
}

int main() {
    int x = 5;
    int y = 3;
    int result = sum(x, y); // Gọi hàm sum và lưu kết quả vào result
    return 0;
}
```

