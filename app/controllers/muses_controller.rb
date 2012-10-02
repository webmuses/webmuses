class MusesController < ApplicationController

  def index
    @muses = Muse.visible.randomized.all
  end
end
