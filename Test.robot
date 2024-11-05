# *** Variables ***
# &{dict}        TC1=Pranai   Surename=Phoprasat

# *** Test Cases ***
# Log Name
#     Log    ${dict.Name}
#     Log    ${dict.Surename}


# *** Keywords ***
# Test Function 02 
#     [Arguments]       ${inputData}
#     Log to console    ${inputData}  
# *** Test Cases ***
# Example Test Case
#     Test Function 02    My test data



# *** Keywords ***
# Test Function 02
#     ${outputData}    Set Variable    Testdata
#     RETURN    ${outputData}

# *** Test Cases ***
# Example Test Case
#     ${result}    Test Function 02
#     Log    ${result}

# *** Keywords ***
# Test Function 001
#     [Arguments]    ${inputData}
#     ${outputData}    Set Variable    ${inputData}
#     RETURN    ${outputData}

# *** Test Cases ***
# Example Test Case
#     ${result}    Test Function 001    [Arguments]
#     Log To Console    This is a result   ${result}
# อธิบายโค้ด inputData  ให้เป็น [Arguments] ; outputData แสดงออกมาจาก inputData; แสดงผล RETURN เป็น outputData
# จากนั้นทำเทส โดยที่ ผล ${result} ของ Test Function 001 จากค่า [Arguments] สุดท้าย ให้ Log เป็น ${result} ที่จะแสดงออกมา
# ความต่าง log ไม่แสดงตอนรันterminal console แต่ Log To Console จะแสดงค่าที่เขียน

# *** Keywords ***
# Test Function 01
#     Log To Console    Hello

# Test Function 02
#     [Arguments]    ${inputData}
#     Log To Console    ${inputData}

# *** Test Cases ***
# TC-001
#     Test Function 01
#     Test Function 02    "สวัสดี"

# *** Settings ***
# Library    SeleniumLibrary
# *** Variables ***

# *** Keywords ***

# *** Test Cases ***
# Openbrowser
#     Open Browser    https://pet-sitter-app-alpha.vercel.app/    edge
# Clickfindpet
#     Click Button    xpath=/html/body/div[1]/nav/div/div[1]/button[3]    
