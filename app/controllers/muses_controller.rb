class MusesController < ApplicationController

  def index
    @title = t('muses.headline')
    @muses = Muse.visible.all.shuffle
    @ex_muses = Muse.invisible.all.shuffle
  end
end
