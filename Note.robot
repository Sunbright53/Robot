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


*** Keywords ***
# สร้างตัวแปร
# สร้างมาใช้เอง
*** Test Cases ***
# เขียน  
# Keywords เป็น ขั้นตอน


