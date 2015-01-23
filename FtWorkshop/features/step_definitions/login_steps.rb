Given(/^I login with "(.*?)" with "(.*?)"$/) do |email, password|
	login_page = LoginPage.new
	login_page.load
	login_page.login(email, password)
end

Then(/^I should see "(.*?)"$/) do |username|
	expect(page).to have_text(username)
end

Given(/^I logout$/) do
	@home_page.user_info.click_setting
	@home_page.user_info.setting_list.logout
end
