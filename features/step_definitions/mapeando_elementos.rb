Quando('preencho o formulário') do
  @mapeando = MapeandoElementoPage.new
  @mapeando.load
  @mapeando.preencher
  sleep(5)
end