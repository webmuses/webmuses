namespace :place do
  desc "Create and assign places"
  task :make => :environment do
    Event.all.each do |e|
      name = e.location.split(", ").first
      address = e.location.split(", ").second
      place = (Place.where(name: name).first or Place.create(address: address, name: name))
      if place.id
        e.update_attribute(:place_id, place.id)
      end
    end
  end
end

