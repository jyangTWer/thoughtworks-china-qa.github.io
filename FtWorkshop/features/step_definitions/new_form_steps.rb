Given(/^I click creat new form button$/) do
  @home_page = HomePage.new
  @home_page.create_new_form.new_form
end

Given(/^The form name is "(.*?)"$/) do |form_title|
  @new_form_page = NewFormPage.new
  @new_form_page.fill_name(form_title)
end

Given(/^I add following fields:$/) do |table|
	@new_form_page.add_new_field(table.hashes)
end

Given(/^I save this form$/) do
	@new_form_page.save_form
end
