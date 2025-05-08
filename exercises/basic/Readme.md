# 📘 Tài liệu: Kiến thức cơ bản về Robot Framework

## 1. 🤖 Robot Framework là gì? Dùng để làm gì?

**Robot Framework** là một công cụ **kiểm thửe tự động mã nguồn mở** (open-source) dùng để viết và thực thi các ca kiểm thử (test cases).
Nó hỗ trợ **kiểm thử chấp nhận** (acceptance testing), **kiểm thử hành vi** (behavior-driven testing), và có thể tích hợp tốt với nhiều thư viện kiểm thử như Selenium, Appium, REST API, và nhiều hơn nữa.

✔️ Dùng để tự động hóa kiểm thử giao diện người dùng, API, dữ liệu và nhiều dạng kiểm thử khác.

---

## 2. 🌪️ Robot Framework hỗ trợ những loại kiểm thử nào?

Robot Framework hỗ trợ các loại kiểm thử chính sau:

* ✅ **Acceptance Testing** – kiểm tra hệ thống có đáp ứng yêu cầu nghiệp vụ hay không.
* ✅ **Acceptance Test-Driven Development (ATDD)** – viết test trước khi phát triển.
* ✅ **UI Testing** – qua thư viện như SeleniumLibrary.
* ✅ **API Testing** – dùng thư viện như `RequestsLibrary`.
* ✅ **Data-Driven Testing** – kiểm thử theo bảng dữ liệu.

---

## 3. 💻 Robot Framework được viết bằng ngôn ngữ nào?

Robot Framework được viết bằng **Python**, nhưng có thể mở rộng bằng các thư viện viết bằng **Python hoặc Java**.

---

## 4. 🧱 Cấu trúc của một test case trong Robot Framework gồm những phần nào?

Một test case trong Robot Framework có cấu trúc dạng **table**, gồm:

```
*** Test Cases ***
Tên test case
    Step 1
    Step 2
    ...
```

Mỗi bước (step) là một keyword, có thể là keyword có sẵn hoặc keyword do người dùng định nghĩa.

---

## 5. 📄 Một file `.robot` thường gồm các section nào?

Một file Robot Framework có thể có các section sau:

| Section          | Mô tả                                      |
| ---------------- | ------------------------------------------ |
| ***Settings***   | Khai báo thư viện, resource, biến toàn cục |
| ***Variables***  | Khai báo biến dùng trong file              |
| ***Test Cases*** | Khai báo các ca kiểm thử                   |
| ***Keywords***   | Định nghĩa các keyword tùy chỉnh           |

Tất cả các section đều bết đầu bằng dấu `***` và tên section (in hoa hoặc thường đều được chấp nhận).

---

## 6. ⚖️ Sự khác nhau giữa `Test Cases` và `Keywords` là gì?

| Test Cases                       | Keywords                               |
| -------------------------------- | -------------------------------------- |
| Là nơi chứa các kiểm thử thực tế | Là tập hợp các bước có thể tái sử dụng |
| Có thể chứa nhiều bước thực hiện | Là một đơn vị chức năng có thể gọi lại |
| Không nên lồng nhau              | Có thể gọi các keyword khác            |

✅ **Test Cases là "người sử dụng", Keywords là "công cụ"**.

---

## 7. 🖥️ Làm sao để chạy một file Robot từ dòng lệnh?

Dùng câu lệnh sau trong terminal (đảm bảo đã cài Robot Framework):

```bash
robot ten_file.robot
```

Ví dụ:

```bash
robot login_test.robot
```

Các tuỳ chọn phổ biến:

* `-d logs/` — chỉ định thư mục chứa báo cáo kết quả
* `--include tag` — chạy test có tag cụ thể

---

## 8. 🚲 Làm sao để cài đặt Robot Framework?

Bạn có thể cài đặt bằng `pip` nếu đã có Python:

```bash
pip install robotframework
```

Nếu cần dùng cho kiểm thử web:

```bash
pip install robotframework-seleniumlibrary
```

Để kiểm tra cài đặt thành công:

```bash
robot --version
```

---

*Nếu bạn cần bản PDF hoặc Markdown cho tài liệu này, mình có thể chuẩn bị giúp.*
