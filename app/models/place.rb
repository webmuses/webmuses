class Place < ActiveRecord::Base
  has_many :events
  validates :name, uniqueness: true, presence: true
end
