class CoachesController < ApplicationController

  def index
    @title = "Nasi coachowie :)"
    @coaches = Coach.visible.randomized.all
  end
end
