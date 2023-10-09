Quando('acesso a url.') do
  visit('/users/sign_in')
end

Entao('eu verifico se estou na página correta') do
  expect(page).to have_current_path('http://localhost:3000/users/sign_in')
end
