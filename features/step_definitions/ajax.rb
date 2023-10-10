Quando('clico no botão.') do
  visit('/users/sign_in')
  fill_in(id: 'user_email', with: 'moises.ribeiro.developer@gmail.com')
  fill_in(id: 'user_password', with: '123456')
  click_on('Acessar')
  sleep(5)

  @ajax = AjaxPage.new
  @ajax.load

  @ajax.clicar_botao
end

Entao('verifico se apareceu.') do
  expect(page).to have_current_path('http://localhost:3000/appointment_by_chair#')
end