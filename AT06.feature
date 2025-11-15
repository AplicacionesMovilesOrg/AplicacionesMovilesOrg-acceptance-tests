Feature: Shared Area Schedule Registration
  
  Scenario: Successful registration of shared area schedule
    Given the administrator is on the "Shared Area Schedule" screen
    And the administrator has selected the shared area "Laboratorio de Cómputo"
    And the administrator has selected a valid date and time range
    When the administrator saves the schedule
    Then the system should store the schedule for "Laboratorio de Cómputo"
    And the schedule should appear in the list of time slots for that area

  Scenario: Attempt to register schedule with empty fields
    Given the administrator is on the "Shared Area Schedule" screen
    And no time slot has been selected
    When the administrator tries to save the schedule
    Then the system should show an error message "Select date and time before saving"
    And the schedule should not be stored

  Scenario: Attempt to register schedule that overlaps another schedule
    Given there is already a schedule for "Laboratorio de Cómputo" from "10:00" to "12:00"
    And the administrator selects a new schedule for "Laboratorio de Cómputo" from "11:00" to "12:00"
    When the administrator tries to save the schedule
    Then the system should show an error message "Time slot overlaps an existing schedule"
    And the new schedule should not be stored
