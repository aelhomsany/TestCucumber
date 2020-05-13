@CW-52 @ui
Feature: Providers List
    #This feature tests that Listing page of the Providers created on Coral by admin

    Scenario: CoralAdminProvidersList - Empty Providers list
        Given There is no Providers added on the system
        And   No Providers added to the system
        When  Coral admin go to Providers list
        Then  An empty list displayed
        And   Empty state displayed ""
    #empty state will be added by UX team

    Scenario: CoralAdminProvidersList - Checking Provider data displayed
        Given The Provider created and all details are entered
        When  Coral admin go to Provider list screen
        Then  Provider details will display the data:
            | ID | Provider Name | Admin Email | Tax ID | NPI | Address | City | State | Zip | Phone | Status | Deployment Status |


    Scenario: CoralAdminProvidersList - Action buttons existence
        Given The Provider created and all details are entered
        When  Coral admin go to Providers list screen
        Then  For each Provider created will display Deployment Status "Active & In-active"
        And   For each Provider created will display the following actions:
            | Edit | Activate | Deactivate |

    Scenario: CoralAdminProvidersList - Created Provider displayed in list
        Given Coral admin goes to creation page to create new Provider
        And   Entered all required data correctly
        When  Click on submit button
        Then  The system will redirected to the list screen
        And   The newly created Provider displayed successfully

    Scenario: CoralAdminProvidersList - Edit Provider update Providers list
        Given There is already Provider created
        When  Coral admin click on Edit button
        And   Edit some data in the Provider details
        And   Click Submit button
        Then  Feedback message displayed
        And   Redirected to the Listing screen successfully
        And   The updated data displayed correctly

    Scenario: CoralAdminProvidersList - Check the responsive of the visual design
        Given The Provider listing screen is deployed
        And   There are created Providers on Coral system
        When  Coral admin navigate to Provider list screen
        And   Check the responsive of the screen in in different sizes and resolution
        Then  The screen function correct user can use all function with no obstacles

    Scenario: CoralAdminProvidersList - Provider list screen working with google chrome and FireFox browsers
        Given The Provider listing screen is deployed
        And   There are created Providers on Coral system
        When  User tries different browsers "FireFox & Google chrome" when view the screen
        Then  The list screen displays the Providers list and its data correctly

