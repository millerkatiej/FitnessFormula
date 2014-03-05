class ExercisesController < ApplicationController
  def new
  end

  def create
    @exercise = Exercise.new(exercise_params)
 
    @exercise.save
    redirect_to @exercise  
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def index
    @exercises = Exercise.all
  end
    
  
  private
    def exercise_params
      params.require(:exercise).permit(:exercise_name, :time_in_minutes, :reps_or_miles, :exhaustion_level, :date)
    end
end
