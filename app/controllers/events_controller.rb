class EventsController < ApplicationController

  def index
    @title = t('events.all_headline')
    @events = Event.latest.all
  end

end
