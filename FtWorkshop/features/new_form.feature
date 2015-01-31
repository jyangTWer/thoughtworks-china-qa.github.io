Feature: This is a workshop for QA test

Scenario: Login successfully
	Given I login with "1920790521@qq.com" with "test123"
	Then I should see "workshop"

Scenario: Login failed
	Given I login with "1920790521@qq.com" with "test"
	Then I should see "邮箱或密码错误" on login page
