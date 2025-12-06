Feature: Shared Space Reservation

  Scenario: Teacher views available shared spaces
    Given the teacher is on the shared spaces screen
    When the system loads the list of spaces
    Then the system should display available spaces with name and capacity
    And provide a filter or search option

  Scenario: Teacher views available time slots for a space
    Given the teacher has selected a specific space
    When the system loads the available slots
    Then the system should show the date and time for each slot
    And indicate which slots are available

  Scenario: Teacher successfully reserves a time slot
    Given the selected slot is available
    When the teacher confirms the reservation
    Then the system should create the reservation
    And display a success message "Reservation completed"

  Scenario: Teacher attempts to reserve an unavailable slot
    Given the selected slot has already been taken
    When the teacher tries to confirm the reservation
    Then the system should display an error message "Time slot unavailable"
    And no reservation should be created
