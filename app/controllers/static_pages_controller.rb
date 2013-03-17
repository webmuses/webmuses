class StaticPagesController < ApplicationController

  def home
    @title = "Home"
    @current_events = Event.current.all
    @past_events = Event.past.limit(2).order("random()")
    @sponsors = Partner.visible.sponsor.order("position ASC").all
    @partners = Partner.visible.normal.order("position ASC").all
  end

  def materials
    @title = "Zainspiruj si&#281;!"
  end

end
