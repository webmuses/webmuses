class Coach < ActiveRecord::Base
  attr_accessible :description, :name, :photo, :twitter, :url, :visible
  scope :visible, where(visible: true)
  scope :randomized, order("RANDOM()")
  validates :name, :uniqueness => {:allow_blank => true}, :presence => true
end
