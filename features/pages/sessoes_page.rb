class Sessao < SitePrism::Section
  element :appointment, '#appointments-top-icon'
  element :financial, '#financial-top-icon'
end

class Pagina < SitePrism::Page
  set_url('/')

  section :navbar, Sessao, '.navbar-nav:first'
end