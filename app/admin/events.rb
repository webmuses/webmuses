ActiveAdmin.register Event do
  permit_params :name, :headline, :description_pl, :location, :start_at, :end_at,
    :fb_url, :registration_url, :date_description, :price, :state, :description_en

  index do
    column :id
    column :name
    column :state
    column :headline
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
      f.input :location
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
      end_of_association_chain.latest
    end
  end
end
