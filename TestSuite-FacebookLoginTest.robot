*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
#   Scalar Variable     
#   ${variable_name}    item1
${URL}    https://facebook.com

#   List Variable       
#   @{variable_name}    item1   item2   item3   ... 
#   note : item1 = [0], item2 = [1],  item3   = [2]   ...
@{CREDENTIALS}    youremail    yourpassword

#   Dictionary Variable     
#   &{variable_name}    keyword1=item1  keyword2=item2  ...
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
    
    
