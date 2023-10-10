class AjaxPage < SitePrism::Page
  set_url('/appointment_by_chair')

  element :botao, '#new_return'

  def clicar_botao
    # wait_for_botao
    botao.click
  end
end
