*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/SearchPageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome


*** Test Cases ***

As a user, User login shopee website, and validate landing home page with English language
    When user go to shopee website and login with ${username} and ${password} 
    

As a user, validate search keyword
    When user go to shopee website and login with ${username} and ${password} Then user search keyword with ${searchKeyword} 

As a user, validate display search result as a list by Latest
    When user go to shopee website and login with ${username} and ${password} Then user search keyword with ${searchKeyword}
    Then user display search result sort by Latest 

As a user, validate display search result as a list by Top Sales
    When user go to shopee website and login with ${username} and ${password} Then user search keyword with ${searchKeyword}
    Then user display search result sort by Top Sales 
    