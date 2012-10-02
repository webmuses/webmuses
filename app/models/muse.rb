class Muse < ActiveRecord::Base
  attr_accessible :description, :name, :photo_url, :visible, :title, :twitter
  scope :visible, where(visible: true)
  scope :randomized, order("RANDOM()")

  validates :name, :uniqueness => {:allow_blank => true}, :presence => true
end
