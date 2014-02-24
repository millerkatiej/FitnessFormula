When(/^I go to the homepage$/) do
  visit "/"
end

When(/^I follow "(.*?)"$/) do |button|
  click_button(button)
end

When(/^I fill in "(.*?)" for "(.*?)"$/) do |content, field|
 fill_in(field, with: content)
end

When(/^I press "(.*?)"$/) do |button|
  click_button(button)
end

Then(/^I should see "(.*?)"$/) do |text|
    page.should have_content(text)
end

Then(/^I should not see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^the following user:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

When(/^I should not see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

