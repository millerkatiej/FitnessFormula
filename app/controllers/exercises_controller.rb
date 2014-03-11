class ExercisesController < ApplicationController
  helper_method :sort_column, :sort_direction
  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)

    if @exercise.save
      redirect_to @exercise  
    else
      render 'new'
    end
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def index
    if params[:search]
      @exercises = Exercise.find(:all, :conditions => ['exercise_name LIKE ?', "%#{params[:search]}%"])
    else
      @exercises = Exercise.order(sort_column + " " + sort_direction)
    end
  end

  def update
    @exercise = Exercise.find(params[:id])
 
    if @exercise.update(exercise_params)
      redirect_to @exercise
    else
      render 'edit'
    end
  end

  def edit
    @exercise = Exercise.find(params[:id])
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
 
    redirect_to exercises_path
  end
  
  private
    def exercise_params
      params.require(:exercise).permit(:exercise_name, :time_in_minutes, :reps_or_miles, :exhaustion_level, :date)
    end

    def sort_column
      Exercise.column_names.include?(params[:sort]) ? params[:sort] : "exercise_name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
