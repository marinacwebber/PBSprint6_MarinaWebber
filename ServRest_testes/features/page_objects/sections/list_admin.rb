module Sections
    class List < SitePrism::Section
        elements :btn_editar, 'div.center button.btn-info'
        elements :btn_danger, 'tbody button.btn-danger' 
        elements :names, '/html/body/div/div/div/p/table/tbody//td[1]'
    end
end