
Given /Given that the following user exists/ do
    User.create! ({:Username => 'aaaa', :password => 123456, :Name => 'faraz', :DOB => Date.new(2001,2,3)})
end

# When /I set the username to aaaa/ do
#   visit signin_url
#   fill_in "Usernamw", :with => "aaaa"
#   fill_in "Password", :with => "123456"
#   click_button "Sign in"
# end
Then(/^I am on the Jua homepage$/) do
  # pending # express the regexp above with the code you wish you had
  visit root_url
end


When(/^I set the username to aaaa$/) do
  # pending # express the regexp above with the code you wish you had
  fill_in "username_field", :with => "aaaa"
end

When(/^I set the password to (\d+)$/) do |arg1|
  # pending # express the regexp above with the code you wish you had
  fill_in "password_field", :with => "123456"
end

Then(/^I should see the message "(.*?)"$/) do |arg1|
  # pending # express the regexp above with the code you wish you had
  # assert page.has_xpath?('//div', :text => "#{arg1}")
  # page.text.should match(arg1)
  page.has_content?(arg1)
end

Then(/^I am on the user page$/) do
  # pending # express the regexp above with the code you wish you had
  # assert page.current_path == user_path
end

When(/^I set the username to billu$/) do
  # pending # express the regexp above with the code you wish you had
  fill_in "username_field", :with => "billu"
end

When(/^I set the password to LordTitos$/) do
  # pending # express the regexp above with the code you wish you had
  fill_in "password_field", :with => "LordTitos"
end

Then(/^I should be on the home page$/) do
  # pending # express the regexp above with the code you wish you had
  # assert page.current_path == root_path
end

Given(/^that the following user wants to sign up$/) do |table|
  # table is a Cucumber::Ast::Table
  # pending # express the regexp above with the code you wish you had
end

Given(/^I am on the new user page$/) do
  # pending # express the regexp above with the code you wish you had
  visit new_user_url
end

When(/^I set the username to "(.*?)"'"$/) do |arg1|
  # pending # express the regexp above with the code you wish you had
  fill_in "user_Username", :with => arg1
end

When(/^I set the password to '(\d+)'$/) do |arg1|
  # pending # express the regexp above with the code you wish you had
  fill_in "user_password", :with => arg1
end

When(/^I set the Name to "(.*?)"$/) do |arg1|
  # pending # express the regexp above with the code you wish you had
  fill_in "user_Name", :with => arg1
end

When(/^I set the Balance to "(.*?)"$/) do |arg1|
  # pending # express the regexp above with the code you wish you had
  fill_in "user_Balance", :with => arg1
end

When(/^I set the DOB to '(\d+),(\d+),(\d+)'$/) do |arg1, arg2, arg3|
  # pending # express the regexp above with the code you wish you had
  # fill_in 'user_DOB_1i', :with => arg1
  # fill_in "user_DOB_2i", :with => arg2
  # fill_in "user_DOB_3i", :with => arg2
end








