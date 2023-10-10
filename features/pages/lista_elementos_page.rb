class ListaElementosPage < SitePrism::Page
  set_url('/customers')

  elements :lista, 'tr > td'
end
