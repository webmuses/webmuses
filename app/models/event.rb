class Event < ActiveRecord::Base
  attr_accessible :description, :end_at, :fb_url, :headline,
                  :location, :name, :registration_url, :start_at,
                  :price, :date_description, :state
  scope :visible, where("state != 'draft'")
  scope :current, where("state = ?", 'current')
  scope :past, where("state = ?", 'past')
end
