Feature: LogIn
In order to access my account
    As a user 
    I want to log in


Scenario Outline: Successful Login with Valid Credentials
  Given User is at Home Page 
  And Navigate to LogIn Page
  When User enter <username> and <password>
  And Click on the LogIn button
  Then Successful LogIn message should display

  Examples:
  | username                  | password |
  | testuser_1@gmail.com      | Test@123 |
  | testuser_2@yahoo.com      | Test@153 |


Scenario Outline: Unsuccessful Login with Invalid Username
  Given User is at Home Page
  And Navigate to LogIn Page
  When User enter <username> and <password>
  And Click on the LogIn button
  Then I receive an error message 'Invalid username'

  Examples:
  | username                | password|
  | testuser_1gmail.com     | Test@123|
  | @yahoo.com              | Test@153|
  | testuser_1@gmailcom     | Test@123|
  | testuser_2@yahoo.con    | Test@123|
  |                         | Test@123|


  Scenario Outline: Unsuccessful Login with Invalid Password
   Given User is at  LogIn Page
   When User enter <username> and <password>
   And Click on the LogIn button
   Then I receive an error message 'Invalid password'

   Examples:
   | username                 | password    |
   | testuser_1@gmail.com     | T           |
   | testuser_3@gmail.com     | 000000000001|
   | testuser_3@gmail.com     | /*-%^&**#@! |
   | testuser_3@gmail.com     | /*test!23   |
   | testuser_2@yahoo.con     |             |

  
  Scenario Outline: User stays Logged in with Back button
   Given User is at LogIn Page
   When User enter <username> and <password>
   And select 'Keep me signed in' checkbox
   And Click on the LogIn button
   And Click on back arrow button
   And Click on forward arrow button
   Then I stay signed in
  

