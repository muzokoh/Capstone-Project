@CompleteRetailPageTest
Feature: Test scenarios for Retail Page


	Background:
		Given User is on Retail website
		And User click on MyAccount
		When User click on Login
		And User enter username ‘userName’ and password ‘password’
		And User click on Login button
		Then User should be logged in to MyAccount dashboard


		#done
		@RetailPageTest1
		Scenario: Register as an Affiliate user with Cheque Payment Method
		When User click on ‘Register for an Affiliate Account’ link
		And User fill affiliate form with below information
		|company|website|taxID|paymentMethod|ChequePayeeName|    # i add ChequePayeeName part check it again 
		|ABCD|ABCD|123|Cheque|ABCD| 	 # i add this part check it again 
		And User check on About us check box
		And User click on Continue button
		Then User should see a success message

		#done
		@RetailPageTest2
		Scenario: Edit your affiliate information from Cheque payment method to Bank Transfer
		When User click on ‘Edit your affiliate informationlink’
		And user click on Bank Transfer radio button
		And User fill Bank information with below information
		|bankName|abaNumber|swiftCode|accountName|accountNumber|
		|ABC Bank|123|ABC123|MyAccount|123|		# i add this part check it again
		And User click on Continue button
		Then User should see a success message 

		#done
		@RetailPageTest3
		Scenario: Edit your account Information
		When User click on ‘Edit your account information’ link
		And User modify below information
		|firstname|lastName|email|telephone|
		|Mo|Salah|Liverpool@YNWA.com|1234567|
		And User click on Continue button
		Then User should see a message ‘Success: Your account has been successfully updated.’


