Quando('seleciono o mouse hove') do
  visit('/users/sign_in')
  fill_in(id: 'user_email', with: 'moises.ribeiro.developer@gmail.com')
  fill_in(id: 'user_password', with: '123456')
  click_on('Acessar')
  sleep(5)

  find('#img-avatar-bar').click
  sleep(5)
  find('#change-password-user').hover
end