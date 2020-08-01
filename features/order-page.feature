Feature: Order Page

    Scenario: Order Round Flight
    Given valid Departure Flight Details
    And valid Return Flight Details
    When User enter valid Contact Person Details
    And User enter Passanger Details
    And User skip Travel Add-ons
    And User skip Travel Essentials
    And User skip Insurance
    And Select Continue to Payment Button
    Then User on Payment page

    Scenario: Order One Way Flight
    Given valid Departure Flight Details
    When User enter valid Contact Person Details
    Ans User enter Passanger Details
    And User have no add Baggage
    And User select valid Travel Essentials
    And Select Continue to Payment Button
    And User on Payment page

    Scenario: Order one way flight with empty Passanger Details
    Given valid Departure Flight Details
    When When User enter valid Contact Person Details
    And Passanger Details is empty
    And User have no add Baggage
    And Select Continue to Payment Button
    Then User back to Passanger Details

    Scenario: Order Round Flight with empty Passanger Details
    Given valid Departure Flight Details
    And valid Return Flight Details
    When User enter valid Contact Person Details
    And Passanger Details is empty
    And User have no add Baggage
    And Select Continue to Payment Button
    Then User back to Passanger Details 


    Travel Essentials
