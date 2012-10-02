class StaticPagesController < ApplicationController

  def home
    @title = "Home"
  end

  def events
    @title = "Mo&#380;e wpadniesz?"
  end

  def materials
    @title = "Zainspiruj si&#281;!"
  end

end
