class CoachesController < ApplicationController

  def index
    @title = t('coaches.headline')
    @coaches = Coach.visible.all.shuffle
  end
end
