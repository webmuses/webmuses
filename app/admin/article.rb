ActiveAdmin.register Article do
  index do
    column :id
    column :title
    column :url
    default_actions
  end

end
