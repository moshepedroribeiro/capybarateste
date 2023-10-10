Quando('interajo com dropdown e select.') do
  visit('/users/sign_in')
  fill_in(id: 'user_email', with: 'moises.ribeiro.developer@gmail.com')
  fill_in(id: 'user_password', with: '123456')
  click_on('Acessar')
  sleep(5)

  find('#appointments-top-icon').click
  sleep(5)
  find('#bt-docking').click
  sleep(5)
  find('#select2-docking_professional_id-container').click
  sleep(2)
  find('li', text: 'Moisés Ribeiro').click
end

Quando('preencho o autocomplete.') do

end
