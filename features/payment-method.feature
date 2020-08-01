Feature: Payment Method

    Scenario: Pay with Credit Card/Debit
    Given Order flight is successful
    When User select Credit Card Payment
    And Booking time still available
    And User select Credit Card
    Then User on Credit Card Page
    And User enter valid Credit Card details
    And User Click Pay
    Then Enter OTP code
    And click Submit
    Then payment successful

    Scenario: Pay with Installment without Credit Card
    Given Order flight is successful
    When User select Kredivo
    And Booking time still available
    Then User on Kredivo Details Page
    And User select valid Metode Pembayaran
    And User enter valid phone number
    And User enter valid PIN
    And User click Login
    Then payment successful

    Scenario: Pay with Virtual Account 
    Given Passanger Details
    When User select Virtual Account
    And User select BCA Virtual Account
    And User skip Promo code
    And User click Continue
    And User click I Have Completed Payment
    Then payment successful

    Scenario: Pay with Instant Payment
    Given Order flight is successful
    When User select Instant Payment
    And User select Gopay
    And User skip Promo code
    And User click Pay
    And User scan the QR code
    Then payment successful

    Scenario: Pay with Instant Payment with insufficient balance
    Given Order flight is successful
    When User select Instant Payment
    And User select Gopay
    And User skip Promo code
    And User click Pay
    And User scan the QR code
    Then the payment not working

