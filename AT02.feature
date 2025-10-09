Feature: Register Teacher Personal Information

  Scenario: Successful registration with complete data
    Given the administrator has entered all required teacher information in the registration form
    When the administrator submits the registration
    Then the system should store the teacher’s data in the database
    And display a confirmation message "Registration completed successfully"

  Scenario: Registration with incomplete information
    Given the administrator has left required fields empty in the registration form
    When the administrator submits the registration
    Then the system should display an error message "Please complete all required fields"
