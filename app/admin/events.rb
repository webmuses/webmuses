ActiveAdmin.register Event do
  index do
    column :id
    column :name
    column :headline
    column :start_at
    default_actions
  end
end
