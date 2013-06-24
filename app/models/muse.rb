class Muse < ActiveRecord::Base
  include I18nable
  attr_accessible :description_pl, :description_en, :name, :photo_url, :visible, :title, :twitter
  scope :visible, where(visible: true)
  validates :name, :uniqueness => {:allow_blank => true}, :presence => true
end
