class Muse < ActiveRecord::Base
  include I18nable
  attr_accessible :description_pl, :description_en, :title_pl, :title_en
  attr_accessible :name, :photo_url, :visible, :twitter
  scope :visible, where(visible: true)
  validates :name, :uniqueness => {:allow_blank => true}, :presence => true
end
