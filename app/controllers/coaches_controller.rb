class CoachesController < ApplicationController

  def index
    @title = "Nasi coachowie :)"
    @coaches = Coach.visible.all.shuffle
  end
end
