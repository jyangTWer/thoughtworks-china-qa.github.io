Feature: This is a workshop for QA test

Scenario: Login successfully
	Given I login with "1920790521@qq.com" with "test123"
	Then I should see "workshop"

Scenario: Login failed
	Given I login with "1920790521@qq.com" with "test"
	Then I should see "邮箱或密码错误" on login page

Scenario: Create a new form
	Given I login with "1920790521@qq.com" with "test123"
	And I click creat new form button
	And The form name is "Workshop"
	And I add following fields:
	| field_types |
	| 单行文字    |
	And I save this form
	And I logout
