Quando('acesso a url de botões') do
  visit('/users/sign_in')
end

Entao('verifico se encontrei os elementos') do
  find('#btn-submit-form-login')
  find_link(href: 'http://localhost:3000/user_registration')
end