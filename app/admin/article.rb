ActiveAdmin.register Article do
  permit_params :title, :url

  index do
    column :id
    column :title
    column :url
    actions
  end

end
