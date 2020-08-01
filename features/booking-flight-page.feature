Feature: Booking Flight

    Scenario: Booking one way flight with registered account 
    Given User already Login
        And the Date is valid
        And the Departure is valid
        And the Arrival is valid
        And the Passanger is valid
        And the Cabin class is valid
        And click Search Flight
    When User Click Search Flight
    And User Select the airlines
    And User click Select
    Then User see Order page
    
    Scenario: Booking round flight with registered account
    Given User already Login
        And the Date is valid
        And the Departure is valid
        And the Arrival is valid
        And the Passanger is valid
        And the Cabin class is valid
        And click Search Flight
    When User Click Search Flight
    And User Select Departure Flight airlines
    And User click Select
    And Select Return Flight airlines
    Then User see Order Page

    Scenario: Booking one way flight as Guest
    Given Tiket.com homepage
    When User select One Way flights
    And User enter valid Departure location
    And User enter valid Arrival location
    And User enter valid Departure time
    And User enter valid Passanger
    And User enter valid Cabin class
    And User click Search flight
    Then User see Departure Flight Page
    And User select Departure Flight airlines
    And User see Order Page

    Scenario: Booking round flight as Guest
    Given Tiket.com homepage
    When User select Roundtrip
    And User enter valid Departure location
    And User enter valid Arrival location
    And User enter valid Departure time
    And User enter valid Return time
    And User enter valid Passanger
    And User enter valid Cabin class
    And User click Search flight
    And User Select Departure Flight airlines
    And User click Select
    And Select Return Flight airlines
    Then User see Order Page

    Scenario: Booking one way flight with same Departure and same Arrival with registered account
    Given User already Login
    When User select One Way flights
    And User enter valid Departure location
    And User enter Arrival location same with Departure location
    And User enter valid Departure time
    And User enter valid Passanger
    And User click Search flight
    Then User see error message "Departure and Destination must be different"

    Scenario: Booking one way flight with same Departure and same Arrival as guest
    Given Tiket.com homepage
    When User select One Way flights
    And User enter valid Departure location
    And User enter Arrival location same with Departure location
    And User enter valid Departure time
    And User enter valid Passanger
    And User click Search flight
    Then User see error message "Departure and Destination must be different"

    Scenario: Booking round flight with same Departure and same Arrival as registered account
    Given User already Login
    When User select Roundtrip Flights
    And User enter valid Departure location
    And User enter Arrival location same with Departure location
    And User enter valid Departure time
    And User enter valid Passanger
    And User click Search flight
    Then User see error message "Departure and Destination must be different"

    Scenario: Booking round flight with same Departure and same Arrival as Guest
    Given Tiket.com homepage
    When User select Roundtrip flights
    And User enter valid Departure location
    And User enter Arrival location same with Departure location
    And User enter valid Departure time
    And User enter valid Passanger
    And User click Search flight
    Then User see error message "Departure and Destination must be different"

    Scenario: Booking round flight with same Date and booking return flight before 3 hours with registered account
    Given User already Login
    When User select Roundtrip Flights
    And User enter valid Departure location
    And User enter valid Arrival location
    And User enter Departure time
    And User enter Arrival time same with Departure time
    And User enter valid Passanger
    And User click Search flight
    Then User on Departure Flight Search result
        And User click Sort By button
        And User select Earliest arrival
        And User select the first list 
    Then User on Return Flifht Search result
        And User click Sort By button
        And User select Earlist arrival
        And User select the first list
    Then Content Notification appear 

    Scenario: Booking one way flight with 1 child without 1 adult 
    Given Flight content
    When User select one way flight
    And User enter valid Departure location
    And User enter valid Arrival location
    And User enter valid Departure time
    And User enter valid Return time
    And User add 1 child Passanger
    When User click minus on Adult Passanger
    Then Keyboard not focusable
