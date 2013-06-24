class Event < ActiveRecord::Base
  include I18nable
  attr_accessible :description_pl, :description_en, :end_at, :fb_url, :headline,
                  :location, :name, :registration_url, :start_at,
                  :price, :date_description, :state
  scope :visible, where("state != 'draft'")
  scope :current, where("state = ?", 'current')
  scope :past, where("state = ?", 'past')


  def current?
    state == "current"
  end
end
