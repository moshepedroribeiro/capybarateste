Quando('eu uso um script') do
  visit('/users/sign_in')
  fill_in(id: 'user_email', with: 'moises.ribeiro.developer@gmail.com')
  fill_in(id: 'user_password', with: '123456')
  click_on('Acessar')
  sleep(5)

  page.execute_script('window.scrollBy(0, 500)')
  @result = page.evaluate_script('4 + 4')
  puts @result

  sleep(5)
end