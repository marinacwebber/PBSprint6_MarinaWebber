module Pages
     class ListPage < SitePrism::Page
     set_url '/admin/listarprodutos'
     elements :btn_danger, 'tbody button.btn-danger'     
     elements :list_pag_products, 'table.table-striped tr'
     end
end