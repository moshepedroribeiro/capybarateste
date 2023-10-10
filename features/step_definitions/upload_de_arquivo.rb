Quando('eu faço upload de arquivo') do
  visit('/users/sign_in')
  fill_in(id: 'user_email', with: 'moises.ribeiro.developer@gmail.com')
  fill_in(id: 'user_password', with: '123456')
  click_on('Acessar')
  sleep(5)

  find('#customers-top-icon').click
  sleep(5)

  find('a[href="/customers/619767/edit"]').click
  sleep(5)
  find('#img-avatar').click
  sleep(1)
  attach_file('element', 'path_file', make_visible: true)
end