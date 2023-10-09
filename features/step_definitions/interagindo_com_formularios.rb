Quando('eu faço cadastro') do
  visit('/users/sign_in')
  fill_in(id: 'user_email', with: 'moises.ribeiro.developer@gmail.com')
  fill_in(id: 'user_password', with: '123456')
  click_on('Acessar')
  sleep(5)
end

Então('verifico se fui cadastrado') do
  expect(page).to have_content('Agendamentos de')
end