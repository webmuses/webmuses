class Partner < ActiveRecord::Base
  attr_accessible :name, :description, :position, :visible, :image, :url, :category

  scope :visible, where(visible: true)
  scope :sponsor, where(category: 'sponsor')
  scope :normal, where(category: 'normal')

  validates :name, uniqueness: true
end
