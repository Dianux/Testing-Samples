Feature: LogIn
In order to access my account
As a user 
Successful log in should be achieved


Scenario Outline: Successful Login with Valid Credentials
Given user is at the LogIn Page
  When user enters <username> and <password>
  And clicks the LogIn button
  Then user should be greeted with correct name

  Examples:
  | username                  | password |
  | testuser_1@gmail.com      | Test@123 |
  | testuser_2@yahoo.com      | Test@153 |


Scenario Outline: Unsuccessful Login with Invalid Username
  Given user at the LogIn Page
  When user enters <username> and <password>
  And clicks the LogIn button
  Then an error message regarding username is displayed

  Examples:
  | username                | password|
  | testuser_1gmail.com     | Test@123|
  | @yahoo.com              | Test@153|
  | testuser_1@gmailcom     | Test@123|
  | testuser_2@yahoo.con    | Test@123|
  |                         | Test@123|


  Scenario Outline: Unsuccessful Login with Invalid Password
   Given user is at the LogIn Page
   When user enters <username> and <password>
   And clicks the LogIn button
   Then an error message regarding password is displayed

   Examples:
   | username                 | password    |
   | testuser_1@gmail.com     | T           |
   | testuser_3@gmail.com     | 000000000001|
   | testuser_3@gmail.com     | /*-%^&**#@! |
   | testuser_3@gmail.com     | /*test!23   |
   | testuser_2@yahoo.con     |             |

  
  Scenario Outline: User stays Logged in with Back button
   Given user is at the LogIn Page
   When user enters <username> and <password>
   And clicks the LogIn button
   And clicks back arrow button
   And clicks forward arrow button
   Then user stays signed in
  

