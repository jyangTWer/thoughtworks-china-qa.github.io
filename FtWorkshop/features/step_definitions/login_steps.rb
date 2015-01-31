Given(/^I login with "(.*?)" with "(.*?)"$/) do |email, password|
	@login_page = LoginPage.new
	@login_page.load
	@login_page.login(email, password)
end

Then(/^I should see "(.*?)"$/) do |username|
	expect(page).to have_text(username)
end

Then(/^I should see "(.*?)" on login page$/) do |error_message|
	expect(@login_page.failed_message).to eq error_message
end
