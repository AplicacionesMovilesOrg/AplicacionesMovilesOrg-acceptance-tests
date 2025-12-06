Feature: Cross-Platform Visual Integration

  Scenario: Home screens visually match across platforms
    Given both the Android and Flutter home screens are implemented
    When the user compares their appearance
    Then the system should show consistent primary colors
    And matching typography styles

  Scenario: Icons follow the same visual style on both platforms
    Given the user navigates through both applications
    When icons are displayed
    Then the icon style should be uniform and aligned with the design system

  Scenario: Error states look consistent across platforms
    Given an error occurs in both Android and Flutter
    When the system displays the error views
    Then both apps should use the same error color and layout
    And show a clear message and retry action
