Feature: Classroom Registration

  Scenario: Successful classroom registration with valid data
    Given the administrator is on the "Classroom Registration" screen
    And the administrator has filled all required fields with valid data
      | field        | value         |
      | name         | Aula 201      |
      | capacity     | 35            |
      | location     | Pabellón B    |
    When the administrator submits the classroom registration form
    Then the system should store the classroom in the database
    And the classroom "Aula 201" should appear in the registered classrooms list

  Scenario: Classroom registration with missing required fields
    Given the administrator is on the "Classroom Registration" screen
    And the administrator has filled only some of the required fields
    When the administrator submits the classroom registration form
    Then the system should show an error message "Please complete all required fields"
    And the classroom should not be stored in the database

  Scenario: Classroom registration with incorrect information format
    Given the administrator is on the "Classroom Registration" screen
    And the administrator has entered an invalid capacity value "-5"
    When the administrator submits the classroom registration form
    Then the system should show an error message "Invalid classroom information"
    And the classroom should not be stored in the database
