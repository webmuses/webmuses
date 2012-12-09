class Muse < ActiveRecord::Base
  attr_accessible :description, :name, :photo_url, :visible, :title, :twitter
  scope :visible, where(visible: true)
  validates :name, :uniqueness => {:allow_blank => true}, :presence => true
end
