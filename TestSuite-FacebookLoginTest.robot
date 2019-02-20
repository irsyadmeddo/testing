*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${URL}    https://facebook.com
@{CREDENTIALS}    youremail    yourpassword
&{LOGINDATA}    email=youremail    password=yourpassword

*** Keywords ***
LoginKeyword
    Input Text    id=email    @{CREDENTIALS}[0]   
    Input Password    id=pass    &{LOGINDATA}[password]
    Click Element    id=u_0_2
    

*** Test Cases ***  
FacebookLoginTest 
    # Login Facebook
    Open Browser    ${URL}  chrome          
    Set Browser Implicit Wait    3 
    LoginKeyword        
    Close Browser        
    
    
