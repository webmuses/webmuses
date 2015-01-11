ActiveAdmin.register Event do
  permit_params :name, :headline, :description_pl, :start_at, :end_at, :event_type_id,
    :fb_url, :registration_url, :date_description, :price, :description_en, :place_id

  filter :name
  filter :place

  index do
    column :id
    column :title do |c|
      raw(c.title)
    end
    column :event_type
    column :place_id
    column :start_at
    actions
  end

  form do |f|
    f.inputs "Events" do
      f.input :name
      f.input :headline
      f.input :description_pl
      f.input :description_en
      f.input :date_description
      f.input :place, as: :select, collection: Place.all
      f.input :start_at
      f.input :end_at
      f.input :fb_url
      f.input :registration_url
      f.input :price
      f.input :event_type_id, as: :select, collection: EventType.all_with_index
      f.actions
    end
  end
  controller do
    def scoped_collection
      Event.reorder("start_at DESC")
    end
  end
end
