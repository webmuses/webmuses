class Event < ActiveRecord::Base
  include I18nable
  scope :latest, -> { order("end_at DESC") }
  scope :past, ->{ where("end_at < ?", Date.today) }
  scope :current, ->{ where("end_at >= ?", Date.today) }

  belongs_to :place
  after_initialize :set_dummy_dates

  def current?
    end_at >= Date.today
  end

  def has_price?
    price.present? and price.to_i > 0
  end

  def has_address?
    address.present?
  end

  def address
    (place.name + ", " + place.address.to_s) if place
  end

  def title
   [name, headline].reject(&:blank?).join("<br/>")
  end

  def subheadline
    headline.present? ? headline : name
  end

  def set_dummy_dates
    self.start_at ||= Time.now
    self.end_at ||= Time.now
  end
end
