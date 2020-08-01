Feature: Select Flight 

    Scenario: Select One Way Flight
    Given One way flight
    When Select Departure Flight
        And the Date is valid
        And the Departure is valid
        And the Arrival is valid
        And the Passanger is valid
        And the Cabin class is valid
        And click Search Flight
    Then User in Select Departure Flight Page

    Scenario: Select Round Flight
    Given Round flight
    When Select Departure Flight
        And the Date is valid
        And the Departure is valid
        And the Arrival is valid
        And the Passanger is valid
        And the Cabin class is valid
    Then User in Select Departure Flight Page
    When Select Return Flight 
        And the Date is valid
        And the Departure is valid
        And the Arrival is valid
        And the Passanger is valid
        And the Cabin class is valid
        And click Search Flight
    Then User in Select Return Page
    

