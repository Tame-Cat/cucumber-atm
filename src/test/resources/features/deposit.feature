Feature: deposit
  As a customer
  I want to deposit from my account using ATM

  Background:
    Given a customer with id 20 and pin 7889 with balance 4600.00 exists
    When I login to ATM with id 20 and pin 7889

  Scenario: Deposit to my account
    When I deposit 400 by CDM
    Then my account balance is 5000.00
