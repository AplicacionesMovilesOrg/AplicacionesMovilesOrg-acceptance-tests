Feature: Register Teacher Access Information

  Scenario: Successful access registration
    Given the administrator has completed the teacher access form with valid credentials
    When the administrator submits the registration
    Then the system should store the teacher’s login credentials in the database
    And display a success message "Access information registered successfully"

  Scenario: Invalid access information
    Given the administrator has completed the form with invalid data
    When the administrator submits the registration
    Then the system should display an error message "Invalid format in access information"
    And no data should be saved in the database

  Scenario: Missing required fields
    Given the administrator has left some required fields empty
    When the administrator submits the registration
    Then the system should display an error message "All required fields must be filled"
    And no data should be saved in the database
