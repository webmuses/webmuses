class Partner < ActiveRecord::Base
  include I18nable
  attr_accessible :name, :description_pl, :description_en, :position, :visible, :image, :url, :category
  scope :visible, where(visible: true)
  scope :sponsor, where(category: 'sponsor')
  scope :normal, where(category: 'normal')
  default_scope order("position ASC")

  validates :name, uniqueness: true
end
