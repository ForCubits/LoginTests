Given /^I am on cubits\.com$/ do
   visit('https://cubits.com')
end

When /^I click "([^"]*)"$/ do |locator|
   click_on locator
end

When /^I login with "(.*?)" username and "(.*?)" password$/ do |user, password|
   fill_in 'user_email', with: user
   fill_in 'user_password', with: password
   click_button 'Login'
end

Then /^I should see text "(.*?)"$/ do |text|
   expect(page).to have_content(text)
end
