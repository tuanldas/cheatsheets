# Thư viện (Library)

Trong ngôn ngữ lập trình C, thư viện (library) là một tập hợp các tệp và hàm được biên dịch sẵn (compiled) mà bạn có thể
sử dụng trong các chương trình của mình. Thư viện giúp tái sử dụng mã nguồn, giảm độ phức tạp của chương trình, và tăng
hiệu suất trong quá trình phát triển phần mềm. Dưới đây là một số điểm quan trọng về thư viện trong ngôn ngữ C:

1. Thư viện tiêu chuẩn (Standard Library): C có một thư viện tiêu chuẩn chứa các hàm và tệp thư viện đã được định nghĩa
   trước để thực hiện các nhiệm vụ phổ biến. Ví dụ, thư viện stdio.h chứa hàm liên quan đến đầu vào và đầu ra, như
   printf,
   scanf, và fgets. Thư viện tiêu chuẩn được cung cấp bởi ngôn ngữ C và có sẵn cho mọi trình biên dịch C.
2. Thư viện bên ngoài (External Libraries): Bên cạnh thư viện tiêu chuẩn, có nhiều thư viện bên ngoài được tạo ra bởi
   cộng
   đồng lập trình C và các nhà sản xuất trình biên dịch. Những thư viện này cung cấp các tính năng đặc biệt và phức tạp
   hơn
   cho việc phát triển ứng dụng. Để sử dụng thư viện bên ngoài, bạn cần bao gồm tiêu đề (header) thư viện trong mã nguồn
   của mình và liên kết (link) với tệp thư viện khi biên dịch.
3. Tiêu đề (Header Files): Tiêu đề (header) là tệp văn bản có phần mở rộng .h chứa các khai báo hàm, cấu trúc dữ liệu và
   hằng số mà bạn cần sử dụng từ một thư viện. Để sử dụng thư viện, bạn cần đưa tiêu đề của nó vào mã nguồn của mình
   bằng
   cách sử dụng #include. Ví dụ: #include .
4. Liên kết (Linking): Sau khi bạn đã sử dụng các hàm từ thư viện trong mã nguồn của mình, bạn cần liên kết mã nguồn với
   thư viện khi biên dịch. Điều này đảm bảo rằng trình biên dịch biết nơi tìm các định nghĩa hàm cụ thể. Thông thường,
   việc
   liên kết được thực hiện bằng cách sử dụng câu lệnh liên kết hoặc trình biên dịch.
5. Tạo thư viện tùy chỉnh (Custom Libraries): Bạn cũng có thể tạo thư viện tùy chỉnh để đóng gói và tái sử dụng mã nguồn
   của mình. Điều này đặc biệt hữu ích khi bạn muốn chia sẻ mã nguồn với các dự án khác hoặc đảm bảo tính riêng tư và
   bảo
   mật của mã nguồn.

> Thư viện đóng một vai trò quan trọng trong việc phát triển ứng dụng C và giúp tối ưu hóa quá trình phát triển phần mềm
> bằng cách sử dụng lại mã nguồn đã có sẵn.