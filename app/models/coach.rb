class Coach < ActiveRecord::Base
  include I18nable
  scope :visible, -> { where(visible: true) }
  validates :name, :uniqueness => {:allow_blank => true}, :presence => true
end
