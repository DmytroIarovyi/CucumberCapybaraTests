Given("I am on the Cubits home page") do
  visit 'https://cubits.com/'
end

Given("I am on the Cubits login page") do
  visit 'https://cubits.com/users/sign_in'
end

Given("I am not currently logged in") do
  page.should have_content("LOGIN")
end

When(/^I click "([^"]*)"$/) do |string|
  click_on string
end

When("I click Login on next page") do
  click_on(class: 'btn btn_yellow btn_center btn_w220')
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |string, string2|
  fill_in string, :with => string2
end

Then("I should see {string}") do |string|
  page.should have_content(string)
end