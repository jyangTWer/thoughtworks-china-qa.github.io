class NewField < SitePrism::Section
	elements :fields, 'div.new-field div'

	def pick_fields(types)
		fields.each do |field|
			types.each do |type|
				field.click if field.text == type['field_types']
			end
		end
	end
end

class NewFormPage < SitePrism::Page
	element :new_form_name, '#form_name'
	element :add_new_field_button, '#add_field_toggle'
	section :new_field, NewField, '#add_field_toggle + div'
	element :save_form_button, '#save_form'

	def fill_name(name)
		new_form_name.set name
	end

	def add_new_field(types)
		self.wait_until_add_new_field_button_visible
		add_new_field_button.click
		self.wait_until_new_field_visible
		new_field.pick_fields(types)
	end

	def save_form
		SitePrism::Page.element :icon_save_form, '#save_form i'
		save_form_button.click
		self.wait_until_icon_save_form_visible 
	end
end
