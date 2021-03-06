class ExercisesController < ApplicationController
  def index
    @exercises = current_user.exercises.order(date: :desc)
  end

  def show
    @exercise = Exercise.where(user_id: current_user.id).find(params[:id])
  end

  def new
    @exercise = Exercise.new
  end

  def create
    exercise_params = params.require(:exercise).permit(:date, :work_id, :time)
    @exercise = Exercise.new(exercise_params.merge(user_id: current_user.id, date: Date.current))
    @exercise.calories_burned = (@exercise.work.cost * current_user.weight * (@exercise.time.to_f / 60) * 1.05).round
    @exercise.save!
    redirect_to exercises_path
  end

  def edit
    @exercise = Exercise.where(user_id: current_user.id).find(params[:id])
  end

  def update
    @exercise = Exercise.where(user_id: current_user.id).find(params[:id])
    exercise_params = params.require(:exercise).permit(:date, :work_id)
    if @exercise.update(exercise_params)
      redirect_to exercises_path
    else
      render :edit
    end
  end

  def destroy
    @exercise = Exercise.where(user_id: current_user.id).find(params[:id])
    @exercise.destroy
    redirect_to exercises_path
  end
end
