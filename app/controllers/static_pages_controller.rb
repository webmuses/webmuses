class StaticPagesController < ApplicationController

  def home
    @title = "Home"
    @current_events = Event.where("state = ?", 'current').all
    @past_events = Event.where("state = ?", 'past').limit(3).order("random()")
    @partners = Partner.visible.order("position ASC").all
  end

  def events
    @title = "Mo&#380;e wpadniesz?"
    @current_events = Event.where("state = ?", 'current').all
  end

  def materials
    @title = "Zainspiruj si&#281;!"
  end

end
