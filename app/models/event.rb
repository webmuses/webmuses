class Event < ActiveRecord::Base
  include I18nable
  scope :visible, -> { where.not(state: 'draft') }
  scope :current, -> { where(state: 'current') }
  scope :past, -> { where(state: 'past') }
  scope :latest, -> { order("start_at DESC") }

  belongs_to :place


  def current?
    state == "current"
  end

  def has_price?
    price.present? and price.to_i > 0
  end

  def address
    place ? (place.name + ", " + place.address.to_s) : location
  end

  def title
   [name, headline].reject(&:blank?).join("<br/>")
  end
end
