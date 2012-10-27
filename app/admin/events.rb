ActiveAdmin.register Event do
  index do
    column :id
    column :name
    column :state
    column :headline
    column :start_at
    default_actions
  end

  form do |f|
    f.inputs "Events" do
      f.input :name
      f.input :headline
      f.input :description
      f.input :date_description
      f.input :location
      f.input :start_at
      f.input :end_at
      f.input :fb_url
      f.input :registration_url
      f.input :price
      f.input :state, as: :select, collection: ["draft", "past", "current"]
      f.buttons
    end
  end
end
