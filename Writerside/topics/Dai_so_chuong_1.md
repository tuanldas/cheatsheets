# Chương 1: Sơ lược về logic mệnh đề tập hợp ánh xạ và đại số boole

## Sơ lược về logic mệnh đề

### Mệnh để

Logic mệnh đề là một hệ thống logic đơn giản nhất với đơn vị cơ bản là các mệnh đề mang nội dung của các phán đoán, mỗi
phán đoán dược đưa ra giả thiết là có một giá trị chân lý nhất định là **đúng** hoặc **sai**.  
Để chỉ các mệnh đề chưa xác định ta dùng các chữ cái p, q, r ... và gọi chúng là các **biến mệnh đề**.

* Nếu mệnh đề p đúng ta cho p nhận giá trị 1 và p sai ta cho nhận giá trị 0. Giá trị 1 hoặc 0 được gọi là thể hiện của
  p.
* Mệnh đề phức hợp được xây dựng từ các mệnh đề đơn giản hơn bằng các phép liên kết lôgích mệnh đề

### Các phép liên kết logic mệnh đề

1. Phép phủ định:
   Ký hiệu: **p̄**
   Mệnh đề P̄ đúng khi p sai và P̄ sai khi p đúng
2. Phép hội:
   Ký hiệu: p ˄ q ( p và q)
   Mệnh đề p ˄ q đúng khi cả p và q đều đúng
3. Phép tuyển
   Ký hiệu: p ˅ q ( p hoặc q )
   Mệnh đề p ˅ q sai khi cả p và q đều sai
4. Phép kéo theo
   Ký hiệu: p => p ( p kéo theo q, p suy ra q)
   Mệnh đề p => q chỉ sai khi p đúng q sai
5. Phép tương đương
   Ký hiệu p <=> q
   Mệnh đề p <=> q đúng khi cả hai mệnh đề p và q cùng đúng, ngược lại.

### Bảng chuyên trị

#### Bảng chuyên trị phép phủ định

| p | p̄ |
|---|----|
| 1 | 0  |
| 0 | 1  |

#### Bảng chuyên trị phép hội và phép tuyển

| p | q | p ˄ q | p ˅ q |
|---|---|-------|-------|
| 1 | 1 | 1     | 1     |
| 1 | 0 | 0     | 1     |
| 0 | 1 | 0     | 1     |
| 0 | 0 | 0     | 0     |

#### Bảng chuyên trị phép kéo theo

| p | q | p => q |
|---|---|--------|
| 1 | 1 | 1      |
| 1 | 0 | 0      |
| 0 | 1 | 1      |
| 0 | 0 | 1      |

#### Bảng chuyên trị phép tương đương

| p | q | p => q | q => p | p <=> p |
|---|---|--------|--------|---------|
| 1 | 1 | 1      | 1      | 1       |
| 1 | 0 | 0      | 1      | 0       |
| 0 | 1 | 1      | 0      | 0       |
| 0 | 0 | 1      | 1      | 1       |