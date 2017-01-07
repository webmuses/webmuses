class CoachesController < ApplicationController

  def index
    @title = t('coaches.headline')
    @coaches = Coach.visible.regular.all.shuffle
  end
end
