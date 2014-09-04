class Event < ActiveRecord::Base
  include I18nable
  scope :visible, -> { where.not(state: 'draft') }
  scope :current, -> { where(state: 'current') }
  scope :past, -> { where(state: 'past') }
  scope :latest, -> { order("start_at DESC") }


  def current?
    state == "current"
  end
end
