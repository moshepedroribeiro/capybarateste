Quando('clico no elemento da sessão.') do
  visit('/users/sign_in')
  fill_in(id: 'user_email', with: 'moises.ribeiro.developer@gmail.com')
  fill_in(id: 'user_password', with: '123456')
  click_on('Acessar')
  sleep(5)

  @pagina = Pagina.new
  @pagina.load
  @pagina.navbar.appointment.click
  sleep(5)
end