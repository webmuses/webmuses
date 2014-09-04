class EventsController < ApplicationController

  def index
    @title = t('events.all_headline')
    @events = Event.visible.latest.all
  end

  def summary
    @title = t('events.headline')
    @current_events = Event.current.all
    @past_events = Event.past.limit(2).order("random()")
  end
end
