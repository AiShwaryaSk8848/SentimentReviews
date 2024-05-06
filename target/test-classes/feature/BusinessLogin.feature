Feature: Mutiple Business Login Cases
Scenario: Register user with valid details
	Given Open website
	When Click Business login button
	And Add Name "Aishwarya"
	And Add phone number "8848027402"
	And Add full name "Aishwarya SK"
	And Add valid email address "email@google.com"
	Then Click Login 
	But Close browser
	
Scenario: Register user with invalid username
	Given Open website
	When Click Business login button
	And Add Name "125556"
	And Add phone number "8848027402"
	And Add full name "Aishwarya SK"
	And Add valid email address "email@google.com"
	Then Click Login 
	But Close browser	
	
	Scenario: Register user with invalid phone number
	Given Open website
	When Click Business login button
	And Add Name "Aishwarya"
	And Add phone number "111123"
	And Add full name "Aishwarya SK"
	And Add valid email address "email@google.com"
	Then Click Login 
	But Close browser
	
	Scenario: Register user with invalid fullname
	Given Open website
	When Click Business login button
	And Add Name "Aishwarya"
	And Add phone number "8848027402"
	And Add full name "*%@"
	And Add valid email address "email@google.com"
	Then Click Login 
	But Close browser
	
	Scenario: Register user with invalid email address
	Given Open website
	When Click Business login button
	And Add Name "Aishwarya"
	And Add phone number "8848027402"
	And Add full name "Aishwarya SK"
	And Add valid email address "@gmail.com"
	Then Click Login 
	But Close browser
	
	Scenario: Register user with invalid username and phone number
	Given Open website
	When Click Business login button
	And Add Name "@gmail"
	And Add phone number "000"
	And Add full name "Aishwarya SK"
	And Add valid email address "email@google.com"
	Then Click Login 
	But Close browser
	
	Scenario: Register user with invalid username and full name
	Given Open website
	When Click Business login button
	And Add Name "@#@#"
	And Add phone number "8848027402"
	And Add full name "&%%%"
	And Add valid email address "email@google.com"
	Then Click Login 
	But Close browser
	
Scenario: Register user with invalid username and email id
	Given Open website
	When Click Business login button
	And Add Name "@***@"
	And Add phone number "8848027402"
	And Add full name "Aishwarya SK"
	And Add valid email address "@gmail.com"
	Then Click Login 
	But Close browser
	
	
Scenario: Register user with invalid username, phone number and full name
	Given Open website
	When Click Business login button
	And Add Name "@#&"
	And Add phone number "####"
	And Add full name "****"
	And Add valid email address "email@google.com"
	Then Click Login 
	But Close browser
	
Scenario: Register user with invalid username, phone number and email address
	Given Open website
	When Click Business login button
	And Add Name "#**"
	And Add phone number "####"
	And Add full name "Aishwarya SK"
	And Add valid email address "@***"
	Then Click Login 
	But Close browser
	
	
	
Scenario: Register user with full invalid details
	Given Open website
	When Click Business login button
	And Add Name "#**"
	And Add phone number "###"
	And Add full name %%%"
	And Add valid email address "#gmail.com"
	Then Click Login 
	But Close browser
	
Scenario: Register user with blank name
	Given Open website
	When Click Business login button
	And Add Name " "
	And Add phone number "8848027402"
	And Add full name "*****"
	And Add valid email address "email@google.com"
	Then Click Login 
	But Close browser
	
Scenario: Register user with blank phone number
	Given Open website
	When Click Business login button
	And Add Name "Aishwarya"
	And Add phone number ""
	And Add full name "*****"
	And Add valid email address "email@google.com"
	Then Click Login 
	But Close browser

Scenario: Register user with blank full name
	Given Open website
	When Click Business login button
	And Add Name "Aishwarya"
	And Add phone number "8848027402
	And Add full name ""
	And Add valid email address "email@google.com"
	Then Click Login 
	But Close browser
	
Scenario: Register with blank email address
	Given Open website
	When Click Business login button
	And Add Name "Aishwarya"
	And Add phone number "8848027402"
	And Add full name "Aishwarya SK"
	And Add valid email address ""
	Then Click Login 
	But Close browser
	