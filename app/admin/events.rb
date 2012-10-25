ActiveAdmin.register Event do
  index do
    column :id
    column :name
    column :headline
    column :description
    column :location
    column :start_at
    column :end_at
    column :fb_url
    column :registration_url
    default_actions
  end
end
