class MusesController < ApplicationController

  def index
    @title = "Poznaj nas :)"
    @muses = Muse.visible.randomized.all
  end
end
