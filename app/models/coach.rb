class Coach < ActiveRecord::Base
  include I18nable
  scope :visible, -> { where(visible: true) }
  scope :awwwesomes, -> { where(awwwesomes: true) }
  scope :regular, -> { where(awwwesomes: false) }
  validates :name, :uniqueness => {:allow_blank => true}, :presence => true
end
