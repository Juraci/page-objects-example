Given /^I attempt to visit facebook page$/ do
  visit 'http://facebook.com'
end

When /^I fill in the information$/ do
  @sign_up = SignUpPage.new
  @sign_up.type_first_name("Name")
  @sign_up.type_last_name("LastName")
  @sign_up.type_reg_email("sample@example.com")
  @sign_up.type_reg_email_confirmation("sample@example.com")
  @sign_up.type_password('jfoii3j32j')


  @sign_up.select_month 'Feb'
  @sign_up.select_day '20'
  @sign_up.select_year '1996'

  @sign_up.choose_gender 'Male'
  #@sign_up.click_sign_up
end

When /^I fill in the information leaving the email field blank$/ do
  @sign_up = SignUpPage.new
  @sign_up.type_first_name('Name')
  @sign_up.type_last_name('LatName')
  @sign_up.type_password('jfoii3j32j')

  @sign_up.select_month 'Feb'
  @sign_up.select_day '20'
  @sign_up.select_year '1996'

  @sign_up.choose_gender 'Male'
  #@page.click_sign_up
end

Then /^I should have a facebook account$/ do
end

Then /^I should see an error message$/ do
end
