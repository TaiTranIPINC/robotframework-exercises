*** Settings ***
Documentation     Bài tập 03: Ghi nội dung vào file rồi đọc lại nội dung

Library           OperatingSystem

*** Variables ***
${FILE_NAME}    notes.txt
${CONTENT}      Robot Framework is awesome!

*** Test Cases ***
Write And Read File
    # TODO: Ghi ${CONTENT} vào file ${FILE_NAME}
    # TODO: Đọc nội dung file và kiểm tra chứa ${CONTENT}
