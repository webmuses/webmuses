class MusesController < ApplicationController

  def index
    @title = "Poznaj nas :)"
    @muses = Muse.visible.all.shuffle
  end
end
