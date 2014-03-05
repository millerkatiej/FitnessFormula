class ExercisesController < ApplicationController
  def new
  end

  def create
    render plain: params[:exercise].inspect
  end

end
