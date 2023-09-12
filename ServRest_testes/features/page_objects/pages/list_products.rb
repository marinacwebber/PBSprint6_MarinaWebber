require_relative '../sections/list_admin'
module Pages
     class ListPage < SitePrism::Page
     set_url '/admin/listarprodutos'
     elements :btn_danger, 'tbody button.btn-danger'     
     
     sections :list_pag_products, Sections::List, 'table.table-striped tr'
     end
end