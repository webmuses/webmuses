ActiveAdmin.register Coach do
  permit_params :description_pl, :name, :photo, :visible, :twitter, :url, :description_en

  index do
    column :id
    column :name
    column :twitter
    actions
  end
end
