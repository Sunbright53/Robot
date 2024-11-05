# What is robot test? => 
# Front : web app/ mobile/ Window app; 
# Back : API/ Rest web service/ Soap web service/ Database

# Structure robot
*** Settings *** 
# กำหนด libraly
# ตั้งค่าให้ไฟล์ เช่น import: 
# Library            SeleniumLibrary
# Library            BuiltIn
# Resource           common_keyword.resource **อ้างอิงไฟล์อื่นมาทำ
# Test Setup         Open URL and Login
# Test Teardown      Close All Browser


*** Variables ***
# สร้างตัวแปร
# Indentify key word 
# String        ${string} Hello
# list          ${list} Name Surname  **แทนจะประกาศ 10 อัน ใช้อันเดียวเรียกข้อมูลทั้งหมด 

# *** Variables ***
# @{names}    John    Jane    Alex    Mary    Tom
# @{surnames}    Doe    Smith    Johnson    Brown    Davis

# *** Test Cases ***
# Example Test
#     :FOR    ${i}    IN RANGE    0    ${len(${names})}
#     \    Log    Name: ${names}[${i}] ${surnames}[${i}]

# dictionary           &{dict}        TC1=value    TC2=value        **ชื่อไว้เก็บค่า

# ตัวแปรพิเศษเรียกใช้งาน
# ${EMPTRY}                                    ค่าว่าง
# ${SPACE}                                     เว้นวรรค
# ${SPACE * 5}                                 เว้นวรรค 5 ครั้ง
# ${True}, ${FALSE}                            True/ FALSE = Boolean
# ${\n}                                        ขึ้นบรรทัดใหม่ 
# ${NONE}                                      ไม่มีค่าใดๆ(NONE)
# ${์NULL}                                      ค่า NULL/ ไม่กำหนดค่า/ ไม่ทราบค่า
# ${TEST NAME}                                 ชื่อTestCAST ปจบ 

*** Keywords ***
# สร้างตัวแปร
# สร้างมาใช้เอง / สร้างชุดคำสั่งใช้เอง
# ไม่มีการรับ และรีเทิร์นค่า
# Test Function 01
# ...    Log to console    "Hello"

# -------- #
# รับค่า
# *** Keywords ***
# Test Function 02 
#     [Arguments]       ${inputData}
#     Log to console    ${inputData}  
# *** Test Cases ***
# Example Test Case
#     Test Function 02    My test data
# -------- #
# ไม่รับแต่ส่ง
# Test Function 02 
#     $[outputData]      =Testdata
#     RETRUN          $[outputData]

# รับค่าและส่งกลับ

# *** Keywords ***
# Test Function 001
#     [Arguments]    ${inputData}
#     ${outputData}    Set Variable    ${inputData}
#     RETURN    ${outputData}



# *** Test Cases ***
# Keywords เป็น ขั้นตอน
# เขียนชุดคำสั่งให้ Test Cases ทำตาม

# SeleniumLibrary
# เก็บคำสั่งไว้รัน