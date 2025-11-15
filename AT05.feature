Feature: Shared Area Registration

  Scenario: Successful shared area registration
    Given the administrator is on the "Shared Area Registration" screen
    And the administrator has filled all required fields with valid data
      | field        | value              |
      | name         | Biblioteca Central |
      | capacity     | 80                 |
      | description  | Área de estudio    |
    When the administrator submits the shared area registration form
    Then the system should store the shared area in the database
    And "Biblioteca Central" should appear in the shared areas list

  Scenario: Shared area registration with incomplete form
    Given the administrator is on the "Shared Area Registration" screen
    And at least one required field is empty
    When the administrator submits the shared area registration form
    Then the system should show an error message "Please complete all required fields"
    And the shared area should not be stored in the database

  Scenario: Shared area registration with invalid capacity
    Given the administrator is on the "Shared Area Registration" screen
    And the administrator has entered a non-numeric capacity value "abc"
    When the administrator submits the shared area registration form
    Then the system should show an error message "Invalid capacity value"
    And the shared area should not be stored in the database
