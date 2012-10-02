class Partner < ActiveRecord::Base
  attr_accessible :name, :description, :position, :visible, :image, :url

  scope :visible, where(visible: true)

  validates :name, uniqueness: true
end
