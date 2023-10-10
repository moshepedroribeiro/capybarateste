Quando('acesso a url') do
  @home = PaginaIncialPage.new
  @home.load
  sleep(5)
end

Entao('verifico se estou na página inicial') do
  expect(page).to have_current_path('http://localhost:3000/users/sign_in', url: true)
end