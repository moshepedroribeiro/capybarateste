class MapeandoElementoPage < SitePrism::Page
  set_url('/users/sign_in')

  element :login, '#user_email'
  element :password, '#user_password'

  def preencher
    login.set('moises.ribeiro.developer@gmail.com')
    password.set('123456')
  end
end
