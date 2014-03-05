Given(/^I'm signed in as "?(.*?)"?$/) do |email|
  @user = Fabricate(:user)
  visit new_user_session_path
  fill_in "Email", with: email
  fill_in "Password", with: "password"
  click_button "Sign in"
  page.should have_content("Signed in successfully")
end

Then(/^I should go to the new_exercise page$/) do
  visit "/exercises/new"
end

