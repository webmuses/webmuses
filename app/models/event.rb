class Event < ActiveRecord::Base
  attr_accessible :description, :end_at, :fb_url, :headline, :location, :name, :registration_url, :start_at
end
