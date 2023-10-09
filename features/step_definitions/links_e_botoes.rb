Quando('clico em links e botoes') do
  visit('/users/sign_in')
  click_on('Esqueci minha senha')
  sleep(5)
end