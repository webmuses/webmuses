class Muse < ActiveRecord::Base
  include I18nable
  scope :visible, -> { where(visible: true) }
  scope :awwwesomes, -> { where(awwwesomes: true) }
  scope :invisible, -> { where(visible: false) }
  validates :name, :uniqueness => {:allow_blank => true}, :presence => true
end
