namespace :cleanup do
  desc "Remove 'assets' path from db"
  task :run => :environment do
    Muse.all.each{|x| x.update_attribute(:photo_url, x.photo_url.gsub("/assets/", ''))}
    Coach.all.each{|x| x.update_attribute(:photo, x.photo.gsub("/assets/", ''))}
    Partner.all.each{|x| x.update_attribute(:image, x.image.gsub("/assets/", ''))}
  end

  desc "Set event_types for events"
  task :set => :environment do
    Event.all.each do |x|
      EventType.all_with_index.each do |e, index|
        puts e
        if x.name.include?(e)
          x.update_attribute(:event_type_id, index)
        end
      end
    end
    Article.all.each do |x|
      EventType.all_with_index.each do |e, index|
        puts e
        if x.title.include?(e)
          x.update_attribute(:event_type_id, index)
        end
      end
    end
  end
end

