class MusesController < ApplicationController

  def index
    @title = t('muses.headline')
    @muses = Muse.visible.all.shuffle
  end
end
