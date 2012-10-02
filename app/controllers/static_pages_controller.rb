class StaticPagesController < ApplicationController

  def home
    @title = "Home"
    @partners = Partner.visible.order("position ASC").all
  end

  #TODO move to controller
  def events
    @title = "Mo&#380;e wpadniesz?"
  end

  def materials
    @title = "Zainspiruj si&#281;!"
  end

end
