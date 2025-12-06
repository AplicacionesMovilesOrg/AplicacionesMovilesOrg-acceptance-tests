Feature: Teacher home view

   Scenario: Teacher sees main actions on the home screen
    Given the teacher has logged into the application
    When the teacher opens the home view
    Then the system should display shortcuts to the main functions
    And show the teacher's name or identifier at the top

  Scenario: Teacher views upcoming reservations summary
    Given the teacher has upcoming reservations
    When the teacher opens the home view
    Then the system should show a list of upcoming reservations
    And include date, time, and space information

  Scenario: Empty state when teacher has no upcoming reservations
    Given the teacher does not have upcoming reservations
    When the teacher opens the home view
    Then the system should display a message "You have no reservations"
    And show an action button "Reserve a space"
