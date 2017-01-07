class StaticPagesController < ApplicationController

  def home
    @title = "Home"
    @current_events = Event.current.all
    @past_events = Event.past.limit(10).order("random()")
    @sponsors = Partner.visible.sponsor.all
    @partners = Partner.visible.normal.all
  end

  def materials
    @title = t('materials.headline')
  end


  def awwwesomes
    @title = 'WebMuses + The Awwwesomes'
    @coaches = Coach.visible.awwwesomes.all.shuffle
  end

end
