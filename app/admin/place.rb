ActiveAdmin.register Place do
  permit_params :name, :address, :icon

  index do
    column :name
    column :address
    column :events_count do |p|
      p.events.count
    end
    actions
  end
end
