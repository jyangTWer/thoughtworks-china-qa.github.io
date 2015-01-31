class LoginPage < SitePrism::Page
	set_url '/'

	element :login_failed_error, 'section.login-panel div.alert'
	element :mail_input, '#auth_key'
	element :password_input, '#password'
	element :login_button, 'input[name="commit"]'

	def login(email, password)
		mail_input.set email
		password_input.set password
		login_button.click
	end
end
