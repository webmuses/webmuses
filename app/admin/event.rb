ActiveAdmin.register Event do
  permit_params :name, :headline, :description_pl, :start_at, :end_at,
    :fb_url, :registration_url, :date_description, :price, :state, :description_en, :place_id

  filter :name
  filter :place

  index do
    column :id
    column :title do |c|
      raw(c.title)
    end
    column :state
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
      f.input :state, as: :select, collection: ["draft", "past", "current"]
      f.actions
    end
  end
  controller do
    def scoped_collection
      Event.reorder("start_at DESC")
    end
  end
end
