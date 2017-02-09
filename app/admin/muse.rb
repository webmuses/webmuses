ActiveAdmin.register Muse do
  permit_params :name, :description_pl, :visible, :photo_url, :title_pl,
    :twitter, :description_en, :title_en, :awwwesomes

  index do
    column :id
    column :name
    column :twitter
    actions
  end
end
