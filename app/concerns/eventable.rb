module Eventable
  extend ActiveSupport::Concern

  def event_type
    EventType.find(event_type_id) if event_type_id
  end

  def event_style
    "#{event_type.try(:parameterize) || 'regular'}-style"
  end
end
