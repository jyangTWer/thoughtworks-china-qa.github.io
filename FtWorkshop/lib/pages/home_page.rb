class CreateNewForm < SitePrism::Section
	element :create_new, 'div.normal-create a'

	def new_form
		create_new.click
	end
end

class SettingList < SitePrism::Section
	element :logout_link, 'li.logout a'

	def logout
		logout_link.click
	end
end

class UserInfo < SitePrism::Section
	element :setting, 'a.top-settings'
	section :setting_list, SettingList, 'ul.setting-links'

	def click_setting
		setting.click
	end
end

class HomePage < SitePrism::Page
	section :create_new_form, CreateNewForm, 'div.create-new'
	section :user_info, UserInfo, 'div.top-bar div.pull-right'
end
