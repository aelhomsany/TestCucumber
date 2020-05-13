@CW-52 @api
Feature: Coral Admin-Providers List
    #As a Coral Admin, I need to view all Providers defined in Coral

    Background: Coral admin be authenticated
        Given "coral admin" user authenticated and valid token is returned

    # Happy Scenario with Un-Deployed Providers
    Scenario: CoralAdminProvidersList - Coral admin list all Providers
        When "Coral Admin" list all Providers
        Then  response status code is "200"
        And   Providers list returned
        And   each Provider object should contains
            | id | name | address | city | state | zip_code | phone | tax_id | npi | url | fax | is_active | can_upload_bundles | is_deployed | user |


    # Happy Scenario with Depolyed Providers
    Scenario: CoralAdminProvidersList - Coral admin list all Providers
        When "Coral Admin" list all Providers
        Then  response status code is "200"
        And   Providers list returned
        And   each Provider object should contains
            | id | name | address | city | state | zip_code | phone | tax_id | npi | url | fax | is_active | can_upload_bundles | is_deployed | user | id | first_name | last_name | email | phone |


        #Negative Scenario
        Scenario : CoralAdminProvidersList - Coral admin list all Providers with invalid token
        When  user sends invalid "<id_token>" in header
        Then  response status code is "<status_code>"
        And   response error message is "<response_message>"
        Examples:
            | id_token   | status_code | response_message |
            #Invalid id token
            | wrongToken | 401         | Invalid token    |
            #Empty parameter "id token "
            |            | 401         | Invalid token    |
            #expired id id Token
            |            | 401         | Invalid token    |



