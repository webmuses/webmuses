class EventsController < ApplicationController

  def index
    @title = t('events.all_headline')
    @events = Event.visible.latest.all
  end

end
