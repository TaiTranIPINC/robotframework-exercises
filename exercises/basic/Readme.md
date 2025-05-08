## 🔧 Resource và Library trong Robot Framework

### 1. Thư viện tiêu chuẩn nào được tích hợp sẵn trong Robot Framework?

Robot Framework đi kèm với một số **thư viện tiêu chuẩn (standard libraries)**, bao gồm:

* `BuiltIn` – cung cấp các keyword cơ bản như `Log`, `Should Be Equal`, `Run Keyword If`, v.v.
* `Collections` – làm việc với danh sách và từ điển.
* `String` – xử lý chuỗi.
* `DateTime` – thao tác với ngày giờ.
* `OperatingSystem` – tương tác với hệ thống tệp và lệnh hệ điều hành.
* `Dialogs` – tạo các hộp thoại tương tác.
* `Screenshot` – chụp màn hình.

### 2. Thư viện SeleniumLibrary dùng để làm gì?

`SeleniumLibrary` là một thư viện mở rộng dùng để **tự động hóa kiểm thử giao diện web (UI testing)**. Nó cho phép bạn:

* Mở trình duyệt và điều hướng web.
* Tương tác với các phần tử HTML (nhấn nút, điền form, chọn dropdown, v.v.).
* Kiểm tra nội dung, trạng thái của các phần tử trên giao diện.
* Chụp ảnh màn hình khi kiểm thử thất bại.

### 3. Làm sao để tạo keyword tùy chỉnh?

Bạn có thể tạo keyword tùy chỉnh bằng cách khai báo trong section `*** Keywords ***`:

```robot
*** Keywords ***
Say Hello
    Log    Hello, Robot!
```

Bạn cũng có thể định nghĩa keyword trong file riêng và import bằng `Resource`.

### 4. Sự khác biệt giữa BuiltIn và SeleniumLibrary?

| Đặc điểm  | BuiltIn                                           | SeleniumLibrary                      |
| --------- | ------------------------------------------------- | ------------------------------------ |
| Loại      | Thư viện tích hợp sẵn                             | Thư viện mở rộng bên ngoài           |
| Mục đích  | Hỗ trợ keyword xử lý logic, biến, điều kiện, v.v. | Hỗ trợ tương tác với trình duyệt web |
| Cách dùng | Dùng trực tiếp, không cần cài                     | Cần cài đặt bằng pip                 |

### 5. Làm sao để dùng biến trong Robot Framework? Có bao nhiêu loại biến?

Bạn có thể khai báo biến trong section `*** Variables ***` hoặc gán tạm trong test case.

Có 3 loại biến chính:

* **Scalar**: `${var}` – giá trị đơn.
* **List**: `@{list}` – danh sách.
* **Dictionary**: `&{dict}` – từ điển.

Ví dụ:

```robot
*** Variables ***
${NAME}    Alice
@{FRUITS}    Apple    Banana
&{USER}     name=Alice    age=30
```

### 6. Cách import một thư viện bên ngoài vào file `.robot`?

* Bước 1: Cài đặt thư viện bằng pip, ví dụ:

```bash
pip install robotframework-seleniumlibrary
```

* Bước 2: Import trong file `.robot`:

```robot
*** Settings ***
Library    SeleniumLibrary
```

### 7. Có thể tái sử dụng các test case hoặc keyword giữa các file như thế nào?

* **Keyword**: Tạo file riêng chứa section `*** Keywords ***` và dùng `Resource` để import.

```robot
*** Settings ***
Resource    common_keywords.robot
```

* **Test case**: Không tái sử dụng trực tiếp được, nhưng bạn có thể tạo các từ khóa dùng chung để gọi trong nhiều test case ở các file khác nhau.
