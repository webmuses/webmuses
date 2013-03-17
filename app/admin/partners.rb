ActiveAdmin.register Partner do
  index do
    column :id
    column :name
    column :position
    column :category
    default_actions
  end
end
