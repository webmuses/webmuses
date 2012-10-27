class EventsController < ApplicationController

  def index
    @title = "Wydarzenia"
    @events = Event.visible.order("start_at DESC").all
  end

  def summary
    @title = "Mo&#380;e wpadniesz?"
    @current_events = Event.current.all
  end
end
