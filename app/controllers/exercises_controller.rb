class ExercisesController < ApplicationController

  def new
    @summary = Summary.find(params[:summary_id])
    @exercise = Exercise.new
  end

  def create
    @summary = Summary.find(params[:summary_id])
    @exercise = @summary.exercises.create(exercise_params)
    @summary.total -= @exercise.calorie_burn
    @summary.save
    respond_to  do |format|
        format.html { redirect_to user_summary_path(current_user.id, @summary.id) }
        format.js
      end
  end

  private
  def exercise_params
    params.require(:exercise).permit(:workout, :calorie_burn, :summary_id)
  end
end
