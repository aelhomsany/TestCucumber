Feature: Manage Providers
  This Feature to manage Providers
  Scenario: Create Provider with valid data
    Given TPA User logged in To Coral Web System
    And   User Navigated To Providers Page
    When  User Click On Create New Provider Button
    And  user Enter "<Name>"
    And   User Filled Required Fields
      | Name              | E-mail            |
      | HassanHesham Auto | TestAuto@Auto.com |
    And   Click on Add Provider Button
    Then  Provider is added and user redirected to Providers Page successfully
  Scenario: Delete A Specific Provider
    Given TPA User logged in To Coral Web System
    And   User Navigated To Providers Page
    When  User Click On Delete Button For A specific Provider "Email"
    Then Confirmation popup is displayed successfully