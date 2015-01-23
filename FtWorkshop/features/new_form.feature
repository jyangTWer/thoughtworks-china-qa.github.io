Feature: This is a workshop for QA test

Scenario: Login successfully
	Given I login with "0712316yangjing@163.com" with "test123"
	Then I should see "杨静TW"

Scenario: Login failed
	Given I login with "0712316yangjing@163.com" with "test"
	Then I should see "邮箱或密码错误"
