module Sections
    class List < SitePrism::Section
        elements :btn_editar, 'div.center button.btn-info'
        elements :btn_danger, 'tbody button.btn-danger' 
    end
end