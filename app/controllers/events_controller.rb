class EventsController < ApplicationController

  def index
    @title = "Mo&#380;e wpadniesz?"
    @events = Event.order("start_at DESC").all
  end
end
