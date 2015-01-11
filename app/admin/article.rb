ActiveAdmin.register Article do
  permit_params :title, :url, :event_type_id

  index do
    column :id
    column :title
    column :event_type
    column :url
    actions
  end

  form do |f|
    f.inputs "Article" do
      f.input :title
      f.input :url
      f.input :event_type_id, as: :select, collection: EventType.all_with_index
      f.actions
    end
  end
end
