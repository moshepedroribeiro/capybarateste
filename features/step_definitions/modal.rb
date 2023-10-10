Quando('entro no modal e verifico o texto') do
  visit('/users/sign_in')
  fill_in(id: 'user_email', with: 'moises.ribeiro.developer@gmail.com')
  fill_in(id: 'user_password', with: '123456')
  click_on('Acessar')
  sleep(5)

  find('#financial-top-icon').click
  sleep(5)
  click_on('NOVO RECEBIMENTO')
  sleep(6)

  within('.modal-dialog') do
    text = find('h3').text

    expect(text).to eq('Condições')
  end
end