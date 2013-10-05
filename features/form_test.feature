Feature: Testing a form with Ruby
  In order to demonstrate Cucumber and Selenium with a page object
  As a developer testing software
  I want to use it in a practice setting
 
  Scenario: Filling out a very simple form.

    Given I visit the test form page
     When I fill in the user first name     
      And I fill in the user last name 
      And I click the submit button
     Then I'm on the response page.

