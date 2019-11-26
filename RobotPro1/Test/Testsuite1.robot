*** Settings ***
Library     SeleniumLibrary
Suite Setup       Log    Inside Test suite    
Suite Teardown    Log    Inside Test Teardown
Test Setup        Log    Inside Test Setup    
Test Teardown     Log    Inside Test Teardown        

Default Tags    Sanity

*** Test Cases ***
MyFirstTest
    [Tags]    Smoke
    Log    Hello World...

My2ndTest
    Log    2nd Test    
 
My3rdTest
    Log    3rd Test

    
# First Selenium Test
    # open browser    https://google.com    chrome
    # Set Browser Implicit Wait    5
    # Input Text      name=q                ttorial
    # Press Keys      name=q                ENTER
    # # Click Button    name=btnk                     
    # Sleep           2    
    # close browser
    # Log    Completed         

# Sample Login Test
    # Open Browser     ${URL}    chrome
    # Set Browser Implicit Wait    5
    # # Input Text      id=user    sharmila.p@mgtechsoft.com
    # # Input Text      id=pass   Microg@Sharmi
    # # OR WE CAN WRITE LIKE AS BELOW ALSO
    # #Input Text        id=user     @{CREDENTIALS}[0]    
    # #Input Text        id=pass     @{CREDENTIALS}[1]
    # #Click Button       name=login
    # LoginKW
    # Sleep    7    
    # Click Element    id=roundcubePreview 
    # Sleep    5       
    # Click Element    id=lblLogout    
    # Close Browser      
    # Log    Completed 
    
*** Variables ***
${URL}    https://webmail.mgtechsoft.com/
@{CREDENTIALS}    sharmila.p@mgtechsoft.com     Microg@Sharmi   
 
*** Keywords ***
LoginKW
    Input Text        id=user     @{CREDENTIALS}[0]    
    Input Text        id=pass     @{CREDENTIALS}[1]
    Click Button      name=login


   