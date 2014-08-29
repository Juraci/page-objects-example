class SignUpPage

  include Capybara::DSL

  def type_first_name(name)
    page.fill_in('firstname', with: name)
  end

  def type_last_name(last_name)
    page.fill_in('lastname', with: last_name)
  end

  def type_reg_email(email)
    page.fill_in('reg_email__', with: email)
  end

  def type_reg_email_confirmation(email)
    page.fill_in('reg_email_confirmation__', with: email)
  end

  def type_password(password)
    page.fill_in('reg_passwd__', with: password)
  end

  def select_month(month)
    page.select(month, from: 'birthday_month')
  end

  def select_day(day)
    page.select(day, from: 'birthday_day')
  end

  def select_year(year)
    page.select(year, from: 'birthday_year')
  end

  def choose_gender(gender)
    page.choose(gender)
  end

  def click_sign_up
    page.click_button('Sign Up')
  end
end
