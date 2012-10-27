class StaticPagesController < ApplicationController

  def home
    @title = "Home"
    @current_events = Event.current.all
    @past_events = Event.past.limit(2).order("random()")
    @partners = Partner.visible.order("position ASC").all
  end

  def materials
    @title = "Zainspiruj si&#281;!"
  end

end
