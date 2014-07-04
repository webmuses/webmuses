class Event < ActiveRecord::Base
  include I18nable
  scope :visible, -> { where("state != 'draft'") }
  scope :current, -> { where("state = ?", 'current') }
  scope :past, -> { where("state = ?", 'past') }


  def current?
    state == "current"
  end
end
