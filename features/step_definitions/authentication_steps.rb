When(/^I go to the homepage$/) do
  visit "/"
end

When(/^I follow "(.*?)"$/) do |link|
  click_link(link)
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

Then(/^I should not see "(.*?)"$/) do |text|
  page.should_not have_content(text)
end




