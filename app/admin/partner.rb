ActiveAdmin.register Partner do
  permit_params :image, :name, :description_pl, :url, :position, :visible,
    :category, :description_en

  index do
    column :id
    column :name
    column :position
    column :category
    actions
  end
end
