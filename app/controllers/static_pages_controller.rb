class StaticPagesController < ApplicationController

  def home
    @title = "Home"
    @current_events = Event.current.all
    @past_events = Event.past.limit(4).order("random()")
    @sponsors = Partner.visible.sponsor.all
    @partners = Partner.visible.normal.all
  end

  def materials
    @title = t('materials.headline')
  end

end
