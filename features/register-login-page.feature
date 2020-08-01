Feature: Register and Login

    Scenario: User register account
    Given User in login/register page
    When User fill valid Email
    And User click Continue
    And User choose Title
    And User fill valid Front Name
    And User fill valid End Name
    And User fill valid Phone Number
    And User fill Password
    And User click Create Account
    Andd User fill OTP 
    Then User should be on home page

    Scenario: User register with unregistered Email
    Given User in login/register page
    When User fill unregistered Email
    And User click Continue
    When User see confirmation pop up
    And User click Yes
    And User choose Title
    And User fill valid Front Name
    And User fill valid End Name
    And User fill valid Phone Number
    And User fill Password
    And User fill OTP that sent to phone number
    And User click Create Account
    Then User registered 

    Scenario: User register with invalid combination password
    Given User in login/register page
    When User fill valid Email
    And User click Continue
    And User choose Title
    And User fill valid Front Name
    And User fill valid End Name
    And User fill valid Phone Number
    And User fill Password with invalid combination
    Then User fail to Create Account 

    Scenario: User register with empty "Nama Depan"
    Given User in login/register page
    When User fill valid Email
    And User click Continue
    And User choose Title
    And Front Name is empty
    Then User fail to Create Account

    Scenario: User register with empty Phone Number
    Given User in login/register page
    When User fill valid Email
    And User click Continue
    And User choose Title
    And User fill valid Front Name
    And User fill valid End Name
    And Phone Number is empty
    Then User fail to Create Account

    Scenario: User register with used Phone Number
    Given User in login/register page
    When User fill valid Email
    And User click Continue
    And User choose Title
    And User fill valid Front Name
    And User fill valid End Name
    And User fill used Phone Number
    Then User fail to Create Account

    Scenario: The user login with registered account
    Given User on login page
    When User fill valid Email
    And User click Continue
    And User fill in Password with valid password
    And User click Log In
    Then User should be on home page

    Scenario: Login with valid Email and invalid Password
    Given User Login page
    And User fill valid Email
    And User fill invalid Password
    And user click Log In
    Then User fail to Log In

    Scenario: Login with valid Email and empty Password
    Given User Login page
    And User fill valid Email
    And Password field is empty
    And user click Log In
    Then User fail to Log In

    


