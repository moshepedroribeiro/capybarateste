Quando('eu entro na janela eu verifico a mensagem') do
  visit('/users/sign_in')

  # recebe a janela aberta pelo link
  janela = window_opened_by do
    click_link('Política de privacidade')
  end

  # muda o foco para a janela que abrimos anteriormente
  within_window(janela) do
    expect(current_url).to eq('https://www.santeodonto.io/privacy/')
  end
end