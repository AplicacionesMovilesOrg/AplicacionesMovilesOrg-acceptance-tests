Feature: Resource Registration

  Scenario: Successful registration of a resource
    Given the administrator is on the "Resource Registration" screen
    And the administrator has selected the classroom "Aula 201"
    And the administrator has filled the resource form with valid data
      | field    | value        |
      | name     | Proyector HD |
      | type     | Audiovisual  |
      | quantity | 1            |
    When the administrator submits the resource form
    Then the system should store the resource for "Aula 201"
    And "Proyector HD" should appear in the resource list of "Aula 201"

  Scenario: Resource registration with incomplete information
    Given the administrator is on the "Resource Registration" screen
    And the administrator has left at least one required field empty
    When the administrator submits the resource form
    Then the system should show an error message "All required fields must be filled"
    And the resource should not be stored

  Scenario: Resource registration with invalid quantity
    Given the administrator is on the "Resource Registration" screen
    And the administrator has entered quantity "-3"
    When the administrator submits the resource form
    Then the system should show an error message "Quantity must be greater than zero"
    And the resource should not be stored
