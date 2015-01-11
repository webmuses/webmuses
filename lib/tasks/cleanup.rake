namespace :cleanup do
  desc "Remove 'assets' path from db"
  task :run => :environment do
    Muse.all.collect{|x| x.update_attribute(:photo_url, x.photo_url.gsub("/assets/", ''))}
    Coach.all.collect{|x| x.update_attribute(:photo, x.photo.gsub("/assets/", ''))}
    Partner.all.collect{|x| x.update_attribute(:image, x.image.gsub("/assets/", ''))}
  end
end

