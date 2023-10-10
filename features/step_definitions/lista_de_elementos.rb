Quando('mapeio uma tabela.') do
  visit('/users/sign_in')
  fill_in(id: 'user_email', with: 'moises.ribeiro.developer@gmail.com')
  fill_in(id: 'user_password', with: '123456')
  click_on('Acessar')
  sleep(5)

  @lista_de_elementos = ListaElementosPage.new
  @lista_de_elementos.load

  @lista_de_elementos.lista.each do |item|
    puts item.text
  end

  expect(@lista_de_elementos.lista.size).to eq(40)
end