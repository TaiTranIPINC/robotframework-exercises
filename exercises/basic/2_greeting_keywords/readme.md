Bài 2: Tách keyword ra thành phần riêng

Yêu cầu:

Viết file "greeting_keywords.resource" chỉ chứa section "Keywords".

Trong file "main_test.robot", import file keyword "greeting_keywords.resource" và gọi từ test case.

Gợi ý:

Trong file "greeting_keywords.resource" tạo keyword "Greet User" ở section "Keywords"
 - Sử dụng keyword "Log" để in nội dung 'Welcome, user!'

Trong file "main_test.robot" import resource ở section "Setting" :
-   Sử dụng "Resource" để import "greeting_keywords.resource"

Tiếp tục ở file "main_test.robot" tạo test case "Greet Test" ở section "Test Case"
-   Sử dụng keyword "Greet User"

