#form_test_steps.rb

Given(/^I visit the test form page$/)do
  visit :form_page
end

When(/^I fill in the user first name$/) do
  @page.fill_in_first_name("GivenName")
end

When(/^I fill in the user last name$/) do
  @page.fill_in_last_name("SurName")
end

When(/^I click the submit button$/) do
  @page.submit
end

Then(/^I'm on the response page\.$/) do
  on :response_page
end

