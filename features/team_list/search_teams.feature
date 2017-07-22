Feature: Search Function for Team List
  As a user
  In order to find a team my friend is in
  I want to search the team list for my friend's name

  Background:
    Given the following users exist
      |   name    |       email                       | team      | major             |       sid         |  
      | Bob       |    bobjones0@berkeley.edu         | passcode1 | Slavic Studies    | 824               |
      | Bob1      |    bobjones1@berkeley.edu         | passcode1 | Slavic Studies    | 825               |
      | Sahai     |    xxx@berkeley.edu         | passcode2 | Slav1c Studies    | 830               |
      | Saha2     |    xx2@berkeley.edu         | passcode2 | Slav1c Studies    | 831               |
      | Jorge     |    legueoflegends667@hotmail.com  | passcode3 | Football Player   | 999               |
    
    And team "passcode1" has 0 pending requests
    And team "passcode2" has 2 pending requests
    And team "passcode3" has 1 pending request
    
    And team "passcode1" is declared
    And team "passcode2" is declared
    And team "passcode3" is not declared
    
    And I am on the home page
    And I follow "Team List"

  # Search feature to find team with certain member's name
  Scenario: A user searches for a team with a certain member
    Given I fill in "search" with "Jorge"
    When I press submit
    Then I should see "Jorge"
    And I should not see "Bob"
    And I should not see "Sahai"