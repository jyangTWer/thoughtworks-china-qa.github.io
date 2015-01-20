Feature: This is a workshop for QA test

Scenario: Create a new form
	Given I login with "0712316yangjing@163.com" with "test123"
	And I click creat new form button
	And The form name is "Workshop"
	And I add following fields:
	| field_types |
	| 单行文字    |
	And I save this form
	And I logout