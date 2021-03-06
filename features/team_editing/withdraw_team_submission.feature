Feature: unsubmit a team

  As a student and a member of a submitted team
  So that I can make changes to my team
  I want to ensure that I can change my team status before approval
  
  Background:
    Given I clean the database
    Given the following users exist
     | name  |       email                    |team_passcode | major           | sid  | waitlisted|
     | Sahai | eecs666@hotmail.com            | penguindrool | EECS            | 000  | true |
     | Saha2 | eecs667@hotmail.com            | penguindrool | EECS            | 001  | true |
     | Saha3 | eecs668@hotmail.com            | penguindrool | EECS            | 002  | true |
     | Saha4 | eecs669@hotmail.com            | penguindrool | EECS            | 003  | true |
  	 | Jorge | legueoflegends667@hotmail.com  | penguindrool | Football Player | 999  | true |
    And the following discussions exist
   	 | number  | time         |  capacity |
   	 | 54321   | Tues, 3pm    |  25       |
   	And I am on the login page
    And I log in as a user with email "eecs666@hotmail.com"

  Scenario: A user in a submitted team successfully withdraws that team's submission
  	Given my team is submitted
  	And I am on the home page
    When I press "Withdraw Team Submission"
    Then the team with passcode "penguindrool" should not be submitted
    
  Scenario: An approved team should not be able to change its status
    Given the team with passcode "penguindrool" is approved with discussion number "54321"
    Then I should not see the "Withdraw Team Submission" button
    