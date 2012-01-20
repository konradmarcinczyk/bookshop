#encoding: utf-8
ActiveAdmin.register Accessory do
  
  show do
    panel "Dodaj zdjęcie" do
      render "accessory"
    end
    default_main_content
  end
end
