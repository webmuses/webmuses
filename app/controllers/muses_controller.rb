class MusesController < ApplicationController

  def index
    @title = "Poznaj Nas :)"
    @muses = Muse.visible.randomized.all
  end
end
