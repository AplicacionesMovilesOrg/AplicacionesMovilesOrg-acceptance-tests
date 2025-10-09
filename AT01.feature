Feature: Administrator Login Access

  Scenario: Successful login with valid credentials
    Given the administrator has an account registered with email "admin@example.com" and password "password123"
    When the administrator enters "admin@example.com" and "password123" on the login page
    Then the system should authenticate the administrator successfully
    And the administrator should be redirected to the administration dashboard

  Scenario: Failed login with incorrect credentials
    Given the administrator has an account registered with email "admin@example.com" and password "password123"
    When the administrator enters "admin@example.com" and "wrongPassword123" on the login page
    Then the system should display an error message "Invalid credentials"
