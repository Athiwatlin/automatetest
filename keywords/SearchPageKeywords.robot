*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot


*** Keywords ***
user go to shopee website and login with ${username} and ${password}
    CommonKeywords.Wait until element is ready then click element       xpath=//button[text()='English']
    CommonKeywords.Wait until element is ready then input text          xpath=//input[@placeholder='Phone number / Username / Email']     ${username}
    CommonKeywords.Wait until element is ready then input text          xpath=//input[@type='password' and @placeholder='Password']      ${password}        
    CommonKeywords.Wait until element is ready then click element       xpath=//button[text()='Log In']

user search keyword with ${searchKeyword}
    CommonKeywords.Wait until element is ready then input text          xpath=//input[@aria-label='Search for products, brands and shops' and @placeholder='Search for products, brands and shops']     ${searchKeyword}  
    CommonKeywords.Wait until element is ready then click element       xpath=//button[contains(@class, 'btn btn-solid-primary btn--s btn--inline shopee-searchbar__search-button')]

user display search result sort by Latest
    CommonKeywords.Wait until element is ready then click element       xpath=//button[@class='shopee-sort-by-options__option shopee-sort-by-options__option--selected' and @aria-pressed='true']/span[text()='Latest']

user display search result sort by Top Sales
    CommonKeywords.Wait until element is ready then click element       xpath=//button[@class='shopee-sort-by-options__option' and @aria-pressed='false']/span[text()='Top Sales']
